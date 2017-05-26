//
//  FacebookLoginViewController.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-26.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore

class FacebookLoginViewController: UIViewController, LoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        if let accessToken = AccessToken.current {
            Constants.navigationController?.pushViewController(FacebookEventViewController(), animated: true)
        }
        else
        {
            let loginButton = LoginButton(readPermissions: [ .publicProfile ])
            loginButton.center = view.center
            loginButton.delegate = self
            view.addSubview(loginButton)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        switch result{
        case .success(_, _, _):
            Constants.navigationController?.pushViewController(FacebookEventViewController(), animated: true)
            break
        default:
            break
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        //
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
