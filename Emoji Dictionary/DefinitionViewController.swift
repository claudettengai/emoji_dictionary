//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Claudette Ngai on 2/6/17.
//  Copyright © 2017 Zappy Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🍟"{
            definitionLabel.text = "Some french fries!"
        }
        if emoji == "🍆"{
            definitionLabel.text = "Eggplant!"
        }
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    
    
    
}
