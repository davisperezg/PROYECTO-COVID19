package com.proyecto.dao;

import java.util.List;

import com.proyecto.entity.Ciudadanos;
import com.proyecto.entity.Triaje;
import com.proyecto.entity.Usuarios;

public interface CiudadanosDAO {
	void registrarActualizaCiudadano(Ciudadanos c);
	List<Triaje> listaCiudadanos();
	Triaje findCiudadanos(int cod);
	//acceso admin
	Usuarios loginSistema(String pLogin, String pContrasenia);
}
