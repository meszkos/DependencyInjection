//
//  ViewController.swift
//  DependencyInjection
//
//  Created by MacOS on 13/06/2022.
//

import UIKit
import MyAppUIKit
import APIKit

extension APICaller: DataFetchable{}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hhtps://iosacademy.io/api/v1/courses/index.php
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(button)
        
        button.backgroundColor = .systemBlue
        button.setTitle("Tap me", for: .normal)
        button.center = view.center
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }

    @objc private func didTapButton(){
        let vc = CoursesViewController(dataFetchable: APICaller.shared)
        present(vc, animated: true)
    }

}

