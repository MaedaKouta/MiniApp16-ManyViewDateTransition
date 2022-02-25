//
//  secondViewController.swift
//  MiniApp16-ManyViewDateTransition
//
//  Created by 前田航汰 on 2022/02/24.
//

import UIKit

class secondViewController: UIViewController {

    var countInt = 0
    @IBOutlet private weak var countTextLavel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        countTextLavel.text = String(countInt)
    }

    @IBAction func didTapCountUpButton(_ sender: Any) {
        countInt += 2
        countTextLavel.text = String(countInt)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToThirdVC" {
            let nextVC = segue.destination as! ThirdViewController
            nextVC.countInt = countInt
        }
    }
    
    @IBAction func exitFromThirdVC(segue: UIStoryboardSegue){
        let nextVC = segue.source as! ThirdViewController
        countInt = nextVC.countInt
        countTextLavel.text = String(countInt)
    }

}
