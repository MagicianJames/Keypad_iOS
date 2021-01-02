//
//  VoiceMailViewController.swift
//  Key pad
//
//  Created by James S on 23/12/2563 BE.
//

import UIKit

class VoiceMailViewController: UIViewController {
    
    @IBOutlet weak var voiceMail: UIButton!
    
    private func border() {
        voiceMail.layer.cornerRadius = 5
        voiceMail.layer.borderWidth = 1
        voiceMail.layer.borderColor = UIColor.systemGray3.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        border()

    }
}
