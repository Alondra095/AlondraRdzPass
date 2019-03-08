//
//  SecondTVC.swift
//  AlondraRodriguezU2EP2
//
//  Created by Universidad Politecnica de Gómez Palacio on 19-03-08.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class SecondTVC: UITableViewController {

    @IBOutlet weak var lblFullName: UILabel!
    
    var fullName: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.lblFullName.text = fullName
    }

}
