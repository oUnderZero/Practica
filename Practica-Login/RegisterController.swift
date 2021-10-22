//
//  RegisterController.swift
//  Practica-Login
//
//  Created by Mac18 on 21/10/21.
//

import UIKit

class RegisterController: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func volverbtn(_ sender: UIButton) {
        performSegue(withIdentifier: "un", sender: self)
    }
    @IBAction func registerbtn(_ sender: Any) {
        var resultado: String?
        if usuario.text == "" ||  pass.text == ""{
            resultado = "Alguno de los 2 campos esta vacio."
        }else {
            resultado = "Te has registrado con exito"
            usuario.text = ""
            pass.text = ""
            
        }
        let alert = UIAlertController(title: "Registro", message: resultado, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Cerrar", comment: "Default action"), style: .default, handler: { _ in
        
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
}
