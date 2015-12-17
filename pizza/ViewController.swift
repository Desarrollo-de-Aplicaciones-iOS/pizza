//
//  ViewController.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/13/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerViewTamaño: UIPickerView!
    static let sharedInstance: ViewController = ViewController()
    var pizza = Pizza()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerViewTamaño.dataSource = self
        pickerViewTamaño.delegate = self
//        self.navigationItem.title = "Tamaño de la pizza"
//        navigationController?.navigationBar.barStyle = UIBarStyle.BlackOpaqueº
//        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Pizza.opcionesTamaño().count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Pizza.opcionesTamaño()[row]
    }
    
    @IBAction func guardarSeleccion(sender: AnyObject) {
        ViewController.sharedInstance.pizza.tamaño = Pizza.opcionesTamaño()[pickerViewTamaño.selectedRowInComponent(0)]
    }
}

