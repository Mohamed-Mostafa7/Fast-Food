//
//  HomeViewController.swift
//  Fast Food
//
//  Created by Mohamed Mostafa on 30/07/2021.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if OnBoard.shared.isNewUser() {
            // show onboarding
            guard let vc = storyboard?.instantiateViewController(identifier: "OnBoard") as? WelcomeViewController else { return }
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false)
        }
    }
    

}
