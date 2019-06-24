package com.cafe.validation;


import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;



public class Validations implements Validator{
	
	String CaracterInva = "1234567890!@?ï¿½ï¿½{].-|";

	public boolean ValidaCaracteres(String Cadena) {
		for (int i = 0; i < Cadena.length(); i++)
			if (CaracterInva.indexOf(Cadena.charAt(i)) >= 0)
				return false;
		return true;
	}

	public boolean repetidos(String var) {
		String[] parts = var.replace(" ", "").split(",");
		int iter;
		for (int i = 0; i < parts.length; i++) {
			iter = i + 1;
			while (iter < parts.length) {
				if (parts[iter].equals(parts[i])) {
					return true;
				}
				iter++;
			}
		}
		return false;
	}

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
	}

}
