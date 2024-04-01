//
//  ViewController.swift
//  GradientApp
//
//  Created by Nikolay Pochekuev on 01.04.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cubeView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.frame = cubeView.bounds
        gradientLayer.cornerRadius = 20
        
        cubeView.layer.shadowOffset = CGSize(width: 0, height: 2)
        cubeView.layer.shadowOpacity = 0.7
        cubeView.layer.shadowRadius = 10.0
        cubeView.layer.shadowColor = UIColor.black.cgColor
        cubeView.layer.masksToBounds = false
        
        cubeView.layer.cornerRadius = 20
        
        cubeView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
