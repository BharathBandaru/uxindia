//
//  ProfileViewController.swift
//  conference
//
//  Created by Laxmi Rekha on 08/09/16.
//  Copyright © 2016 ux. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailID: UITextField!
    @IBOutlet weak var updatebutton: UIButton!
    var i: Int = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
        self.emailID.delegate = self;
        updatebutton.clipsToBounds=true
        updatebutton.layer.cornerRadius=updatebutton.frame.size.height/2
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0.0, y:
            emailID.frame.size.height - 1, width: emailID.frame.size.width, height: 1.0);
        emailID.isUserInteractionEnabled = false
        bottomBorder.backgroundColor = UIColor.black.cgColor
        emailID.layer.addSublayer(bottomBorder)
        let defaults = UserDefaults.standard
        
        emailID.text = defaults.string(forKey: "username")
        updatebutton.setTitle("Edit", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ProfileButton(_ sender: AnyObject) {
        
        
        if i%2 == 0
        {
            i += 1
            updatebutton.setTitle("Update", for: .normal)
            emailID.isUserInteractionEnabled = true
            
            
        }
        else{
            i += 1
            updatebutton.setTitle("Edit", for: .normal)
            emailID.isUserInteractionEnabled = false
            
            
        }
        if updatebutton.titleLabel?.text == "Update"{
            let defaults = UserDefaults.standard
            
            let check:String = defaults.string(forKey: "username")!
            if emailID.text == check {
                
                emailID.isUserInteractionEnabled = false
                
            }
            else{
                defaults.set(emailID.text, forKey: "username")
                emailID.reloadInputViews()
            }
            
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func updateButtonAction(_ sender: AnyObject) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true);
        return false;
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
