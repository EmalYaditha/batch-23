/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package icbt;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author tharik
 */
@WebService(serviceName = "ICBTService")
public class ICBTService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "@@---Welcome " + txt + " !!!!!---@@";
    }
    
    @WebMethod(operationName = "getPerson")
    public Person getPerson() {
        Person p = new Person();
        p.setFirstName("John");
        p.setLastName("Smith");
        p.setNic("456V");
        
        return p;
    }
}
