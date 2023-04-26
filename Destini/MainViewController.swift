//
//  ViewController.swift
//  Destini
//
//  Created by Daniil Kulikovskiy on 25.04.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        layout()
    }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Image.background)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let buttonOne: UIButton = {
        let buttonOne = UIButton()
        let image = UIImage(named: Image.backgroundColorButtonOne) as UIImage?
        buttonOne.setImage(image, for: .normal)
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        return buttonOne
    }()
    
    private let buttonTwo: UIButton = {
        let buttonTwo = UIButton()
        let image = UIImage(named: Image.backgroundColorButtonTwo) as UIImage?
        buttonTwo.setImage(image, for: .normal)
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        return buttonTwo
    }()
    
    private let storyLabel: UILabel = {
        let storyLabel = UILabel()
        storyLabel.text = "LabelText"
        storyLabel.translatesAutoresizingMaskIntoConstraints = false
        storyLabel.textAlignment = .left
        storyLabel.textColor = .white
        storyLabel.font = .systemFont(ofSize: 25)
        return storyLabel
    }()
    
    private let labelOne: UILabel = {
        let labelOne = UILabel()
        labelOne.text = "ChoiceOne"
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelOne.textAlignment = .center
        labelOne.textColor = .white
        labelOne.font = .systemFont(ofSize: 22)
        return labelOne
    }()
    
    private let labelTwo: UILabel = {
        let labelTwo = UILabel()
        labelTwo.text = "ChoiceTwo"
        labelTwo.translatesAutoresizingMaskIntoConstraints = false
        labelTwo.textAlignment = .center
        labelTwo.textColor = .white
        labelTwo.font = .systemFont(ofSize: 22)
        return labelTwo
    }()
}

extension MainViewController {
    func layout() {
        view.addSubview(imageView)
        imageView.addSubview(buttonOne)
        imageView.addSubview(buttonTwo)
        imageView.addSubview(storyLabel)
        buttonOne.addSubview(labelOne)
        buttonTwo.addSubview(labelTwo)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            storyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            storyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            storyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            storyLabel.bottomAnchor.constraint(equalTo: buttonOne.topAnchor, constant: 20),
            
            
            buttonTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            buttonTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonTwo.heightAnchor.constraint(equalToConstant: 110),
            
            buttonOne.bottomAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: -18),
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonOne.heightAnchor.constraint(equalToConstant: 110),
            
            //            labelOne.centerXAnchor.constraint(equalTo: buttonOne.centerXAnchor),
            //            labelOne.heightAnchor.constraint(equalToConstant: 50),
            labelOne.leadingAnchor.constraint(equalTo: buttonOne.leadingAnchor, constant: 20),
            labelOne.trailingAnchor.constraint(equalTo: buttonOne.trailingAnchor, constant: -20),
            labelOne.bottomAnchor.constraint(equalTo: buttonOne.bottomAnchor, constant: -10),
            labelOne.topAnchor.constraint(equalTo: buttonOne.topAnchor, constant: 10),
            
            labelTwo.leadingAnchor.constraint(equalTo: buttonTwo.leadingAnchor, constant: 20),
            labelTwo.trailingAnchor.constraint(equalTo: buttonTwo.trailingAnchor, constant: -20),
            labelTwo.bottomAnchor.constraint(equalTo: buttonTwo.bottomAnchor, constant: -10),
            labelTwo.topAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: 10),
        ])
    }
}

