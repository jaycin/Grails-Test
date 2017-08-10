package com.mydomain.myapp

class User {
    String userName
    double currency

    static hasMany = [transactions:UserTransaction]

    static constraints = {
        userName maxSize:255
    }
}
