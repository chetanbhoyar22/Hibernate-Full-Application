package hibernate.multidb.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shows")
public class Shows 
{
	@Id
	@Column(name="showid")
	private String showid;
	
	@Column(name="shownm")
	private String shownm;
	
	@Column(name="relyr")
	private int relyr;
	
	@Column(name="category")
	private String category;
	
	@Column(name="language")
	private String language;
	
	@Column(name="actor")
	private String actor;
	
	public Shows()
	{
		showid="";
		shownm="";
		relyr=0;
		category="";
		language="";
		actor="";
	}

	public String getShowid() {
		return showid;
	}

	public void setShowid(String showid) {
		this.showid = showid;
	}

	public String getShownm() {
		return shownm;
	}

	public void setShownm(String shownm) {
		this.shownm = shownm;
	}

	public int getRelyr() {
		return relyr;
	}

	public void setRelyr(int relyr) {
		this.relyr = relyr;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	
}
