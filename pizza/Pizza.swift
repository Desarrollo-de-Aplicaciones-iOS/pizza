//
//  Pizza.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/14/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import Foundation


class Pizza {
    var tamaño : String?
    var tipoMasa : String?
    var tipoQueso : String?
    var ingredientes : [String]? = [String]()


    class func opcionesTamaño() -> [String] {
        let tamaños = ["chica", "mediana", "grande"]
        return tamaños
    }
    
    class func opcionesMasa() -> [String] {
        let masa = ["delgada", "crujiente", "gruesa"]
        return masa
    }
    
    class func opcionesQueso() -> [String] {
        let quesos = ["mozarela", "cheddar", "parmesano", "sin queso"]
        return quesos
    }
    
    class func opcionesIngredientes() -> [String] {
        let ingredientes = ["jamón", "pepperoni", "pavo" , "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa", "atun"]
        return ingredientes
    }

    func removerIngredienteAñadido(ingrediente : String){
        if (ingredientes?.contains(ingrediente)) != nil {
            let indice : Int = (ingredientes?.indexOf(ingrediente))!
            ingredientes?.removeAtIndex(indice)
        }
    }
    
    func ingredientesFormat() -> String {
        var string = String()
        for var i = 0; i < ingredientes?.count; i++ {
            if i != 0 {
             string.appendContentsOf(", ")
            }
          string.appendContentsOf(ingredientes![i])
        }
        
        return string
    }
    
    

}

