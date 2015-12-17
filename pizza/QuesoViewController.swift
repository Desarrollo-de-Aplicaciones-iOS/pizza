//
//  QuesoViewController.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/15/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerViewQueso: UIPickerView!
    var pizza = ViewController.sharedInstance.pizza
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerViewQueso.dataSource = self
        pickerViewQueso.delegate = self
        //        self.navigationItem.title = "Tipo de Queso"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Pizza.opcionesQueso().count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Pizza.opcionesQueso()[row]
    }
    
    @IBAction func guardarSeleccion(sender: AnyObject) {
        pizza.tipoQueso = Pizza.opcionesQueso()[pickerViewQueso.selectedRowInComponent(0)]
    }
}

