//
//  ViewController.swift
//  Ind03_Bernius_Paul
//
//  Created by Paul Bernius on 3/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Flag: UIImageView!
    var myFlag = ""
    
    @IBOutlet weak var Map: UIImageView!
    var myMap = ""
    
    @IBOutlet weak var StateName: UILabel!
    var myStateName = ""
    
    @IBOutlet weak var SquareMiles: UILabel!
    var mySquareMiles = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Flag.image = UIImage(named: myFlag)
        Map.image = UIImage(named: myMap)
        StateName.text = myStateName
        SquareMiles.text = mySquareMiles
    }


}

