//
//  ViewController.swift
//  SnapKit_Practice
//
//  Created by 황홍필 on 2023/05/17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let yellowView: UIView = {
        let yellow = UIView()
        yellow.backgroundColor = .yellow
        return yellow
    }()
    
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "매스버거"
        return label
    }()
    
    
    let orangeView: UIView = {
        let orange = UIView()
        orange.backgroundColor = .orange
        return orange
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(yellowView)
        view.addSubview(orangeView)
        view.addSubview(label)
        setupLayout()
        
    }

    
    func setupLayout() {

        yellowView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(30)
            make.top.equalTo(view.snp.top).offset(30)
            make.trailing.equalTo(view.snp.trailing).offset(-30)
            make.bottom.equalTo(view.snp.bottom).offset(-30)
        }
        
        
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        
        orangeView.snp.makeConstraints { make in
            make.top.equalTo(yellowView.snp.top).offset(50)
            make.leading.equalTo(yellowView.snp.leading).offset(50)
            make.trailing.equalTo(yellowView.snp.trailing).offset(-50)
            make.height.equalTo(300)
        }
    }

    
    
}

