//
//  ViewController.swift
//  fist_app
//
//  Created by Thien on 25/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func myButon(_ sender: Any) {
        let txt = myTextField.text ?? ""
        print("myButton Nhan neffffff" + txt )
    }
    @objc func okButton_clicked(){
        //1 get url string
        let urlString = "https://cdn.baoquocte.vn/stores/news_dataimages/nguyennga/012022/19/13/nga-chu-meo-khong-lo-khi-moi-hon-2-tuoi-da-nang-125-kg.jpg?rt=20220119133733"
        //2 URL
        let url = URL(string: urlString)
        //3 get data from url
        let imgData = try! Data(contentsOf: url!)
        //4 gan data vao trong imageview
        myImage.image = UIImage(data: imgData)
        print("okButton nhan dayyyy")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tao text label
        let myLabel = UILabel(frame: CGRect(x: 150, y: 100, width: 100, height: 30))
        myLabel.text="My label"
        myLabel.textColor = UIColor.blue
        myLabel.textAlignment = .center
        self.view.addSubview(myLabel)
        
//        tao button
        let okButton = UIButton(frame: CGRect(x: 150, y: 300, width: 100, height: 50))
        okButton.setTitle("OK", for: .normal)
        okButton.setTitleColor(UIColor.green, for: .normal)
        okButton.setTitleColor(UIColor.red, for: .highlighted)
        okButton.backgroundColor = UIColor.gray
        okButton.layer.cornerRadius = 10
        okButton.addTarget(self, action: #selector(okButton_clicked), for: .touchUpInside)
        self.view.addSubview(okButton)
    }
    
    
    
    
    

/*
 
 */
}

