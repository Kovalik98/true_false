//
//  MainVC.swift
//  Truth or action 
//
//  Created by Matvey Grigiryev on 4/14/19.
//  Copyright © 2019 Matvey Grigiryev. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var action: UISegmentedControl!
    @IBOutlet weak var rules: UIButton!
    @IBOutlet weak var refresh: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var humanIndicator: UISegmentedControl!
    
    @IBOutlet weak var answer: UIView!
    
    var questionsArray = askM
    
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var myBackgroundView: UIView!
    @IBOutlet weak var myCardView: UIView!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
   
    @IBAction func panRecognizerAction(_ sender: UIPanGestureRecognizer) {
      
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "nextVC", sender: self)
    }
    @IBAction func refreshButton(_ sender: Any) {
        questionNumberLabel.alpha = 0
        questionLabel.alpha = 0
        UIView.animate(withDuration: 0.5, animations: {
            self.swipePosition = 0
            self.questionNumberLabel.alpha = 1
            self.questionLabel.alpha = 1
        })
        questionLabel.text = questionsArray[swipePosition]
    }
    
    
    var swipePosition = 0
    var gradientLayer = CAGradientLayer()
        

        override func viewDidLoad() {
            super.viewDidLoad()
            
            questionLabel.text = questionsArray[swipePosition]
            questionNumberLabel.text = "Прочитай и ответь."
            rules.layer.cornerRadius = 10
            refresh.layer.cornerRadius = 10
            nextButton.layer.cornerRadius = 10
            answer.layer.cornerRadius = 20
            questionLabel.sizeToFit()
            questionNumberLabel.sizeToFit()
        }
    
    override func viewWillAppear(_ animated: Bool) {
        //createGradientLayer()
    }
    
    func alertFunc() {
        let ac = UIAlertController(title: "Вы прошли все вопросы!", message: "Надеемся что Вы и Ваш собеседник смогли узнать много интересного.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        ac.addAction(action)
        present(ac, animated: true)
    }
    
    
    
    @IBAction func actionTapped(_ sender: Any) {
        let getIndex = action.selectedSegmentIndex
        print(getIndex)
        switch getIndex {
        case 0:
            self.questionsArray = askM
            questionLabel.text = questionsArray[swipePosition]
        case 1:
            self.questionsArray = actionsM
            questionLabel.text = questionsArray[swipePosition]
        default:
            break
        }
    }
    
    @IBAction func man(_ sender: Any) {
        let getIndexMen = humanIndicator.selectedSegmentIndex
          print(getIndexMen)
          switch getIndexMen {
          case 0:
              self.questionsArray = askG
              questionLabel.text = questionsArray[swipePosition]
          case 1:
              self.questionsArray = actionsG
              questionLabel.text = questionsArray[swipePosition]
          default:
              break
          }
    }
    
    
    
    @IBAction func compilation(_ sender: Any) {
        self.swipePosition += 1
        if swipePosition == questionsArray.count {
                          swipePosition = 0
                          questionLabel.text = questionsArray[swipePosition]
                          alertFunc()
                      }
                      questionLabel.text = questionsArray[swipePosition]
                      }
    }
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

