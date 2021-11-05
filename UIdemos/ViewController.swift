//
//  ViewController.swift
//  UIdemos
//
//  Created by 何承民 on 2021/11/4.
//

import UIKit

class ViewController: UIViewController {
    // ViewController就是一个个webview
    
    
    // 首先声明一个labol   !表示允许没有值
    var snLabel: UILabel!
    var snField: UITextField!
    var confirmButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        title = "view1"
        snLabel = UILabel()
        // self就是像this一样的东西
        self.view.addSubview(snLabel)
        // 申明使用相对布局
        snLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            snLabel.topAnchor.constraint(equalTo: view.centerYAnchor),
            snLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            snLabel.widthAnchor.constraint(equalToConstant: 50),
            snLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
        snLabel.backgroundColor = .red
        snLabel.text = "SN:"
        snLabel.font = UIFont.systemFont(ofSize: 25)
        snLabel.textColor = .black
        snLabel.textAlignment = .center // 文本居中对齐
        
        snField = UITextField()
        self.view.addSubview(snField)
        snField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            snField.centerYAnchor.constraint(equalTo: snLabel.centerYAnchor),
            snField.heightAnchor.constraint(equalTo: snLabel.heightAnchor),
            snField.leftAnchor.constraint(equalTo: snLabel.rightAnchor, constant: 20),
            snField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30)
        ])
        snField.placeholder = "Input device's SN code"
        snField.font = UIFont.systemFont(ofSize: 25)
        snField.textColor = .black
        snField.borderStyle = .roundedRect
        
        confirmButton = UIButton()
        self.view.addSubview(confirmButton)
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            confirmButton.heightAnchor.constraint(equalToConstant: 50),
            confirmButton.topAnchor.constraint(equalTo: snField.bottomAnchor, constant: 30)
        ])
        confirmButton.backgroundColor = .lightGray
        confirmButton.setTitle("确认", for: .normal) // 一般都显示
        confirmButton.setTitleColor(.black, for: .normal)
        confirmButton.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        confirmButton.addTarget(self, action: #selector(confirmButtonDidTouched), for: .touchUpInside)
        
        
        
        
        
    }
    
    @objc func confirmButtonDidTouched() {
        print(snField.text!)
        
        let vc = DetailViewController()
        vc.snCode = snField.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

