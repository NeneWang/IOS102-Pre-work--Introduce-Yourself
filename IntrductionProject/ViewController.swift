//
//  ViewController.swift
//  IntrductionProject
//
//  Created by Nene Wang  on 11/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameTC: UITextField!
    @IBOutlet weak var LastNameTC: UITextField!
    @IBOutlet weak var SchoolNameTC: UITextField!
    
    
    @IBOutlet weak var NumberPetsCT: UIStepper!
    @IBOutlet weak var IntroduceBtn: UIButton!
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    @IBOutlet weak var YearSegmented: UISegmentedControl!
    @IBOutlet weak var NumberOfPets: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        NumberOfPets.text = "\(Int(sender.value))"
    }

    @IBAction func introduceSelfAlertDidTapped(_ sender: UIButton) {
        let year = YearSegmented.titleForSegment(at: YearSegmented.selectedSegmentIndex)

        let introduction = "Hello, my name is \(FirstNameTC.text!) \(LastNameTC.text!) and I attend \(SchoolNameTC.text!). " +
            "I am currently in my \(year!) year. I own \(NumberOfPets.text!) dogs. " +
            "It is \(MorePetsSwitch.isOn) that I want more pets."

        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

           alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }

    }
