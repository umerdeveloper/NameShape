//
//  ViewController.swift
//  NameDrawing
//
//  Created by Umer Personal on 25.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nameShapeView = NameShape(frame: .init(x: 50, y: 150, width: 300, height: 300))
        view.addSubview(nameShapeView)
    }
}

