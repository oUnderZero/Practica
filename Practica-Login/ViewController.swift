//
//  ViewController.swift
//  Practica-Login
//
//  Created by Mac18 on 21/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernamelbl: UITextField!
    @IBOutlet weak var passwordlbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginbtn(_ sender: Any) {
        if usernamelbl.text == "" || passwordlbl.text == "" {
            let alert = UIAlertController(title: "Registro", message: "te hace falta rellenar un campo.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("Cerrar", comment: "Default action"), style: .default, handler: { _ in
            
            }))
            self.present(alert, animated: true, completion: nil)
        }else{
            performSegue(withIdentifier: "welcome", sender: self)
        }
        
       
    }
    
   
    @IBAction func facebookbtn(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("Seleccionaste facebook")
        case 2:
            
            print("seleccionaste youtube")
        case 3:
            print("seleccionaste twitter")
        default:
            print(" ")
        }
        

    }
    @IBAction func signinbtn(_ sender: Any) {
        performSegue(withIdentifier: "signin", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcome" {
            let Op = segue.destination as! MainController
            Op.username = usernamelbl.text
            
        }
        
    }
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    
    }

    
}

