//
//  ViewController.swift
//  iCrypto
//
//  Created by Alvin Escobar on 10/14/21.
//

import UIKit

class FirstViewController: UIViewController {
    private var createWalletButton = CustomButton()
    private var loginToWalletButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addButtonsToSubView()
        addConstraintsToButtons()
    }
    
    private func addButtonsToSubView() {
        createWalletButton.setup(backgroundColor: UIColor(red: 6/255, green: 104/255, blue: 250/255, alpha: 1), textTitle: "Create New Wallet", textColor: .white)
        loginToWalletButton.setup(backgroundColor: UIColor(red: 6/255, green: 104/255, blue: 250/255, alpha: 1), textTitle: "Login To Wallet", textColor: .white)
        self.view.addSubview(loginToWalletButton)
        self.view.addSubview(createWalletButton)
    }
    
    private func addConstraintsToButtons() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(createWalletButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(createWalletButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(createWalletButton.bottomAnchor.constraint(lessThanOrEqualTo: loginToWalletButton.safeAreaLayoutGuide.topAnchor, constant: -20))
        constraints.append(createWalletButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07))
        
        constraints.append(loginToWalletButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(loginToWalletButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(loginToWalletButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        constraints.append(loginToWalletButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07))
        
        NSLayoutConstraint.activate(constraints)
    }

}

