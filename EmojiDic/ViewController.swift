//
//  ViewController.swift
//  EmojiDic
//
//  Created by Camille Scheidt on 6/9/17.
//  Copyright © 2017 our pinkies up. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiString
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
        emoji1.emojiString = "😜"
        emoji1.createdInYear = 2011
        emoji1.category = "Faces"
        emoji1.definition = "wink face w/tongue sticking out"
        
        let emoji2 = Emoji()
        emoji2.emojiString = "😘"
        emoji2.createdInYear = 2012
        emoji2.category = "Faces"
        emoji2.definition = "kissy face"
        
        let emoji3 = Emoji()
        emoji3.emojiString = "😍"
        emoji3.createdInYear = 2013
        emoji3.category = "Faces"
        emoji3.definition = "heart eyes"
        
        let emoji4 = Emoji()
        emoji4.emojiString = "🤠"
        emoji4.createdInYear = 2014
        emoji4.category = "Faces"
        emoji4.definition = "cowboy"
        
        let emoji5 = Emoji()
        emoji5.emojiString = "🤓"
        emoji5.createdInYear = 2014
        emoji5.category = "Faces"
        emoji5.definition = "nerd burglard"
        
        let emoji6 = Emoji()
        emoji6.emojiString = "😂"
        emoji6.createdInYear = 2014
        emoji6.category = "Faces"
        emoji6.definition = "laugh crying"
        
        let emoji7 = Emoji()
        emoji7.emojiString = "👨‍🎤"
        emoji7.createdInYear = 2011
        emoji7.category = "Music"
        emoji7.definition = "David Bowie"
        
        let emoji8 = Emoji()
        emoji8.emojiString = "🤘🏽"
        emoji8.createdInYear = 2011
        emoji8.category = "Music"
        emoji8.definition = "rock & roll"
       
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
        
    }

}

