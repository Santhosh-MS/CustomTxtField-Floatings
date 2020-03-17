//
//  ViewController.swift
//  CustomTxtFields
//
//  Created by Priya on 3/11/20.
//  Copyright © 2020 ZSL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    @IBOutlet weak var lblTopLayout: NSLayoutConstraint!
    @IBOutlet weak var lblLeadingLayout: NSLayoutConstraint!
    @IBOutlet var lblPwdLayout: NSLayoutConstraint!
    @IBOutlet var lblPwdLeadLayout: NSLayoutConstraint!
    @IBOutlet var lblUser: UILabel!
    
    @IBOutlet var lblPWD: UILabel!
    @IBOutlet var txtUsreID: BorderTextField!
    @IBOutlet var txtPWD: BorderTextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUsreID.delegate = self
        txtPWD.delegate = self
        txtPWD.isSecureTextEntry = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
            floatTitle(textFields : textField)
        performAnimation(transform: CGAffineTransform(scaleX: 1, y: 1),textFields : textField)
    }
    
    func floatTitle(textFields: UITextField){
        if textFields == self.txtUsreID {
            lblUser.font = lblUser.font?.withSize(10)
            lblTopLayout.constant = 8
            lblLeadingLayout.constant = 8
        }
        if textFields == self.txtPWD {
            lblPWD.font = lblPWD.font?.withSize(10)
            lblPwdLayout.constant = 8
            lblPwdLeadLayout.constant = 8
        }
        
    }
    func performAnimation(transform : CGAffineTransform ,textFields : UITextField) -> Void {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: { 
           
            if textFields == self.txtUsreID {
              self.lblUser.transform = transform
            }
            if textFields == self.txtPWD {
                self.lblPWD.transform = transform
            }
            self.view.layoutIfNeeded()
            }, completion: nil)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
       
        if textField.text?.isEmpty ?? false {
            unfloatTitle(textFields : textField)
            performAnimation(transform: CGAffineTransform(scaleX: 1, y: 1),textFields : textField)
        }
    }
    func unfloatTitle(textFields: UITextField) {
        if textFields == self.txtUsreID {
            lblUser.font = lblUser.font?.withSize(15)
            lblTopLayout.constant = 18
            lblLeadingLayout.constant = 18
        }
        if textFields == self.txtPWD {
            lblPWD.font = lblPWD.font?.withSize(15)
            lblPwdLayout.constant = 18
            lblPwdLeadLayout.constant = 18
        }

    }
    
    
    
    

}

