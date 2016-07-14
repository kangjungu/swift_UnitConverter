//
//  ViewController.swift
//  UnitConverter
//
//  Created by JHJG on 2016. 7. 4..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tempText: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //텍스트 필드에서 return 눌렀을때 키보드 숨기기
    @IBAction func textFieldReturn(sender: AnyObject) {
        //firstResponder는 사용자가 현재 작동하는 객체(여기서는 키보드)
        sender.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func convertTemp(sender: AnyObject) {
        //sender : 이 메서드를 호출하는 객체(여기에서는 버튼 객체)
        
        if let fahrenheit = Double(tempText.text!) {
            let celsius = (fahrenheit - 32)/1.8
            let resultText = "Celsius \(celsius)"
            resultLabel.text = resultText
        }
    }
    
    //백그라운드 클릭시 키보드 숨기기
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        tempText.endEditing(true)
    }

}

