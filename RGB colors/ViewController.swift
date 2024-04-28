//
//  ViewController.swift
//  RGB colors
//
//  Created by Юрьев Иван on 22.04.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue

        redLabel.text = String(format: "%.2f",redSlider.value)
        greenLabel.text = String(format: "%.2f",greenSlider.value)
        blueLabel.text = String(format: "%.2f",blueSlider.value)
                

    }
    
    @IBAction func grbColorSkider(_ sender: UISlider) {
        
        viewColor.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
        
        redLabel.text = String(format: "%.2f",redSlider.value)
        greenLabel.text = String(format: "%.2f",greenSlider.value)
        blueLabel.text = String(format: "%.2f",blueSlider.value)
    
        
    }
}
