//
//  ViewController.swift
//  practicum_homework_1
//
//  Created by Александр Бекренев on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bigButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var additionalLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        additionalLabel.textColor = .lightGray
        
        configureCounterLabel()
        configureBigButton()
        configureClearButton()
    }

    @IBAction func increaseCounter() {
        counter += 1
        configureCounterLabel()
    }
    
    @IBAction func clearCounter() {
        counter = 0
        configureCounterLabel()
    }
    
    fileprivate func configureBigButton() {
        bigButton.backgroundColor = .systemBlue
        bigButton.tintColor = .white
        bigButton.layer.cornerRadius = 10
        bigButton.setTitle("Тык", for: .normal)
        
        /// Почему-то не меняется размер шрифта у кнопки ни здесь, ни в IB
//        bigButton.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
//        bigButton.titleLabel?.adjustsFontSizeToFitWidth = true
//        bigButton.titleLabel?.minimumScaleFactor = 0.5
//        bigButton.titleLabel?.numberOfLines = 0
    }
    
    fileprivate func configureClearButton() {
        clearButton.backgroundColor = .systemRed
        clearButton.tintColor = .white
        clearButton.layer.cornerRadius = 10
        clearButton.setTitle("Очистить", for: .normal)
    }
    
    fileprivate func configureCounterLabel() {
        counterLabel.text = "Значение счётчика: \(counter)"
        counterLabel.sizeToFit()
        counterLabel.center.x = self.view.center.x
    }
}

