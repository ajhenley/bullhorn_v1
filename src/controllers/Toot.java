package controllers;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the toots database table.
 * 
 */
@Entity
@Table(name="toots")
@NamedQuery(name="Toot.findAll", query="SELECT t FROM Toot t")
public class Toot implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idtoots;

	private String tootsbody;

	@Temporal(TemporalType.TIMESTAMP)
	private Date tootsdatetime;

	private String tootssender;

	public Toot() {
	}

	public int getIdtoots() {
		return this.idtoots;
	}

	public void setIdtoots(int idtoots) {
		this.idtoots = idtoots;
	}

	public String getTootsbody() {
		return this.tootsbody;
	}

	public void setTootsbody(String tootsbody) {
		this.tootsbody = tootsbody;
	}

	public Date getTootsdatetime() {
		return this.tootsdatetime;
	}

	public void setTootsdatetime(Date tootsdatetime) {
		this.tootsdatetime = tootsdatetime;
	}

	public String getTootssender() {
		return this.tootssender;
	}

	public void setTootssender(String tootssender) {
		this.tootssender = tootssender;
	}

}