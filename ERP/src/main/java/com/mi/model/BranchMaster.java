package com.mi.model;

// Generated Sep 7, 2017 4:40:22 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * BranchMaster generated by hbm2java
 */
@Entity
@Table(name = "branch_master", catalog = "crust_erp")
public class BranchMaster implements java.io.Serializable {

	private String uuid;
	private String branchName;
	private Set<DesignationMaster> designationMasters = new HashSet<DesignationMaster>(
			0);
	private Set<DepartmentMaster> departmentMasters = new HashSet<DepartmentMaster>(
			0);

	public BranchMaster() {
	}

	public BranchMaster(String uuid, String branchName) {
		this.uuid = uuid;
		this.branchName = branchName;
	}

	public BranchMaster(String uuid, String branchName,
			Set<DesignationMaster> designationMasters,
			Set<DepartmentMaster> departmentMasters) {
		this.uuid = uuid;
		this.branchName = branchName;
		this.designationMasters = designationMasters;
		this.departmentMasters = departmentMasters;
	}

	@Id
	@Column(name = "uuid", unique = true, nullable = false, length = 36)
	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	@Column(name = "branch_name", nullable = false, length = 100)
	public String getBranchName() {
		return this.branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "branchMaster")
	public Set<DesignationMaster> getDesignationMasters() {
		return this.designationMasters;
	}

	public void setDesignationMasters(Set<DesignationMaster> designationMasters) {
		this.designationMasters = designationMasters;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "branchMaster")
	public Set<DepartmentMaster> getDepartmentMasters() {
		return this.departmentMasters;
	}

	public void setDepartmentMasters(Set<DepartmentMaster> departmentMasters) {
		this.departmentMasters = departmentMasters;
	}

}
