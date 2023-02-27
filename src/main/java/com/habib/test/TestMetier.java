package com.habib.test;

import com.habib.metier.MetierImpl;
import com.habib.metier.Produit;

import java.util.List;

public class TestMetier {
    public static void main(String[] args) {
        MetierImpl metier= new MetierImpl();
        List<Produit> prods = metier.getProduitsParMotCle("glace");

        for (Produit p : prods)
            System.out.println(p.getNomProduit());
    }
}
