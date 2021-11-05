//
//  DetailViewController.swift
//  UIdemos
//
//  Created by 何承民 on 2021/11/4.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    var snCode: String?
    var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        textView = UITextView()
        self.view.addSubview(textView)
        textView.backgroundColor = .white
        textView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            textView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7),
        ])
        textView.isEditable = false
        textView.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        textView.textColor = .blue
        textView.text = queryDeviceInformationBySN(snCode!)
        textView.textAlignment = .center
        
    }
    
    // 根据设备的sn码查询数据
    func queryDeviceInformationBySN(_ sncode: String) -> String {
        let url = "http://xxxx?sn=" + sncode
        // FIXME: 网络查询并解析
        print(url)
        return url
    }
}
