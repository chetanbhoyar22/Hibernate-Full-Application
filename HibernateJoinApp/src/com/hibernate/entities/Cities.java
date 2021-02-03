package com.hibernate.entities;

import javax.persistence.*;

@Entity
@Table(name="cities")
public class Cities 
{
	@Id
	@Column(name="cityid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cityid;
	
	@Column(name="cityname")
	private String cityname;
	
	@ManyToOne
	@JoinColumn(name="stateid")
	private Statemaster state;
	
	public Cities()
	{
		cityid=0;
		cityname="";
	}

	
	public Statemaster getState() {
		return state;
	}


	public void setState(Statemaster state) {
		this.state = state;
	}


	public int getCityid() {
		return cityid;
	}

	public void setCityid(int cityid) {
		this.cityid = cityid;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	
	

}
