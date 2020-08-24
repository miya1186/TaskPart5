//
//  ViewController.swift
//  TaskPart5
//
//  Created by miyazawaryohei on 2020/08/24.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //private追加
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textFiled2: UITextField!
    @IBOutlet private var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calcButton(_ sender: Any) {
        check()
        
        let num1 = Float(textField1.text!) ?? 0
        let num2 = Float(textFiled2.text!) ?? 0
        
        if num2 == 0{
            alert(message: "割る数には0を入力していでください")
        }else{
            resultLabel.text = String(num1 / num2)
        }
    }
    
    func alert(message:String){
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert,animated:true ,completion: nil)
    }
    
    func check(){
        if textField1.text == ""{
            alert(message: "割られる数を入力してください")
        }
        if textFiled2.text == "" {
            alert(message: "割る数を入力してください")
        }
    }
    
}

