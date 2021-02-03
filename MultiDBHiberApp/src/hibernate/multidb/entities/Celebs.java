package hibernate.multidb.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="celebs")
public class Celebs 
{
	@Id
	@Column(name="celebno")
	private int celebno;
	
	@Column(name="celebnm")
	private String celebnm;
	
	@Column(name="field")
	private String field;
	
	@Column(name="country")
	private String country;
	
	public Celebs()
	{
		celebno=0;
		celebnm="";
		field="";
		country="";
	}

	public int getCelebno() {
		return celebno;
	}

	public void setCelebno(int celebno) {
		this.celebno = celebno;
	}

	public String getCelebnm() {
		return celebnm;
	}

	public void setCelebnm(String celebnm) {
		this.celebnm = celebnm;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	

}
