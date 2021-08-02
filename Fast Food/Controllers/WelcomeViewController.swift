//
//  WelcomeViewController.swift
//  Fast Food
//
//  Created by Mohamed Mostafa on 02/08/2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var pageNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapImageView(_:)))
        view.addGestureRecognizer(tapGestureRecognizer)
        
        changeScreen(pageNumber)
    }
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var detailsLabel: UILabel!
    @IBOutlet var dotsImageView: UIImageView!
    
    @IBAction func skipButton(_ sender: Any) {
        dismiss(animated: false)
        OnBoard.shared.setIsNewUser()
    }
    
    @objc func didTapImageView(_ sender: UITapGestureRecognizer) {
        if pageNumber < 2 {
            pageNumber += 1
        } else {
            dismiss(animated: false)
            OnBoard.shared.setIsNewUser()
        }
        
        changeScreen(pageNumber)
    }
    
    func changeScreen(_ pageNumber: Int) {
        imageView.image = UIImage(named: welcomeScreens[pageNumber].imageName)
        titleLabel.text = welcomeScreens[pageNumber].title
        detailsLabel.text = welcomeScreens[pageNumber].detials
        dotsImageView.image = UIImage(named: welcomeScreens[pageNumber].dotsImage)
    }
    


}
