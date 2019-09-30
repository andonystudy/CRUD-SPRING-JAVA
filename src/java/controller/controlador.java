package controller;

import Config.Conexion;
import Entity.Persona;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controlador {

    Conexion conn = new Conexion();
    JdbcTemplate JdbcTemplate = new JdbcTemplate(conn.conectar());
    ModelAndView mav = new ModelAndView();

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "SELECT * FROM PERSONA";
        List datos = JdbcTemplate.queryForList(sql);
        mav.addObject("listaPersonas", datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
    }
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Persona persona){
        String sql = "INSERT INTO PERSONA VALUES(null,?,?,?)";
        this.JdbcTemplate.update(sql, persona.getNombre(), persona.getCorreo(), persona.getNacionalidad());
        return new ModelAndView("redirect://index.htm");
    }
}
