//
//  walletLoginButton.swift
//  iCrypto
//
//  Created by Alvin Escobar on 10/17/21.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2
    }
    
    func setup(backgroundColor: UIColor, textTitle: String, textColor: UIColor) {
        self.backgroundColor = backgroundColor
        self.setTitle(textTitle, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
