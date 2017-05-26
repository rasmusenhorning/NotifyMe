//
//  FacebookEventView.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-26.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import UIKit

class FacebookEventView: UIView {

    let container: UIView = UIView()
    let loginTitleLabel: UILabel = UILabel()
    let usernameTextField: UITextField = UITextField()
    let passwordTextField: UITextField = UITextField()
    let loginButton: UIButton = UIButton(type: UIButtonType.system)
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        super.backgroundColor = UIColor.white
        //createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createSubviews(){
        
        loginTitleLabel.text = "Facebook Login"
        loginTitleLabel.sizeToFit()
        
        usernameTextField.placeholder = "Username"
        usernameTextField.sizeToFit()
        usernameTextField.frame = CGRect(x:SizeConstants.shared.widthMargin*2,y:0,width:frame.width - SizeConstants.shared.widthMargin*4,height:usernameTextField.frame.height)
        
        passwordTextField.placeholder = "Password"
        passwordTextField.sizeToFit()
        passwordTextField.frame = CGRect(x:SizeConstants.shared.widthMargin*2,y:0,width:frame.width - SizeConstants.shared.widthMargin*4,height:passwordTextField.frame.height)
        
        loginButton.title(for: UIControlState.normal)
        loginButton.setTitle("Login", for: UIControlState.normal)
        loginButton.sizeToFit()
        
        loginTitleLabel.center = CGPoint(x:frame.width/2,y:loginTitleLabel.frame.height/2)
        usernameTextField.center = CGPoint(x:frame.width/2,y:loginTitleLabel.frame.maxY + usernameTextField.frame.height)
        passwordTextField.center = CGPoint(x:frame.width/2,y:usernameTextField.frame.maxY + passwordTextField.frame.height)
        loginButton.center = CGPoint(x:frame.width/2,y:passwordTextField.frame.maxY + loginButton.frame.height)
        
        container.frame = CGRect(x:0,y:0,width:frame.width,height:loginButton.frame.maxY)
        container.addSubview(loginTitleLabel)
        container.addSubview(usernameTextField)
        container.addSubview(passwordTextField)
        container.addSubview(loginButton)
        
        container.center = CGPoint(x:frame.width/2,y:frame.height/2)
        addSubview(container)
        
    }
}
