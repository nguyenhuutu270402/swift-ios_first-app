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
        let myLabel = UILabel()
        myLabel.text = "My label Ví dụ, nếu bạn muốn đặt chiều dài của một view bằng với chiều rộng của một view khác, bạn "
        myLabel.textColor = UIColor.blue
        myLabel.textAlignment = .center
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.numberOfLines = 0

        // Add label to view
        self.view.addSubview(myLabel)

        // Add constraints to label
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            myLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 100),
            myLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70),
           
        ])



//        tao button
        let okButton = UIButton(frame: CGRect(x: 150, y: 300, width: 100, height: 50))
        okButton.setTitle("OK", for: .normal)
        okButton.setTitleColor(UIColor.green, for: .normal)
        okButton.setTitleColor(UIColor.red, for: .highlighted)
        okButton.backgroundColor = UIColor.gray
        okButton.layer.cornerRadius = 10
        okButton.addTarget(self, action: #selector(okButton_clicked), for: .touchUpInside)
        self.view.addSubview(okButton)
        
        myImage.layer.cornerRadius = 10
//        myImage.image = UIImage(data: try! Data(contentsOf: URL(string: "https://bizweb.dktcdn.net/100/303/962/files/87126502-2509242206005371-2073523065622364160-n-f697e400-e8b2-4bb1-9698-d00b50b2d9c3.jpg?v=1627804121650")!))
        if let url = URL(string: "https://bizweb.dktcdn.net/100/303/962/files/87126502-2509242206005371-2073523065622364160-n-f697e400-e8b2-4bb1-9698-d00b50b2d9c3.jpg?v=1627804121650") {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                DispatchQueue.main.async {
                    self.myImage.image = UIImage(data: data!)
                }
            }
            task.resume()
        }

    }
    
    
    
    
    

/*
 
 */
}

