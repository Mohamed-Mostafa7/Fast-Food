//
//  ViewController.swift
//  Fast Food
//
//  Created by Mohamed Mostafa on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var logoImageView: UIImageView!
    
    private let circleImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: -150, y: -150, width: 350, height: 350))
        imageView.image = UIImage(named: "Ellipse")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(circleImageView)
        view.sendSubviewToBack(circleImageView)
        
        DispatchQueue.main.async {
            self.animate()
        }
    }
    
    func animate() {
        let size = self.view.frame.size.width * 1.5
        // fade the image
        let firstImage = UIImage(named: "Fast-Food-Logo-Design")
        let secondImage = UIImage(named: "Fast-Food-Logo-Design2")
        let fadeAnim:CABasicAnimation = CABasicAnimation(keyPath: "contents")
        fadeAnim.fromValue = firstImage
        fadeAnim.toValue   = secondImage
        fadeAnim.duration  = 1.0
        self.logoImageView.layer.add(fadeAnim, forKey: "contents")
        
        UIView.animate(withDuration: 2) {
            self.circleImageView.frame = CGRect(
                x: -(size/1.2),
                y: -(size/2),
                width: size*2.5,
                height: size*2.5)
            self.logoImageView.setImage(secondImage)
        }
        completion: { done in
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                if done{
                    if let vc = self.storyboard?.instantiateViewController(identifier: "Home") as? HomeViewController {
                        vc.modalTransitionStyle = .crossDissolve
                        vc.modalPresentationStyle = .fullScreen
                        self.present(vc, animated: true)
                    }
                }
            }
        }
        
        
    }
 
}

// MARK: - ANIMATING IMAGE
extension UIImageView{
    func setImage(_ image: UIImage?, animated: Bool = true) {
        let duration = animated ? 0.3 : 0.0
        UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
            self.image = image
        }, completion: nil)
    }
}
