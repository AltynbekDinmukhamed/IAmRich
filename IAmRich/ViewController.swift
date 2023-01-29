//
//  ViewController.swift
//  IAmRich
//
//  Created by Димаш Алтынбек on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: -Creating Views-
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "I Am Rich"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "diamond")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    //MARK: -Life cycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    //MARK: -Funcitons-
    private func setUpViews() {
        view.backgroundColor = .systemBlue
        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: view.frame.width / 2)
        ])
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.width / 2)
        ])
    }

}

