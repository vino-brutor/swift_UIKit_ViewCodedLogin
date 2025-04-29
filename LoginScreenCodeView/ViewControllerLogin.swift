//
//  ViewController.swift
//  LoginScreenCodeView
//
//  Created by Vítor Bruno on 29/04/25.
//

import UIKit

class ViewControllerLogin: UIViewController {
    
    lazy var labelWelcome: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome!"
        label.textAlignment = .center
        label.font = UIFont(name: "SFProRounded-Bold", size: 34)
        return label
    }()
    
    lazy var imageAppleInteligence: UIImageView = {
        let image = UIImageView(image: UIImage(named: "apple.intelligence.png"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lay var stackViewWelcomeAppleInteligence: UIStackView = {
        let stackView = U
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(labelWelcome)
        view.addSubview(imageAppleInteligence)
    }


}

