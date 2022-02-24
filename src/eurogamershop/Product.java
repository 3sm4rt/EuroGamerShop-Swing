
package eurogamershop;

import java.util.Date;


public class Product {
   private int cikkszam;
    private String platform;
    private String nev;
    private int ar;
    private String afa;
    private String beszerzes;
    private String allapot;
    private int vetelAr;
    private String sellDate;
    private String buyDate;
    
    public Product(int cikkszam, String platform, String nev, int ar, String afa, String beszerzes, String allapot,
    		int vetelAr, String sellDate, String buyDate) {
    	super();
    	this.cikkszam = cikkszam;
    	this.platform = platform;
    	this.nev = nev;
    	this.ar = ar;
    	this.afa = afa;
    	this.beszerzes = beszerzes;
    	this.allapot = allapot;
    	this.vetelAr = vetelAr;
    	this.sellDate = sellDate;
    	this.buyDate = buyDate;
    }

	public int getCikkszam() {
		return cikkszam;
	}

	public void setCikkszam(int cikkszam) {
		this.cikkszam = cikkszam;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getNev() {
		return nev;
	}

	public void setNev(String nev) {
		this.nev = nev;
	}

	public int getAr() {
		return ar;
	}

	public void setAr(int ar) {
		this.ar = ar;
	}

	public String getAfa() {
		return afa;
	}

	public void setAfa(String afa) {
		this.afa = afa;
	}

	public String getBeszerzes() {
		return beszerzes;
	}

	public void setBeszerzes(String beszerzes) {
		this.beszerzes = beszerzes;
	}

	public String getAllapot() {
		return allapot;
	}

	public void setAllapot(String allapot) {
		this.allapot = allapot;
	}

	public int getVetelAr() {
		return vetelAr;
	}

	public void setVetelAr(int vetelAr) {
		this.vetelAr = vetelAr;
	}

	public String getSellDate() {
		return sellDate;
	}

	public void setSellDate(String sellDate) {
		this.sellDate = sellDate;
	}

	public String getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}

	@Override
	public String toString() {
		return "Product [cikkszam=" + cikkszam + ", platform=" + platform + ", nev=" + nev + ", ar=" + ar + ", afa="
				+ afa + ", beszerzes=" + beszerzes + ", allapot=" + allapot + ", vetelAr=" + vetelAr + ", sellDate="
				+ sellDate + ", buyDate=" + buyDate + "]";
	}
    
}
