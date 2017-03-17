//
//  ViewController.swift
//  SampleAnimation
//
//  Created by Kei on 2017/03/17.
//  Copyright © 2017年 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapStartButton(_ sender: Any) {
        // ビューの角を丸める処理をアニメーションで表現する
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        // 設定前の値は0
        animation.fromValue = 0
        // 設定後の値は20
        animation.toValue = 20
        // アニメーションの時間は1秒
        animation.duration = 1
        // アニメーションをレイヤーに追加する
        targetView.layer.add(animation, forKey: "cornerRadius")
        // 変更後も角丸を維持
        targetView.layer.cornerRadius = 20
    }

}

