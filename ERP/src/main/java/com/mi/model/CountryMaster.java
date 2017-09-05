package com.mi.model;

// Generated 4 Sep, 2017 7:21:32 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * CountryMaster generated by hbm2java
 */
@Entity
@Table(name = "country_master", catalog = "ERP")
public class CountryMaster implements java.io.Serializable {

	private int id;
	private String iso;
	private String name;
	private String nicename;
	private String iso3;
	private Short numcode;
	private int phonecode;
	private Set<CompanyMaster> companyMasters = new HashSet<CompanyMaster>(0);

	public CountryMaster() {
	}

	public CountryMaster(int id, String iso, String name, String nicename,
			int phonecode) {
		this.id = id;
		this.iso = iso;
		this.name = name;
		this.nicename = nicename;
		this.phonecode = phonecode;
	}

	public CountryMaster(int id, String iso, String name, String nicename,
			String iso3, Short numcode, int phonecode,
			Set<CompanyMaster> companyMasters) {
		this.id = id;
		this.iso = iso;
		this.name = name;
		this.nicename = nicename;
		this.iso3 = iso3;
		this.numcode = numcode;
		this.phonecode = phonecode;
		this.companyMasters = companyMasters;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "iso", nullable = false, length = 2)
	public String getIso() {
		return this.iso;
	}

	public void setIso(String iso) {
		this.iso = iso;
	}

	@Column(name = "name", nullable = false, length = 80)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "nicename", nullable = false, length = 80)
	public String getNicename() {
		return this.nicename;
	}

	public void setNicename(String nicename) {
		this.nicename = nicename;
	}

	@Column(name = "iso3", length = 3)
	public String getIso3() {
		return this.iso3;
	}

	public void setIso3(String iso3) {
		this.iso3 = iso3;
	}

	@Column(name = "numcode")
	public Short getNumcode() {
		return this.numcode;
	}

	public void setNumcode(Short numcode) {
		this.numcode = numcode;
	}

	@Column(name = "phonecode", nullable = false)
	public int getPhonecode() {
		return this.phonecode;
	}

	public void setPhonecode(int phonecode) {
		this.phonecode = phonecode;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "countryMaster")
	public Set<CompanyMaster> getCompanyMasters() {
		return this.companyMasters;
	}

	public void setCompanyMasters(Set<CompanyMaster> companyMasters) {
		this.companyMasters = companyMasters;
	}

}
