package cz.czechitas.java2webapps.ukol3.service;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class VizitkaService {
    private final List<Vizitka> seznamVizitek = new ArrayList<>();

  public VizitkaService() {
      seznamVizitek.add(new Vizitka("Tomáš Kusý","SK Joudrs Praha","Dolákova 1","Praha, 181 00","kusy@joudrs.cz","+420 123 345 789","joudrs.cz"));
      seznamVizitek.add(new Vizitka("Karolína Dvořáková","Kačenky","Laubova 2","Praha, 130 00",null,null,"kacka.cz"));
      seznamVizitek.add(new Vizitka("Veronika Klimplová","Inservis","Ratibořská 32","Praha, 181 00","veruklimpl@seznam.cz","+420 987 654 321",null));
  }

  public List<Vizitka> getAll() {
    return seznamVizitek;
  }

  public Vizitka getById(int id) {
    return seznamVizitek.get(id);
  }

  //Přidání nové vizitky do seznamu vizitek
    public void append(Vizitka vizitka) {
        seznamVizitek.add(vizitka);
    }

    //Smazání vizitky v detailu id
    public void deleteById(int id) {
        seznamVizitek.remove(id);
    }
}
