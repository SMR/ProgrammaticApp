//
//  ViewController.swift
//  ProgrammaticApp
//
//  Created by Samarjeet on 11/11/11.
//  Copyright © 2011 Samarjeet. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.lightGray
        self.createUIElements()
    }
    
    //UI Elements
    var labelDemo   : UILabel?
    var imageDemo   : UIImageView?
    var buttonDemo  : UIButton      = UIButton(type: UIButton.ButtonType.roundedRect)
    var dataField   : UITextField?
    
    //Functions
    func createUIElements()
    {
        self.createLabel()
        self.createImage()
        self.createButton()
        self.createTextField()
    }
    
    func createLabel()
    {
        //1. Specify the dimensions
        let labelRect : CGRect   = CGRect(x: 100.0, y: 50.0, width: self.view.frame.size.width - 130.0, height: 60.0)
        
        //2. Create the view object
        labelDemo                = UILabel(frame: labelRect)
        
        //3. Customise the view attributes
        labelDemo?.text          = "This is my first Programmatic App."
        labelDemo?.textColor     = UIColor.yellow
        labelDemo?.textAlignment = NSTextAlignment.left
        labelDemo?.numberOfLines = 0
        labelDemo?.font          = UIFont.boldSystemFont(ofSize: 20.0)
        
        //4. Add the view to the subview
        self.view.addSubview(labelDemo!)
    }
    
    func createImage()
    {
        //1. Specify the dimensions
        let imageRect  : CGRect  = CGRect(x: 30.0, y: 50.0, width: 60.0, height: 60.0)
        
        //2. Create the image model
        let imageModel : UIImage = UIImage(named: "Logo.png")!
        
        //3. Create the view object
        imageDemo                = UIImageView(frame: imageRect)
        
        //4. Customise the view attributes
        imageDemo?.image         = imageModel
        imageDemo?.contentMode   = UIView.ContentMode.scaleAspectFit
        
        //5. Add the view to the subview
        self.view.addSubview(imageDemo!)
    }
    
    func createTextField()
    {
        //1. Provide dimensions for the view
        let tfRect : CGRect             = CGRect(x: 30.0, y: 140.0, width: self.view.frame.size.width - 60.0, height: 50.0)
        
        //2. Create the view object
        dataField                       = UITextField(frame: tfRect)
        
        //3. Customise the attributes of the view
        dataField?.placeholder          = "Enter Name"
        dataField?.borderStyle          = UITextField.BorderStyle.roundedRect
        dataField?.keyboardType         = UIKeyboardType.namePhonePad
        dataField?.keyboardAppearance   = UIKeyboardAppearance.dark
        dataField?.returnKeyType        = UIReturnKeyType.go
        
        //4. Add the view to the subview
        self.view.addSubview(dataField!)
    }
    
    func createButton()
    {
        //1. Specify the dimensions
        let buttonRect : CGRect = CGRect(x: 30.0, y: 220.0, width: 100.0, height: 50.0)
        
        //2. Provide the frame to the button
        buttonDemo.frame = buttonRect
        
        //3. Customise the view attributes
        buttonDemo.setTitle("Click Me", for: UIControl.State.normal)
        buttonDemo.addTarget(self, action: #selector(ViewController.clickMeTapped), for: UIControl.Event.touchDown)
        
        //4. Add the view to the subview
        self.view.addSubview(buttonDemo)
    }
    
    @objc func clickMeTapped()
    {
        labelDemo?.text = dataField?.text
    }
}

