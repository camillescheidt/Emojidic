//
//  DefinitionViewController.swift
//  EmojiDic
//
//  Created by Camille Scheidt on 6/11/17.
//  Copyright © 2017 our pinkies up. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var CategoryLabel: UILabel!
    
    @IBOutlet weak var CreatedLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.emojiString
        CreatedLabel.text = "Designed in: \(emoji.createdInYear)"
        CategoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
