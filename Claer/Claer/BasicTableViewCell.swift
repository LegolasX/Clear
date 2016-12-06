//
//  BasicTableViewCell.swift
//  Claer
//
//  Created by Legolas.Invoker on 2016/12/5.
//  Copyright © 2016年 Legolas.Invoker. All rights reserved.
//

import UIKit

class BasicTableViewCell: UITableViewCell ,UITextViewDelegate{

    override func awakeFromNib() {
        super.awakeFromNib()
        textView.inputView?.backgroundColor = UIColor.blue
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        textView.delegate = self
        // Configure the view for the selected state
    }
    var height : CGFloat = 0
    @IBOutlet weak var myBackgroundView: UIView!
    @IBOutlet weak var textView: UITextView!
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
        }
        if textView.contentSize.height != height {
            height = textView.contentSize.height
            print(height)
        }
        return true
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        print("endEdit")
        height = 0
    }


}
