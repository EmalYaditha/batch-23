/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.myweb;

import java.util.ArrayList;

/**
 *
 * @author emaly
 */
public class Util {
    
//    public static Person[] getPersons() {   
//        Person[] persons = new Person[3];
//        
//        persons[0] = new Person("123v", "John", "Smith");
//        persons[1] = new Person("456v", "George", "Whey");
//        persons[2] = new Person("789v", "James", "Bond");
//        
//        return persons;
// } 
    public static ArrayList<Person> getPersons() {
        ArrayList<Person> persons = new ArrayList<>();
        
        persons.add(new Person("123v", "John", "Smith"));
        persons.add(new Person("456v", "George", "Whey"));
        persons.add(new Person("789v", "James", "Bond"));
        
        return persons;
    }
}
