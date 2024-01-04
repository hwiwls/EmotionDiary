//
//  ViewController.swift
//  EmotionDiary
//
//  Created by hwijinjeong on 1/2/24.
//

import UIKit

class ViewController: UIViewController {
    // 행복해
    @IBOutlet weak var happyBtn: UIButton!
    // 사랑해
    @IBOutlet weak var loveBtn: UIButton!
    // 좋아해
    @IBOutlet weak var likeBtn: UIButton!
    // 짜증나
    @IBOutlet weak var upsetBtn: UIButton!
    // 속상해
    @IBOutlet weak var distressedBtn: UIButton!
    // 잠이와
    @IBOutlet weak var sleepyBtn: UIButton!
    // 황당해
    @IBOutlet weak var ridiculousBtn: UIButton!
    // 쏘쏘야
    @IBOutlet weak var sosoBtn: UIButton!
    // 넘슬퍼
    @IBOutlet weak var sadBtn: UIButton!
    
   var countArr = [0, 0 ,0 ,0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        config()
    }
    
    func config() {
        happyBtn.tag = 0
        loveBtn.tag = 1
        likeBtn.tag = 2
        upsetBtn.tag = 3
        distressedBtn.tag = 4
        sleepyBtn.tag = 5
        ridiculousBtn.tag = 6
        sosoBtn.tag = 7
        sadBtn.tag = 8
        
        configBtn()
    }
    
    func configBtn() {
        setBtn(happyBtn, title: "행복해", image: "slime1")
        setBtn(loveBtn, title: "사랑해", image: "slime2")
        setBtn(likeBtn, title: "좋아해", image: "slime3")
        setBtn(upsetBtn, title: "짜증나", image: "slime4")
        setBtn(distressedBtn, title: "속상해", image: "slime5")
        setBtn(sleepyBtn, title: "잠이와", image: "slime6")
        setBtn(ridiculousBtn, title: "황당해", image: "slime7")
        setBtn(sosoBtn, title: "쏘쏘야", image: "slime8")
        setBtn(sadBtn, title: "넘슬퍼", image: "slime9")
        
        setNavigationItem()
    }
    
    func setBtn(_ button: UIButton, title: String, image: String) {
        var configuration = UIButton.Configuration.plain()
        
        let originalImage = UIImage(named: image)
        let resizedImage = originalImage?.resizeBtnImage(to: CGSize(width: 70, height: 70))
        configuration.image = resizedImage
        
        var titleAttr = AttributedString.init(title)
        titleAttr.font = .boldSystemFont(ofSize: 12.0)
        configuration.attributedTitle = titleAttr
        configuration.baseForegroundColor = UIColor.black
        configuration.imagePlacement = .top
        configuration.imagePadding = 10
        
        button.configuration = configuration
    }

    func setNavigationItem() {
        navigationItem.title = "감정 다이어리"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash")?.withRenderingMode(.alwaysTemplate), style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        countArr[sender.tag] += 1
        
        let buttons = [happyBtn, loveBtn, likeBtn, upsetBtn, distressedBtn, sleepyBtn, ridiculousBtn, sosoBtn, sadBtn]
            let titles = ["행복해", "사랑해", "좋아해", "짜증나", "속상해", "잠이와", "황당해", "쏘쏘야", "넘슬퍼"]
            let images = ["slime1", "slime2", "slime3", "slime4", "slime5", "slime6", "slime7", "slime8", "slime9"]

            for (index, button) in buttons.enumerated() {
                if let button = button {
                    var configuration = UIButton.Configuration.plain()
                    var titleAttr = AttributedString("\(titles[index])\(countArr[index])")
                    titleAttr.font = .boldSystemFont(ofSize: 12.0)
                    configuration.attributedTitle = titleAttr

                    let originalImage = UIImage(named: images[index])
                    let resizedImage = originalImage?.resizeBtnImage(to: CGSize(width: 70, height: 70))
                    configuration.image = resizedImage
                    configuration.baseForegroundColor = UIColor.black
                    configuration.imagePlacement = .top
                    configuration.imagePadding = 10

                    button.configuration = configuration
                }
            }
        
        
        
    }
    
    
}

