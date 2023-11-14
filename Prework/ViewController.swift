//
//  ViewController.swift
//  Prework
//
//  Created by Shantalia Z on 11/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetstoggle: UISwitch!
    
    @IBOutlet weak var firstnametextfield: UITextField!
    
    @IBOutlet weak var lastnametextfield: UITextField!
    
   @IBOutlet weak var schoolnametextfield: UITextField!
    
    @IBOutlet weak var yearsegmentedcontrol: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    
    @IBAction func introduceSelfAction(_ sender: Any) {
        
//        // Choosing the title we have selected from the segmented control
//                let year = yearsegmentedcontrol.titleForSegment(at: yearsegmentedcontrol.selectedSegmentIndex)
        
        guard let year = yearsegmentedcontrol.titleForSegment(at: yearsegmentedcontrol.selectedSegmentIndex),
                  let firstName = firstnametextfield.text, !firstName.isEmpty,
                  let lastName = lastnametextfield.text, !lastName.isEmpty,
                  let schoolName = schoolnametextfield.text, !schoolName.isEmpty,
                  let numberOfDogs = numberOfPetsLabel.text, !numberOfDogs.isEmpty else {
                // Handle the case where one or more values are nil or empty
                print("One or more input fields are empty")
                return
            }

            let morePetsDesire = morePetstoggle.isOn ? "do" : "do not"
            
            // Use a multi-line string literal for better readability
            let introduction = """
            My name is \(firstName) \(lastName) and I attend \(schoolName).
            I am currently in my \(year) year and I own \(numberOfDogs) cats.
            It is \(morePetsDesire) that I want more pets.
            """

            // Create the alert controller
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

            // Add an action for the alert controller
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            alertController.addAction(action)

            // Present the alert controller
            present(alertController, animated: true, completion: nil)
        
        
        
        
    }
  
    
    @IBAction func StepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }


}

