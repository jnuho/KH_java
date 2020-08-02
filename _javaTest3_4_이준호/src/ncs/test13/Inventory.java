package ncs.test13;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Inventory {
	private String productName;//��ǰ��
	private Date putDate;//�԰���
	private Date getDate;//�����
	private int putAmount;//�԰����
	private int getAmount;//������
	private int inventoryAmount;//������

	public Inventory() {
		// TODO Auto-generated constructor stub
	}

	public Inventory(String productName, Date putDate, Date getDate, int putAmount, int getAmount,
			int inventoryAmount) {
		super();
		this.productName = productName;
		this.putDate = putDate;
		this.getDate = getDate;
		this.putAmount = putAmount;
		this.getAmount = getAmount;
		this.inventoryAmount = inventoryAmount;
	}

	@Override
	public String toString() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy�� M�� dd��", Locale.KOREA);

		return productName +  ", " + (putDate!=null? formatter.format(putDate):null) + ", " 
				+ (getDate!=null? formatter.format(getDate):null) + ", " 
				+ putAmount+ "units, remaining " + inventoryAmount +"units";
	}

	public String getProductName() { return productName; } 
	public void setProductName(String productName) { this.productName = productName; } 
	public Date getPutDate() { return putDate; } 
	public void setPutDate(Date putDate) { this.putDate = putDate; } 
	public Date getGetDate() { return getDate; } 
	public void setGetDate(Date getDate) { this.getDate = getDate; } 
	public int getPutAmount() { return putAmount; } 
	public void setPutAmount(int putAmount) { this.putAmount = putAmount; } 
	public int getGetAmount() { return getAmount; } 
	public void setGetAmount(int getAmount) throws AmountNotEnough{
		this.getAmount = getAmount; 
		if(getInventoryAmount() < getAmount)
			throw new AmountNotEnough(String.valueOf(getAmount));

		setInventoryAmount(getInventoryAmount() - getAmount);
	} 
	public int getInventoryAmount() { return inventoryAmount; } 
	public void setInventoryAmount(int inventoryAmount) { this.inventoryAmount = inventoryAmount; }
}
