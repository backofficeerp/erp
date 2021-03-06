package com.mi.model;

// Generated 6 Sep, 2017 12:47:17 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * CompanyMaster generated by hbm2java
 */
@Entity
@Table(name = "company_master", catalog = "crust_erp")
public class CompanyMaster implements java.io.Serializable {

	private String uuid;
	private CompanySizeMaster companySizeMaster;
	private CompanyTypeMaster companyTypeMaster;
	private CountryMaster countryMaster;
	private String companyName;
	private long addDate;
	private String status;
	private Set<CompanyAdminMaster> companyAdminMasters = new HashSet<CompanyAdminMaster>(
			0);

	public CompanyMaster() {
	}

	public CompanyMaster(String uuid, CompanySizeMaster companySizeMaster,
			CompanyTypeMaster companyTypeMaster, CountryMaster countryMaster,
			String companyName, long addDate, String status) {
		this.uuid = uuid;
		this.companySizeMaster = companySizeMaster;
		this.companyTypeMaster = companyTypeMaster;
		this.countryMaster = countryMaster;
		this.companyName = companyName;
		this.addDate = addDate;
		this.status = status;
	}

	public CompanyMaster(String uuid, CompanySizeMaster companySizeMaster,
			CompanyTypeMaster companyTypeMaster, CountryMaster countryMaster,
			String companyName, long addDate, String status,
			Set<CompanyAdminMaster> companyAdminMasters) {
		this.uuid = uuid;
		this.companySizeMaster = companySizeMaster;
		this.companyTypeMaster = companyTypeMaster;
		this.countryMaster = countryMaster;
		this.companyName = companyName;
		this.addDate = addDate;
		this.status = status;
		this.companyAdminMasters = companyAdminMasters;
	}

	@Id
	@GeneratedValue(generator = "uuid2")
	@GenericGenerator(name = "uuid2", strategy = "uuid2")
	@Column(name = "uuid", unique = true, length = 36)
	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "company_size_uuid", nullable = false)
	public CompanySizeMaster getCompanySizeMaster() {
		return this.companySizeMaster;
	}

	public void setCompanySizeMaster(CompanySizeMaster companySizeMaster) {
		this.companySizeMaster = companySizeMaster;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "company_type_uuid", nullable = false)
	public CompanyTypeMaster getCompanyTypeMaster() {
		return this.companyTypeMaster;
	}

	public void setCompanyTypeMaster(CompanyTypeMaster companyTypeMaster) {
		this.companyTypeMaster = companyTypeMaster;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "country_uuid", nullable = false)
	public CountryMaster getCountryMaster() {
		return this.countryMaster;
	}

	public void setCountryMaster(CountryMaster countryMaster) {
		this.countryMaster = countryMaster;
	}

	@Column(name = "company_name", nullable = false, length = 100)
	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Column(name = "add_date", nullable = false)
	public long getAddDate() {
		return this.addDate;
	}

	public void setAddDate(long addDate) {
		this.addDate = addDate;
	}

	@Column(name = "status", length = 2)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "companyMaster")
	public Set<CompanyAdminMaster> getCompanyAdminMasters() {
		return this.companyAdminMasters;
	}

	public void setCompanyAdminMasters(
			Set<CompanyAdminMaster> companyAdminMasters) {
		this.companyAdminMasters = companyAdminMasters;
	}

}
