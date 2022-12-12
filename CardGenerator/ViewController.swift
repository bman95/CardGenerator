//
//  ViewController.swift
//  CardGenerator
//
//  Created by Brendon Crowe on 12/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark:- outlets and properties
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var stepperControl: UIStepper!
    @IBOutlet weak var mainCardValue: UILabel!
    @IBOutlet weak var topLeftCard: UILabel!
    @IBOutlet weak var bottomRightCard: UILabel!
    @IBOutlet weak var cardView: UIView!

    let model = CardGenerator()
    var suit: Suit = .diamond
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.configureStepper(stepperControl)
        mainCardValue.text = model.cardToShow(stepperControl, suit)
        topLeftCard.text = model.cardToShow(stepperControl, suit)
        bottomRightCard.text = model.cardToShow(stepperControl, suit)
        cardView.layer.borderWidth = 1.5
    }
    
    
    @IBAction func suitSelected(_ sender: UISegmentedControl) {
        suit = model.suitSelector(sender)
        mainCardValue.text = model.cardToShow(stepperControl, suit)
        topLeftCard.text = model.cardToShow(stepperControl, suit)
        bottomRightCard.text = model.cardToShow(stepperControl, suit)
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        model.stepperValue = sender.value
        mainCardValue.text = String(format: "%0.f", model.stepperValue)
        mainCardValue.text = model.cardToShow(stepperControl, suit)
        topLeftCard.text = model.cardToShow(stepperControl, suit)
        bottomRightCard.text = model.cardToShow(stepperControl, suit)
    }
    
}


