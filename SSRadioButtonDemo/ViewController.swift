//
//  ViewController.swift
//  SSRadioButtonDemo
//
//  Created by Dxc_iOS on 2018/2/6.
//  Copyright © 2018年 代星创. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //SSRadioButtonsController 单选
    var radioButtonController: SSRadioButtonsController!
    var smallBtn: UIButton!//淡香
    var normBtn: UIButton!//标准
    var aromaBtn: UIButton!//浓香
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

        smallBtn = UIButton.init(type: .custom)
        smallBtn.frame = CGRect.init(x: 30, y: 100, width: 80, height: 40)
        view.addSubview(smallBtn)
        smallBtn.setTitle("淡香", for: .normal)
        smallBtn.setTitleColor(RGB(95, 195, 102), for: .normal)
        smallBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        smallBtn.setImage(UIImage.init(named: "checked_unchecked"), for: .normal)
        smallBtn.setImage(UIImage.init(named: "checked"), for: .selected)
        smallBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        smallBtn.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 10, bottom: 0, right: 0)
        
        normBtn = UIButton.init()
        normBtn.frame = CGRect.init(x: 100, y: 100, width: 80, height: 40)
        view.addSubview(normBtn)
       
        normBtn.setTitle("标准", for: .normal)
        normBtn.setTitleColor(RGB(95, 195, 102), for: .normal)
        normBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        normBtn.setImage(UIImage.init(named: "checked_unchecked"), for: .normal)
        normBtn.setImage(UIImage.init(named: "checked"), for: .selected)
        normBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        normBtn.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 10, bottom: 0, right: 0)
        //
        aromaBtn = UIButton.init(type: .system)
        aromaBtn.frame = CGRect.init(x: 180, y: 100, width: 80, height: 40)
        view.addSubview(aromaBtn)
      
        aromaBtn.setTitle("浓香", for: .normal)
        aromaBtn.setTitleColor(RGB(95, 195, 102), for: .normal)
        //        aromaBtn.setTitleColor(RGB(95, 195, 102), for: .selected)
        //        aromaBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        //        aromaBtn.setImage(UIImage.init(named: "checked_unchecked2"), for: .normal)
        //        aromaBtn.setImage(UIImage.init(named: "checked2"), for: .selected)
        //        aromaBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        //        aromaBtn.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 10, bottom: 0, right: 0)
        //        aromaBtn.backgroundColor = UIColor.white
        //        aromaBtn.layer.borderWidth = 1
        //        aromaBtn.layer.cornerRadius = 6
        //        aromaBtn.layer.borderColor  = UIColor.gray.cgColor
        aromaBtn.tintColor = RGB(95, 195, 102)
        
        
        
        
        
        radioButtonController = SSRadioButtonsController(buttons: smallBtn,normBtn,aromaBtn)
        radioButtonController!.delegate = self
        radioButtonController!.shouldLetDeSelect = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: SSRadioButtonControllerDelegate{
    func didSelectButton(selectedButton: UIButton?) {
        print(" \(String(describing: selectedButton?.titleLabel?.text))")
    }
    
}

