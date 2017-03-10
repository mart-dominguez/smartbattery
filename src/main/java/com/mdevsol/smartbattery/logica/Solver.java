/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mdevsol.smartbattery.logica;

import com.mdevsol.smartbattery.modelo.Parametros;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.enterprise.context.ApplicationScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

/**
 *
 * @author mdominguez
 */
@ApplicationScoped
@Transactional
public class Solver {
    
    @PersistenceContext(unitName = "sb_pu")
    private EntityManager em;
    
    private Map<String,Double> parametros;
    
    @PostConstruct
    public void init(){
        loadParams();        
    }
    
    private void loadParams(){
        this.parametros = new HashMap<String,Double>();
        List<Parametros> listaParam = em.createQuery("SELECT p FROM Parametros p").getResultList();
        for(Parametros p : listaParam){
            this.parametros.put(p.getNombre().trim().toUpperCase(), p.getValor());
        }
    }
       
    private Double calcular(String s){
        Double val = this.parametros.getOrDefault(s.toUpperCase(), Double.MAX_VALUE);
        // aca podría chequear tirar excpcion sin val es MAX_VALUE
        return val;
    }
    public Double eSAnodo(){
        //1-eLA-ePA-eFA
        return 1.0 - calcular("ELA")- calcular("EPA")- calcular("EFA");
    }

    public Double eSCatodo(){
        //1-eLA-ePA-eFA
        return 1.0 - calcular("ELC")-calcular("EPC")-calcular("EFC");
    }
    
    public Double sigmaEffA(){
        //=+sigmaA0*(eSA+eFA)^PSigmaA
        return calcular("sigmaA0")* Math.pow(((eSAnodo()*calcular("EFA")));
        
    }
}
