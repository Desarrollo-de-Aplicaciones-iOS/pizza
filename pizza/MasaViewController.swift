//
//  MasaViewController.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/14/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerViewMasa: UIPickerView!
    var pizza = ViewController.sharedInstance.pizza
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerViewMasa.dataSource = self
        pickerViewMasa.delegate = self
//        self.navigationItem.title = "Tipo de Masa"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Pizza.opcionesMasa().count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Pizza.opcionesMasa()[row]
    }
    
    @IBAction func guardarSeleccion(sender: AnyObject) {
        pizza.tipoMasa = Pizza.opcionesMasa()[pickerViewMasa.selectedRowInComponent(0)]
    }
}

