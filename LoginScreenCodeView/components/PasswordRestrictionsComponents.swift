//
//  LabelsPasswordRestrictions.swift
//  LoginScreenCodeView
//
//  Created by Vítor Bruno on 02/05/25.
//

import UIKit

class LabelsPasswordRestrictions: UIView {
    lazy var labelPasswordRestrictions: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 13)
        label.textAlignment = .left
        label.text = "Text"
        
        return label
    }
    
    lazy var imageVector: UIImageView = {
        let image = UIImageView(image: UIImage(named: "vector X"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        
        return image
    }()

    var Labeltext {
        didSet{
            labelPasswordRestrictions.text = Labeltext
        }
    }
    
    var image{
        get{
            imageVector.image
        }
        set{
            imageVector.image = UIImage(named: image)
        }
    }
    
    
}
