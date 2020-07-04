//
//  ViewController.swift
//  ｙ
//
//  Created by a on 2020/07/04.
//  Copyright © 2020 a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countlabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //らべる0に表示
        countlabel.text="0"
    }

    
    
    
    @IBAction func plus(_ sender: Any) {
   
        count = count + 1
       
        countlabel.text=String(count)
        if count >= 10  {
               changeColor()
               }
        
    }
    

    

    @IBAction func minus(_ sender: Any) {
    
        count = count - 1
               
               countlabel.text=String(count)
        
           
        if count <= 0  {
        resetColor()
        }
        
    }
    
    
    func changeColor(){
        countlabel.textColor = .red
    }
    func resetColor(){
           countlabel.textColor = .white
       }

    
}



