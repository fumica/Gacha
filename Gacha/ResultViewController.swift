//
//  ResultViewController.swift
//  Gacha
//
//  Created by 河野文香 on 2021/05/11.
//

import UIKit

class ResultViewController: UIViewController {

    //乱数入れるためのInt型の変数
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //0~9までのランダムな数
        number = Int.random(in: 0...9)
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010.png")
            backgroundImageView.image = UIImage(named: "bg_gold@2x.png")
        }else if number > 7 {
            monsterImageView.image = UIImage(named: "monster006.png")
            backgroundImageView.image = UIImage(named: "bg_red@2x.png")
        }else {
            monsterImageView.image = UIImage(named: "monster003.png")
            backgroundImageView.image = UIImage(named: "bg_blue@2x.png")
        }
    }
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
