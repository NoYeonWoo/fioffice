package com.kh.spring.address.model.vo;

public class Address {
	public int addressNo;
	public String addressName;
	public String addressPhone;
	public String addressEmail;
	public String addressComName;
	public String addressJob;
	public String addressTel;
	public String addressDept;
	public String addressAddress;
	public String addressMemo;
	public String Status;
	
	
	public Address() {
		
	}
	
	
	public Address(int addressNo, String addressName, String addressPhone, String addressEmail, String addressComName,
			String addressJob, String addressTel, String addressDept, String addressAddress, String addressMemo,
			String status) {
		super();
		this.addressNo = addressNo;
		this.addressName = addressName;
		this.addressPhone = addressPhone;
		this.addressEmail = addressEmail;
		this.addressComName = addressComName;
		this.addressJob = addressJob;
		this.addressTel = addressTel;
		this.addressDept = addressDept;
		this.addressAddress = addressAddress;
		this.addressMemo = addressMemo;
		Status = status;
	}


	public int getAddressNo() {
		return addressNo;
	}


	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}


	public String getAddressName() {
		return addressName;
	}


	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}


	public String getAddressPhone() {
		return addressPhone;
	}


	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}


	public String getAddressEmail() {
		return addressEmail;
	}


	public void setAddressEmail(String addressEmail) {
		this.addressEmail = addressEmail;
	}


	public String getAddressComName() {
		return addressComName;
	}


	public void setAddressComName(String addressComName) {
		this.addressComName = addressComName;
	}


	public String getAddressJob() {
		return addressJob;
	}


	public void setAddressJob(String addressJob) {
		this.addressJob = addressJob;
	}


	public String getAddressTel() {
		return addressTel;
	}


	public void setAddressTel(String addressTel) {
		this.addressTel = addressTel;
	}


	public String getAddressDept() {
		return addressDept;
	}


	public void setAddressDept(String addressDept) {
		this.addressDept = addressDept;
	}


	public String getAddressAddress() {
		return addressAddress;
	}


	public void setAddressAddress(String addressAddress) {
		this.addressAddress = addressAddress;
	}


	public String getAddressMemo() {
		return addressMemo;
	}


	public void setAddressMemo(String addressMemo) {
		this.addressMemo = addressMemo;
	}


	public String getStatus() {
		return Status;
	}


	public void setStatus(String status) {
		Status = status;
	}


	@Override
	public String toString() {
		return "Address [addressNo=" + addressNo + ", addressName=" + addressName + ", addressPhone=" + addressPhone
				+ ", addressEmail=" + addressEmail + ", addressComName=" + addressComName + ", addressJob=" + addressJob
				+ ", addressTel=" + addressTel + ", addressDept=" + addressDept + ", addressAddress=" + addressAddress
				+ ", addressMemo=" + addressMemo + ", Status=" + Status + "]";
	}
	
	
	
	
}

