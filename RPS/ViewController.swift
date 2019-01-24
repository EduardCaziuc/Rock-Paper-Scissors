//
//  ViewController.swift
//  Rock, Papper, Scissors
//
//  Created by Eduard Caziuc on 20/03/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var HumanScore = 0
    
    var ComputerScore = 0
    
    var randomComputerHandImageIndex = 0
    
    var conditionArray = ["Lose", "Win", "Tie"]
    
    @IBOutlet weak var conditionImage: UIImageView!
    
    @IBOutlet weak var ComputerScoreLabel: UILabel!
    
    @IBOutlet weak var leftHand: UIImageView!
    
    @IBOutlet weak var rightHand: UIImageView!
    
    @IBOutlet weak var HumanScoreLabel: UILabel!
    
    func randomChoiseForComputer() {
        
        randomComputerHandImageIndex = Int(arc4random_uniform(UInt32(arrayOfComputerHandImages.count)))
        
        rightHand.image = UIImage(named: arrayOfComputerHandImages[randomComputerHandImageIndex]!)
    }
    
    @IBAction func arrayOfButtons(_ sender: UIButton) {
        
        for views in view.subviews {
            if let button = views as? UIButton {
                button.isEnabled = false
            }
        }
        
        self.conditionImage.isHidden = true
        
        self.leftHand.image = UIImage(named: "userHandRock")
        
        self.rightHand.image = UIImage(named: "computerHandRock")
        
        UIView.animate(withDuration: 0.2, animations: {
            self.leftHand.frame.origin.y -= 40; self.rightHand.frame.origin.y -= 40}) { (finished) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.leftHand.frame.origin.y += 40; self.rightHand.frame.origin.y += 40}) { (finished) in
                        UIView.animate(withDuration: 0.2, animations: {
                            self.leftHand.frame.origin.y -= 40; self.rightHand.frame.origin.y -= 40}) { (finished) in
                                UIView.animate(withDuration: 0.2, animations: {
                                    self.leftHand.frame.origin.y += 40; self.rightHand.frame.origin.y += 40}) { (finished) in
                                        UIView.animate(withDuration: 0.2, animations: {
                                            self.leftHand.frame.origin.y -= 40; self.rightHand.frame.origin.y -= 40}) { (finished) in
                                                UIView.animate(withDuration: 0.1, animations: {
                                                    self.leftHand.frame.origin.y += 40; self.rightHand.frame.origin.y += 40}) { (finished) in
                                                        
                                                        UIView.animate(withDuration: 0.1, animations: {
                                                            self.conditionImage.frame.origin.y -= 14}) { (finished) in
                                                                UIView.animate(withDuration: 0.1, animations: {
                                                                    self.conditionImage.frame.origin.y += 14})
                                                        }
                                                        UIView.animate(withDuration: 0.2, animations: {
                                                            self.conditionImage.frame.origin.x -= 2}){ (finished) in
                                                                UIView.animate(withDuration: 0.2, animations: {
                                                                    self.conditionImage.frame.origin.x += 2})
                                                        }
                                                        
                                                        for views in self.view.subviews {
                                                            if let button = views as? UIButton {
                                                                button.isEnabled = true
                                                            }
                                                        }
                                                        self.randomChoiseForComputer()
                                                        self.leftHand.image = UIImage(named: arrayOfUserHandImages[sender.tag])
                                                        if sender.tag == self.randomComputerHandImageIndex {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[2])
                                                            
                                                        }else if sender.tag == 0 && self.randomComputerHandImageIndex == 2 {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[1])
                                                            self.HumanScore += 1
                                                            self.HumanScoreLabel.text = "Human Score: \(self.HumanScore)"
                                                        }else if sender.tag == 1 && self.randomComputerHandImageIndex == 2 {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[0])
                                                            self.ComputerScore += 1
                                                            self.ComputerScoreLabel.text = "Computer Score: \(self.ComputerScore)"
                                                        }else if sender.tag == 2 && self.randomComputerHandImageIndex == 0 {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[0])
                                                            self.ComputerScore += 1
                                                            self.ComputerScoreLabel.text = "Computer Score: \(self.ComputerScore)"
                                                        }else if sender.tag == 1 && self.randomComputerHandImageIndex == 0 {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[1])
                                                            self.HumanScore += 1
                                                            self.HumanScoreLabel.text = "Human Score: \(self.HumanScore)"
                                                        }else if sender.tag == 2 && self.randomComputerHandImageIndex == 1 {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[1])
                                                            self.HumanScore += 1
                                                            self.HumanScoreLabel.text = "Human Score: \(self.HumanScore)"
                                                        }else if sender.tag == 0 && self.randomComputerHandImageIndex == 1 {
                                                            self.conditionImage.image = UIImage(named: self.conditionArray[0])
                                                            self.ComputerScore += 1
                                                            self.ComputerScoreLabel.text = "Computer Score: \(self.ComputerScore)"
                                                        }else {
                                                            
                                                        }
                                                        self.conditionImage.isHidden = false
                                                }
                                        }
                                }
                        }
                }
        }
    }
}







