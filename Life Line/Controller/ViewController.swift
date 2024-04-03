//
//  ViewController.swift
//  Life Line
//
//  Created by Furkan Ceylan on 3.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyLibrary: StoryLibrary = StoryLibrary()
    
    var storyNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        
        guard let buttonID = sender.restorationIdentifier else {return}
        storyLibrary.storyCheck(buttonID)
        updateUI()
    }
    
    func updateUI() {
        let story = storyLibrary.getStory()
        guard let title = story["title"],
              let choice1 = story["choice1"],
              let choice2 = story["choice2"]
        else {return}
        
        storyLabel.text = title
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
    }


}

