//
//  ViewController.swift
//  AlondraRodriguezU2EP2
//
//  Created by Universidad Politecnica de Gómez Palacio on 19-03-08.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txtFullName.text = "Alondra Rodriguez Castillo"
    }

    @IBAction func sendData(_ sender: Any)
    {
        let fullName: String = self.txtFullName.text ?? ""
        
        self.performSegue(withIdentifier: "sgSecondTVC", sender: fullName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "sgSecondTVC"{
            if let secondTVC: SecondTVC = segue.destination as? SecondTVC
            {
                if let fullName: String = sender as? String
                {
                    secondTVC.fullName = fullName
                }
            }
        }
    }
}

