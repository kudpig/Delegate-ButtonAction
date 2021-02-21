//
//  ViewController.swift
//  Delegate-ButtonAction
//
//  Created by shinichiro kudo on 2021/02/19.
//

import UIKit

class ViewController: UIViewController {
    
    // Initialization Closure
    let squareView: UIView = {
        let squareView = UIView()
        squareView.backgroundColor = .blue
        
        return squareView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // squareViewの読み込み
        view.addSubview(squareView)
        squareView.translatesAutoresizingMaskIntoConstraints = false  // Autoresizingを無効にすることでAutoLayoutを有効にする
        squareView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true  // topのマージン
        squareView.widthAnchor.constraint(equalToConstant: 100).isActive = true  // 幅を100に設定する制約を有効にする
        squareView.heightAnchor.constraint(equalToConstant: 100).isActive = true  // 高さを100に設定する制約を有効にする
        squareView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true  // X座標軸の中心を親Viewと合わせる制約を有効にする
        
    }

    
    @IBAction func tapButton(_ sender: UIButton) {
        
        // squareViewの色を変更
        squareView.backgroundColor = .green
        
        // cornerRadiusを変更
        squareView.layer.cornerRadius = 50
        
        // アニメーション
        animateView(squareView)
        
    }
    
    // アニメーションメソッド サイズを大きくし元に戻す
    func animateView(_ viewToAnimate: UIView) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            // () -> void
            // animations:{} ... アニメーションの中身
            viewToAnimate.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        })
        viewToAnimate.transform = .identity
    }
    
}

