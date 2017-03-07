//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Claudette Ngai on 2/1/17.
//  Copyright © 2017 Zappy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableView: UITableView!
    
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🍟"
        emoji1.birthYear = 2010
        emoji1.category = "Food"
        emoji1.definition = "Delicious french fries"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍆"
        emoji2.birthYear = 2010
        emoji2.category = "Food"
        emoji2.definition = "Delicious eggplant"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💄"
        emoji3.birthYear = 2010
        emoji3.category = "Make up"
        emoji3.definition = "Ruby Woo red lipstick!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👙"
        emoji4.birthYear = 2010
        emoji4.category = "Clothing"
        emoji4.definition = "Teeny bikini"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐳"
        emoji5.birthYear = 2010
        emoji5.category = "Animal"
        emoji5.definition = "Whale blowing water from spout"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐹"
        emoji6.birthYear = 2010
        emoji6.category = "Animal"
        emoji6.definition = "A hamster being a hamster"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐙"
        emoji7.birthYear = 2010
        emoji7.category = "Animal"
        emoji7.definition = "An octopus or squid that looks cute"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
}

