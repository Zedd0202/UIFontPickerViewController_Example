//
//  ViewController.swift
//  UIFontPickerViewControllerExample
//
//  Created by Zedd on 07/06/2019.
//  Copyright © 2019 Zedd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIFontPickerViewControllerDelegate {

    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectFontButtonDidTap(_ sender: Any) {
        
        let configuration = UIFontPickerViewControllerConfiguration()
        configuration.includeFaces = true
        
        let fontPickerViewController = UIFontPickerViewController(configuration: configuration)
        fontPickerViewController.delegate = self
        self.present(fontPickerViewController, animated: true, completion: nil)
    }
    
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        guard let descriptor = viewController.selectedFontDescriptor else { return }
        self.greetingLabel.font = UIFont(descriptor: descriptor, size: 40)
    }
}

