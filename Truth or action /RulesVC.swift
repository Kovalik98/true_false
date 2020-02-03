//
//  RulesVC.swift
//  Truth or action 
//
//  Created by Matvey Grigiryev on 4/15/19.
//  Copyright © 2019 Matvey Grigiryev. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {
    
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var rulesLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    let rulesText = "В ходе игры вам всего лишь нужно либо честно отвечать на вопросы, указанные в карточках, либо выполнять действия. Игроки начинают по очереди вытаскивать карточки. Если игроку достается карточка, то игрок честно отвечает на вопрос, указанный в карточке или игрок выполняет описанное в карточке действие. "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        back.layer.cornerRadius = 10
        backgroundView.layer.cornerRadius = 10
        backgroundView.layer.shadowOffset = CGSize(width: 7, height: 7)
        backgroundView.layer.shadowRadius = 10
        backgroundView.layer.shadowOpacity = 0.5
        rulesLabel.text = rulesText
    }

}
