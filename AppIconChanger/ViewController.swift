//
//  ViewController.swift
//  AppIconChanger
//
//  Created by Emre Karataş on 29.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var birthdayBtn: UIButton!
    @IBOutlet weak var holidayBtn: UIButton!
    @IBOutlet weak var newyearBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdayBtn.addTarget(self, action: #selector(didTapAppIcon(_:)), for: .touchUpInside)
        holidayBtn.addTarget(self, action: #selector(didTapAppIcon(_:)), for: .touchUpInside)
        newyearBtn.addTarget(self, action: #selector(didTapAppIcon(_:)), for: .touchUpInside)
        
    }

   
    @objc private func didTapAppIcon(_ sender: UIButton){
        if(sender.tag == 1){
            UIApplication.shared.setAlternateIconName("holiday"){ error in
                guard error == nil else{
                    print("Something went wrong1")
                    return
                }
                print("icon updated")
                
            }
        }
        else if(sender.tag == 2){
            UIApplication.shared.setAlternateIconName("birthday"){ error in
                guard error == nil else{
                    print("Something went wrong2")
                    return
                }
                print("icon updated")
                
            }
        }
        else if(sender.tag == 3){
            UIApplication.shared.setAlternateIconName("newyear"){ error in
                guard error == nil else{
                    print("Something went wrong3")
                    return
                }
                print("icon updated")
                
            }
        }
    }
}

