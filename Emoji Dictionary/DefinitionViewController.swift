//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Claudette Ngai on 2/6/17.
//  Copyright © 2017 Zappy Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🍟"{
            definitionLabel.text = "Some french fries!"
            categoryLabel.text = "Category: Food"
            birthYearLabel.text = "Birthyear: 2010"
        }
        
        if emoji == "🍆"{
            definitionLabel.text = "Eggplant!"
            categoryLabel.text = "Category: Food"
            birthYearLabel.text = "Birthyear: 2010"

        }
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    
    
    
}
