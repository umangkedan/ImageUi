//
//  ImageViewController.swift
//  ImageUI
//
//  Created by Umang Kedan on 21/11/23.
//

import UIKit

class ImageViewController: UIViewController {

    let imageArray = [UIImage(named: "cat1") ?? UIImage(),
                      UIImage(named: "cat2") ?? UIImage(),
                      UIImage(named: "cat3") ?? UIImage(),UIImage(named: "cat4") ?? UIImage(),UIImage(named: "cat5") ?? UIImage(),UIImage(named: "cat6") ?? UIImage()]
   
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageView()
       // createNewImageView()
        
    }
    
    func createNewImageView() {
        let newImageView = UIImageView()
        newImageView.frame = CGRect(x: 40, y: 40, width: 200, height: 200)
        newImageView.image = UIImage(named: "animal")
        newImageView.backgroundColor = .yellow
        newImageView.contentMode = .scaleAspectFit
        self.view.addSubview(newImageView)
    }
    
    func setImageView(){
        imageView.image = UIImage(named: "lady")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .lightGray
        imageView.layer.cornerRadius = imageView.frame.height / 2
        
        
        imageView.animationImages = imageArray
        imageView.animationDuration = 2
        imageView.animationRepeatCount = 3
        imageView.startAnimating()
    }
    

}
