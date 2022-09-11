//
//  ViewController.swift
//  ImageViewTimer
//
//  Created by Admin on 8.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    var circle: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 50
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return view
    }()
    
    var label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        return label
    }()
    
    var counter = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(circle)
        
        label.text = counter
        label.center.x = view.center.x
        label.center.y = view.center.y
        view.addSubview(label)
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            UIView.animate(withDuration: 1) {
                if self.counter == "0"{
                    self.circle.center.y = UIScreen.main.bounds.maxY - 50
                    self.counter = "1"
                    self.label.text = self.counter
                } else if self.counter == "1" {
                    self.circle.center.x = UIScreen.main.bounds.maxX - 50
                    self.counter = "2"
                    self.label.text = self.counter
                } else if self.counter == "2" {
                    self.circle.center.y = UIScreen.main.bounds.minY + 90
                    self.counter = "3"
                    self.label.text = self.counter
                } else if self.counter == "3" {
                    self.circle.center.x = UIScreen.main.bounds.minX + 50
                    self.counter = "4"
                    self.label.text = self.counter
                }
            }
        }
    }
}

