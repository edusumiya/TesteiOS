//
//  ContactFormResultViewController.swift
//  Teste Santander
//
//  Created by Eduardo Alves Sumiya on 28/04/20.
//  Copyright © 2020 Eduardo Alves Sumiya. All rights reserved.
//

import UIKit
protocol ContactFormResultProtocol {
    /// Requests previous form for new message
    func sendNewMessage()
}

class ContactFormResultViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var lblSecondaryTitle: UILabel!
    @IBOutlet weak var lblMainTitle: UILabel!
    @IBOutlet weak var btnSendNewMessage: UIButton!
    
    // MARK: - Delegate
    var delegate: ContactFormResultProtocol?
    
    // MARK: - Actions
    @IBAction func sendNewMessage(_ sender: Any) {
        delegate?.sendNewMessage()
    }
}
