//
//  ConfirmacionViewController.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/15/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {
    
    var pizza = ViewController.sharedInstance.pizza
    
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelTamaño: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var labelIngredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        self.navigationItem.title = "Ingredientes"
        print("pizza: \(pizza.tamaño), /n \(pizza.tipoMasa), /n \(pizza.tipoQueso), /n \(pizza.ingredientes)")
        labelTamaño.text = pizza.tamaño
        labelMasa.text = pizza.tipoMasa
        labelQueso.text = pizza.tipoQueso
        labelIngredientes.text = pizza.ingredientesFormat()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ordenarPizza(sender: AnyObject) {
//        let alert = UIAlertController(title: "Orden de Pizza", message: "Su orden de pizza estara lista en unos minutos, por favor espera.", preferredStyle: .Alert)
//        let accion = UIAlertAction(title: "Ok", style: .Default, handler: nil)
//        alert.addAction(accion)
//        presentViewController(alert, animated: true, completion: nil)
//        self.navigationController?.navigationBar.backItem?.hidesBackButton = true
    }


}
