package com.hibernate.entities;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.*;

@Entity
@Table(name="statemaster")
public class Statemaster 
{
	@Id
	@Column(name="stateid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int stateid;
	
	@Column(name="statename")
	private String statename;
	
	public Statemaster()
	{
		stateid=0;
		statename="";
	}
	
	@OneToMany(mappedBy = "state")
	private Collection<Cities> cities=new ArrayList<Cities>();

	public int getStateid() {
		return stateid;
	}

	public void setStateid(int stateid) {
		this.stateid = stateid;
	}

	public String getStatename() {
		return statename;
	}

	public void setStatename(String statename) {
		this.statename = statename;
	}

	public Collection<Cities> getCities() {
		return cities;
	}

	public void setCities(Collection<Cities> cities) {
		this.cities = cities;
	}
	
	

}
