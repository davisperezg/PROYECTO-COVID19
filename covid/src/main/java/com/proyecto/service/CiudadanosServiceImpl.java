package com.proyecto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.dao.CiudadanosDAO;
import com.proyecto.entity.Ciudadanos;
import com.proyecto.entity.Triaje;
import com.proyecto.entity.Usuarios;

@Service
public class CiudadanosServiceImpl implements CiudadanosService{
	
	@Autowired
	CiudadanosDAO ciudadanosDAO;

	public void registrarActualizaCiudadano(Ciudadanos c) {
		// TODO Auto-generated method stub
		ciudadanosDAO.registrarActualizaCiudadano(c);
	}

	public List<Triaje> listaCiudadanos() {
		// TODO Auto-generated method stub
		return ciudadanosDAO.listaCiudadanos();
	}

	public Usuarios loginSistema(String pLogin, String pContrasenia) {
		// TODO Auto-generated method stub
		return ciudadanosDAO.loginSistema(pLogin, pContrasenia);
	}

	public Triaje findCiudadanos(int cod) {
		// TODO Auto-generated method stub
		return ciudadanosDAO.findCiudadanos(cod);
	}

}
