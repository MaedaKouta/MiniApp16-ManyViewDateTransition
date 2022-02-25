//
//  ViewController.swift
//  MiniApp16-ManyViewDateTransition
//
//  Created by 前田航汰 on 2022/02/24.
//

import UIKit

class ViewController: UIViewController {

    var countInt = 0
    @IBOutlet weak var countTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapCountUpButton(_ sender: Any) {
        countInt += 1
        countTextLabel.text = String(countInt)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToSecondVC" {
            let nextVC = segue.destination as! secondViewController
            nextVC.countInt = countInt
        }
    }

    @IBAction func exitFromSecondVC(segue: UIStoryboardSegue){
        let nextVC = segue.source as! secondViewController
        countInt = nextVC.countInt
        countTextLabel.text = String(countInt)
    }

}

