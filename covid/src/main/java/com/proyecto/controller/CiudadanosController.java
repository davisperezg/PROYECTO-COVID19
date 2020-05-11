package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.proyecto.entity.Ciudadanos;
import com.proyecto.entity.Triaje;
import com.proyecto.entity.Usuarios;
import com.proyecto.service.CiudadanosService;

@Controller
@RequestMapping(value = "/19")
public class CiudadanosController {
	
	@Autowired
	CiudadanosService ciudadanosService;
	
	Usuarios c = new Usuarios();
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String vistaLogin() {
		return "login";
	}
	@RequestMapping(value="salir",method = RequestMethod.GET)
	public String SalirUsuario(HttpSession session) {
		session.removeAttribute("pSession");
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "principal", method = RequestMethod.GET)
	public String vistaPrincipal(HttpSession session) {
		if(session.getAttribute("pSession")!=null) {
			return "principal";
		}else {
			session.removeAttribute("pSession");
			session.invalidate();
			return "login";
		}
	}
	
	@RequestMapping(value="recargarCiudadanos",method = RequestMethod.GET)
	public String recargarCiudadanos(HttpSession session,Model model) {
		if(session.getAttribute("pSession")!=null) {
			model.addAttribute("dataCiudadanos",ciudadanosService.listaCiudadanos());
			return "tabla_ciudadanos";
		}else{
			session.removeAttribute("pSession");
			session.invalidate();
			return "login";
		}
	}
	
	@RequestMapping(value = "LoginProccess",method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> validarUsuario(Model model,HttpSession session,
			@RequestParam("pLogin") String pLogin,
			@RequestParam("pContrasenia") String pContrasenia,ModelMap mm) {
			Map<String, Object> map=new HashMap<String,Object>();
			
			c = ciudadanosService.loginSistema(pLogin, pContrasenia);
			if(c!=null) {	
				session.setAttribute("pSession", c.getIdUsuarios());
				map.put("dataLogin", 1);
				return map;
			}else {
				System.out.print("ERROR AL OBTENER USUARIO");
				map.put("dataLogin", -1);
				return map;
			}
	}
	
	@RequestMapping(value="/saveCiudadano")
	public @ResponseBody Map<String, Object> grabarMedicamento(
							@RequestBody Ciudadanos age){
		Map<String, Object> map=new HashMap<String,Object>();
		try {
			ciudadanosService.registrarActualizaCiudadano(age);
			map.put("dataMensaje", 1);
		} catch (Exception e) {
			map.put("dataMensaje", -1);
			e.printStackTrace();
		}
		return map;
	}
	
	@RequestMapping(value="/listaCiudadano")
	public @ResponseBody Map<String, Object> listaMedicamentos(){
		Map<String, Object> map=new HashMap<String,Object>();
		List<Triaje> lista=ciudadanosService.listaCiudadanos();
		map.put("dataCiudadano", lista);
		return map;
	}
	
	@RequestMapping(value="/buscarCiudadano")
	public @ResponseBody Map<String, Object> buscarProducto(
							@RequestParam("codigo") int cod){
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("dataBuscar",ciudadanosService.findCiudadanos(cod));
		return map;
	}
	
}
