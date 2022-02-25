//
//  ThirdViewController.swift
//  MiniApp16-ManyViewDateTransition
//
//  Created by 前田航汰 on 2022/02/24.
//

import UIKit

class ThirdViewController: UIViewController {

    var countInt = 0
    @IBOutlet private weak var countTextLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        countTextLabel.text = String(countInt)
    }
    
    @IBAction func didTapCountUpButton(_ sender: Any) {
        countInt += 3
        countTextLabel.text = String(countInt)
    }

}
