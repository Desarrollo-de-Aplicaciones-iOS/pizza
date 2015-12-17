//
//  IngredientesViewController.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/15/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    var pizza = ViewController.sharedInstance.pizza
    
    @IBAction func añadirIngrediente(sender: CheckBox) {
        
        guard let item : Int = sender.tag else {
            return
        }
        
        
        if !sender.isChecked {
            pizza.ingredientes?.append(Pizza.opcionesIngredientes()[item])
        }
        else {
            pizza.removerIngredienteAñadido(Pizza.opcionesIngredientes()[item])
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        self.navigationItem.title = "Ingredientes"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guardarSeleccion(sender: AnyObject) {
        if pizza.ingredientes?.count > 5 {
            self.showAlert("Solo puede seleccionar 5 Ingredientes")
        }
        if pizza.ingredientes?.count == 0 {
            self.showAlert("Debes seleccionar por lo menos 1 Ingrediente para proseguir")
        }
    }
    
    func showAlert(mensaje : String = "") {
        let alert = UIAlertController(title: "Error", message: mensaje, preferredStyle: .Alert)
        let accion = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alert.addAction(accion)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

