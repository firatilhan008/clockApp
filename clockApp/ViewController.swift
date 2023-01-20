//
//  ViewController.swift
//  clockApp
//
//  Created by Fırat İlhan on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saniyeLabel: UILabel!
    @IBOutlet weak var dakikaLabel: UILabel!
    @IBOutlet weak var saatLabel: UILabel!
    
    var zaman = Timer()
    var saniye = 0
    var dakika = 0
    var saat = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        saniyeLabel.text = String(saniye)
        dakikaLabel.text = String(dakika)
        saatLabel.text = String(saat)
        zaman = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(zamanSayac), userInfo: self, repeats: true)
        
    }
    @objc func zamanSayac() {

        saniye += 1
        saniyeLabel.text = String(saniye)
        
        
        if saniye == 60 {
            dakikaFunc()
        }
        
        if dakika == 60 {
            saatFunc()
        }
        if saat == 23 && dakika == 59 && saniye == 59 {
            resetFunc()
        }
        
    }
    
    func dakikaFunc() {
        saniye = 0
        saniyeLabel.text = String(saniye)
        dakika += 1
        dakikaLabel.text = String(dakika)
    }
    func saatFunc() {
        saniye = 0
        saniyeLabel.text = String(saniye)
        dakika = 0
        dakikaLabel.text = String(dakika)
        saat += 1
        saatLabel.text = String(saat)
        
    }
    func resetFunc() {
        saat = 0
        dakika = 0
        saniye = 0
        saniyeLabel.text = String(saniye)
        dakikaLabel.text = String(dakika)
        saatLabel.text = String(saat)
        

        
    }


}

