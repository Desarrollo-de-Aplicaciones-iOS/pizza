//
//  CheckBox.swift
//  pizza
//
//  Created by Luis Rufino Perez Romero on 12/16/15.
//  Copyright © 2015 Luis Perez Romero. All rights reserved.
//

import UIKit

class CheckBox: UIButton {

    //images
    let checkedImage = UIImage(named: "checked_checkbox")
    let unCheckedImage = UIImage(named: "unchecked_checkbox")
    
    var isChecked:Bool = false{
        didSet{
            if isChecked == true{
                self.setBackgroundImage(checkedImage, forState: .Normal)
            }else{
                self.setBackgroundImage(unCheckedImage, forState: .Normal)
            }
        }
    }
    
    
    override func awakeFromNib() {
        self.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.isChecked = false
    }
    
    
    
    func buttonClicked(sender:UIButton) {
        if(sender == self){
            if isChecked == true{
                isChecked = false
            }else{
                isChecked = true
            }
        }
    }
    
}
