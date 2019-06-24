package com.cafe.data;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;




import javax.persistence.Id;

import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="Productos")
public class Productos implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idProducto;
	private String nombreProducto;
	private Integer cantidadDisponible;
	private Integer precioUnitarioProducto;
	private Integer estatus;
	
	@Id 
	@GeneratedValue(strategy = IDENTITY)
	@Column(name="idProducto",unique = true, nullable = false)
	public Integer getIdProducto() {
		return idProducto;
	}
	@Column(name = "nombreProducto", length = 100,nullable = false )
	public String getNombreProducto() {
		return nombreProducto;
	}
	@Column(name="cantidadDisponible")
	public Integer getCantidadDisponible() {
		return cantidadDisponible;
	}
	@Column(name="precioUnitarioProducto")
	public Integer getPrecioUnitarioProducto() {
		return precioUnitarioProducto;
	}
	public void setIdProducto(Integer idProducto) {
		this.idProducto = idProducto;
	}
	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}
	public void setCantidadDisponible(Integer cantidadDisponible) {
		this.cantidadDisponible = cantidadDisponible;
	}
	public void setPrecioUnitarioProducto(Integer precioUnitarioProducto) {
		this.precioUnitarioProducto = precioUnitarioProducto;
	}

	@Column(name="estatus")
	public Integer getEstatus() {
		return estatus;
	}
	public void setEstatus(Integer estatus) {
		this.estatus = estatus;
	}

}
