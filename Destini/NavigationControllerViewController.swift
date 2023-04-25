//
//  NavigationControllerViewController.swift
//  Destini
//
//  Created by Daniil Kulikovskiy on 25.04.2023.
//

import UIKit

class NavigationControllerViewController: UINavigationController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        config()
    }
    
    private func config() {
        navigationBar.backgroundColor = .clear
        navigationBar.tintColor = .label
        let backButton = UIBarButtonItem()
        navigationBar.topItem?.backBarButtonItem = backButton
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    



}

