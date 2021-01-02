//
//  KeypadViewController.swift
//  Key pad
//
//  Created by James S on 21/12/2563 BE.
//

import UIKit

class KeypadViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var resultNumber: UILabel!
    @IBOutlet weak var addNumber: UIButton!
    @IBOutlet weak var delete: UIButton!
    
    var isFormated = false
    var isDeletedFormated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        invisible()
        resultNumber.text = ""
        
    }
    
    private func visible() {
        addNumber.isHidden = false
        delete.isHidden = false
        
    }
    
    private func invisible() {
        addNumber.isHidden = true
        delete.isHidden = true
        
    }
    
    @IBAction func pressedNumber(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        
        print("Successed Number")
        visible()
        resultNumber!.text! += String(tag)

        let lenth = resultNumber.text?.count
        
        if lenth == 3 {
            resultNumber.text!.insert("-", at: resultNumber.text!.index(resultNumber.text!.startIndex, offsetBy: 3))
            
        } else if lenth == 7 {
            resultNumber.text!.insert("-", at: resultNumber.text!.index(resultNumber.text!.startIndex, offsetBy: 7))
            
        } else if lenth == 12 && !isFormated {
            
            let first = resultNumber.text!.index(resultNumber.text!.startIndex, offsetBy: 3)
            let second = resultNumber.text!.index(resultNumber.text!.startIndex, offsetBy: 6)
            
            resultNumber.text!.remove(at: first)
            resultNumber.text!.remove(at: second)
            
            isFormated = true
            isDeletedFormated = false
        }
    }

    @IBAction func pressedOperator(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        print("Successed Operator")
        visible()
        
        switch tag {
        case 11:
            resultNumber.text! += "*"
            
        default:
            resultNumber.text! += "#"
            
        }
    }
    
    @IBAction func removedNumber(_ sender: Any) {
        print("Removed")
        
        let lenth = resultNumber.text?.count
        
        if resultNumber.text != "" {
            resultNumber.text?.removeLast()
        }
        
        if resultNumber.text!.isEmpty {
            invisible()
        }
        
        if lenth! == 10 && !isDeletedFormated {
            
            let first = resultNumber.text!.index(resultNumber.text!.startIndex, offsetBy: 3)
            let second = resultNumber.text!.index(resultNumber.text!.startIndex, offsetBy: 7)
            
            resultNumber.text!.insert("-", at: first)
            resultNumber.text!.insert("-", at: second)
            
            isFormated = false
            isDeletedFormated = true
        }
    }
    
    @IBAction func pressedAddNumber(_ sender: AnyObject) {
        print("Click Add Numeber")
    }
    
    private func setUIButton() {
        let button = UIButton(frame: CGRect(x: 43, y: 90, width: 90, height: 50))
        button.layer.cornerRadius = 45.0
        button.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 50))
        title.text = "2"
        title.textAlignment = .center
        title.font = UIFont.systemFont(ofSize: 40)
        button.addSubview(title)
        
        let subtitle = UILabel(frame: CGRect(x: 0, y: 43, width: 90, height: 40))
        subtitle.text = "A B C"
        subtitle.textAlignment = .center
        subtitle.font = UIFont.systemFont(ofSize: 14)
        button.addSubview(subtitle)
        
        view.addSubview(button)
    }
}
   
