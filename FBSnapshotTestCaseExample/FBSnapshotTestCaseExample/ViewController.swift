//
//  ViewController.swift
//  FBSnapshotTestCaseExample
//
//  Created by Federico Jordán on 13/2/18.
//  Copyright © 2018 Federico Jordán. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var titleLabel = UILabel()
    lazy var mainImageView = UIImageView()
    lazy var registerButton = UIButton()
    lazy var loginButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = UIColor(red: 161/255, green: 220/255, blue: 220/255, alpha: 1.0)
        
        setupTitle()
        setupImage()
        setupLoginButton()
        setupRegisterButton()
    }
    
    private func setupTitle() {
        view.addSubview(titleLabel)
        titleLabel.text = "FBSnapshotTestCaseExample"
        titleLabel.font = UIFont.systemFont(ofSize: 20.0)
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailingMargin).offset(-20)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leadingMargin).offset(20)
        }
    }

    private func setupImage() {
        view.addSubview(mainImageView)
        mainImageView.image = UIImage(named: "macbook")
        mainImageView.contentMode = .scaleAspectFit
        mainImageView.snp.makeConstraints { (make) in
                make.top.equalTo(titleLabel.snp.bottom).offset(60)
                make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-40)
                make.leading.equalTo(view.safeAreaLayoutGuide).offset(40)
                make.height.equalTo(mainImageView.snp.width)
        }
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.setTitle("LOGIN", for: .normal)
        loginButton.backgroundColor = UIColor(red: 37/255, green: 67/255, blue: 116/255, alpha: 1.0)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        loginButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottomMargin).offset(-20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailingMargin).offset(-20)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leadingMargin).offset(20)
            make.height.equalTo(40)
        }
    }
    
    private func setupRegisterButton() {
        view.addSubview(registerButton)
        registerButton.setTitle("REGISTER", for: .normal)
        registerButton.backgroundColor = UIColor(red: 102/255, green: 172/255, blue: 57/255, alpha: 1.0)
        registerButton.setTitleColor(UIColor.white, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        registerButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(loginButton.snp.top).offset(-20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailingMargin).offset(-20)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leadingMargin).offset(20)
            make.height.equalTo(40)
        }
    }
    
}

