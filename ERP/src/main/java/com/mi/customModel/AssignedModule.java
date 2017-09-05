package com.mi.customModel;

public class AssignedModule {

	private boolean humanResourceManagement = false;
	private boolean inventoryManagement = false;
	private boolean salesManagement = false;
	private boolean purchaseManagement = false;
	private boolean customerRelationshipManagement = false;
	private boolean manufacturingManagement = false;
	private boolean administrationManagement = false;
	private boolean customerSupportManagement = false;
	private boolean accountManagement = false;
	private boolean companyManagement = false;
	
	public AssignedModule() {
		super();
	}
	public AssignedModule(boolean humanResourceManagement,
			boolean inventoryManagement, boolean salesManagement,
			boolean purchaseManagement, boolean customerRelationshipManagement,
			boolean manufacturingManagement, boolean administrationManagement,
			boolean customerSupportManagement, boolean accountManagement,
			boolean companyManagement) {
		super();
		this.humanResourceManagement = humanResourceManagement;
		this.inventoryManagement = inventoryManagement;
		this.salesManagement = salesManagement;
		this.purchaseManagement = purchaseManagement;
		this.customerRelationshipManagement = customerRelationshipManagement;
		this.manufacturingManagement = manufacturingManagement;
		this.administrationManagement = administrationManagement;
		this.customerSupportManagement = customerSupportManagement;
		this.accountManagement = accountManagement;
		this.companyManagement = companyManagement;
	}
	public boolean isPurchaseManagement() {
		return purchaseManagement;
	}
	public void setPurchaseManagement(boolean purchaseManagement) {
		this.purchaseManagement = purchaseManagement;
	}
	public boolean isCustomerRelationshipManagement() {
		return customerRelationshipManagement;
	}
	public void setCustomerRelationshipManagement(
			boolean customerRelationshipManagement) {
		this.customerRelationshipManagement = customerRelationshipManagement;
	}
	public boolean isManufacturingManagement() {
		return manufacturingManagement;
	}
	public void setManufacturingManagement(boolean manufacturingManagement) {
		this.manufacturingManagement = manufacturingManagement;
	}
	public boolean isAdministrationManagement() {
		return administrationManagement;
	}
	public void setAdministrationManagement(boolean administrationManagement) {
		this.administrationManagement = administrationManagement;
	}
	public boolean isCustomerSupportManagement() {
		return customerSupportManagement;
	}
	public void setCustomerSupportManagement(boolean customerSupportManagement) {
		this.customerSupportManagement = customerSupportManagement;
	}
	public boolean isAccountManagement() {
		return accountManagement;
	}
	public void setAccountManagement(boolean accountManagement) {
		this.accountManagement = accountManagement;
	}
	public boolean isCompanyManagement() {
		return companyManagement;
	}
	public void setCompanyManagement(boolean companyManagement) {
		this.companyManagement = companyManagement;
	}
	public boolean isHumanResourceManagement() {
		return humanResourceManagement;
	}
	public void setHumanResourceManagement(boolean humanResourceManagement) {
		this.humanResourceManagement = humanResourceManagement;
	}
	public boolean isInventoryManagement() {
		return inventoryManagement;
	}
	public void setInventoryManagement(boolean inventoryManagement) {
		this.inventoryManagement = inventoryManagement;
	}
	public boolean isSalesManagement() {
		return salesManagement;
	}
	public void setSalesManagement(boolean salesManagement) {
		this.salesManagement = salesManagement;
	}
	
	
	
	
}
