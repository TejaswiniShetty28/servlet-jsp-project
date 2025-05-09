package de.zeroco.servlet;

public class FruitList {
	
	public static String helloWorld() {
	    String[] fruits = {"Apple", "Banana", "Mango", "Strawberry"};
	    StringBuilder result = new StringBuilder();
	    for (int i = 0; i < fruits.length; i++) {
	        result.append(i + 1).append(" ").append(fruits[i]).append("<br>");
	    }
	    return result.toString();  
	}
}
