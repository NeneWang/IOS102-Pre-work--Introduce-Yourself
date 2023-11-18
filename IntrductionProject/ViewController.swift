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

    @IBOutlet weak var MorePetsTxtField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MorePetsSwitch.addTarget(self, action: #selector(switchValueChanged), for: .valueChanged)

    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        NumberOfPets.text = "\(Int(sender.value))"
    }
  
    @objc func switchValueChanged() {
        if MorePetsSwitch.isOn {
            MorePetsTxtField.textColor = UIColor.black
        } else {
            MorePetsTxtField.textColor = UIColor.gray 
        }
    }
    @IBAction func introduceSelfAlertDidTapped(_ sender: UIButton) {
        
        
        let year = YearSegmented.titleForSegment(at: YearSegmented.selectedSegmentIndex)
        
        var introduction = "Hello, my name is \(FirstNameTC.text!) \(LastNameTC.text!) and I attend \(SchoolNameTC.text!). " +
            "I am currently in my \(year!) year. I own \(NumberOfPets.text!) dogs. " +
            "It is \(MorePetsSwitch.isOn) that I want more pets."

        if(FirstNameTC.text == "" || LastNameTC.text == "" || SchoolNameTC.text == ""){
            introduction = "Please complete the fields."
        }
            
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
    

        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

           alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }

    }
