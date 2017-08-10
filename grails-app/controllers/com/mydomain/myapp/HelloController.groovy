package com.mydomain.myapp

import sun.nio.fs.WindowsUserPrincipals

class HelloController {
    static allowedMethods = [addUser: 'POST']
    def addUser(){
        //render "hello"
        try {
            double CashOnHand = Double.parseDouble(params["currencyOnHand"])
            def userCheck = User.findByUserName(params["userName"])
            def user = new User(currency:CashOnHand,userName:params["userName"])
            user.save(flush: true)
            session['user'] = params['userName']
            redirect action:'index',controller:'hello',namespace:null

            //render "Done"
        }
        catch(NumberFormatException ex)
        {
            session['error']['money'] = "Money must be a number";

        }
    }
    def login() {
    }
    def register() {
    }


}
