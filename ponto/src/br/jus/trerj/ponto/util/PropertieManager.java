package br.jus.trerj.ponto.util;

import java.io.Serializable;
import java.util.ResourceBundle;

public class PropertieManager implements Serializable {

	private static final long serialVersionUID = -4649047432273021500L;
	private static final PropertieManager instance = new PropertieManager();
	
	private ResourceBundle configuration = ResourceBundle.getBundle("application");

	public static PropertieManager getInstance() {
		return instance;
	}
	private PropertieManager() {
		
	}
	
	public String getMessage(String messageKey){
		return this.configuration.getString(messageKey);
	}
}
