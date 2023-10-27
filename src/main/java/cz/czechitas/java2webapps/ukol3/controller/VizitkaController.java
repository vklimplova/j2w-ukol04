package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import cz.czechitas.java2webapps.ukol3.service.VizitkaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
  private final VizitkaService service;

  public VizitkaController(VizitkaService service) {
    this.service = service;
  }

  @GetMapping("/")
  public ModelAndView seznam() {
    ModelAndView result = new ModelAndView("/seznam");
    result.addObject("vizitka", service.getAll());
    return result;
  }

  @GetMapping("/detail/{id}")
  public ModelAndView detail (@PathVariable int id) {
    ModelAndView detaily = new ModelAndView("/detail");
    detaily.addObject("detail", service.getById(id));
    return detaily;
  }

  @GetMapping("/nova")
  public ModelAndView novaVizitka() {
    ModelAndView result = new ModelAndView("/nova");
    return result;
  }
  //Přesměrování na hlavní stránku po kliknutí na přidání nové vizitky
  @PostMapping("/nova")
  public String append(Vizitka vizitka) {
    service.append(vizitka);
    return "redirect:/";
  }

  @PostMapping("/delete")
  public String delete(int id) {
    service.deleteById(id);
    return "redirect:/";
  }

}
