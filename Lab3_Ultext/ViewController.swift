//
//  ViewController.swift
//  Lab3_Ultext
//
//  Created by Vivek on 23/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Age: UITextField!
    @IBOutlet weak var First_Name: UITextField!
    
    @IBOutlet weak var Country: UITextField!
    @IBOutlet weak var Second_Name: UITextField!

    @IBOutlet weak var Invisible: UILabel!
    @IBOutlet weak var Display_Box: UITextView!
    
    @IBAction func Add(_ sender: Any) {
        let first_name=First_Name.text ?? ""
        let second_name=Second_Name.text ?? ""
        let country=Country.text ?? ""
        let age=Age.text ?? ""
        Display_Box.text="Full Name: \(first_name) \(second_name)\nCountry: \(country)\nAge: \(age) ";
        Display_Box.textAlignment = .justified;
    }
    @IBAction func Clear(_ sender: Any) {
        First_Name.text = ""
      Second_Name.text = ""
     Country.text = ""
        Age.text = ""
        Display_Box.text = ""
    }
    @IBAction func Submit(_ sender: Any) {
        let first_name=First_Name.text ?? ""
        let second_name=Second_Name.text ?? ""
        let country=Country.text ?? ""
        let age=Age.text ?? ""
        if !first_name.isEmpty &&
           !second_name.isEmpty &&
           !country.isEmpty &&
            !age.isEmpty{
            Invisible.text="Successfully submitted!";
        }else{
            Invisible.text="Complete the missing Info!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Age.placeholder="Age";
        First_Name.placeholder="First Name";
        Country.placeholder="Country";
        Second_Name.placeholder="Last Name";
        
        let first_name=First_Name.text ?? ""
        let second_name=Second_Name.text ?? ""
        let country=Country.text ?? ""
        let age=Age.text ?? ""
        // Do any additional setup after loading the view.
    }


}

