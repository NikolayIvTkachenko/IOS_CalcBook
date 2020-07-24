//
//  KeyButton.swift
//  CalcBook
//
//  Created by Nikolay Tkachenko on 24.07.2020.
//  Copyright © 2020 Nikolay Tkachenko. All rights reserved.
//

import UIKit

@IBDesignable
class KeyButton: UIButton {

    var borderWidth: CGFloat = 2.0
    var borderColor = UIColor.green.cgColor

    @IBInspectable var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.green,for: .normal)
        }
    }

    override init(frame: CGRect){
        super.init(frame: frame)
    }

//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }

    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2.0
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
        self.layer.backgroundColor = UIColor.black.cgColor
    }

}
