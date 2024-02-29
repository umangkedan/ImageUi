//
//  ProfileImageViewController.swift
//  ImageUI
//
//  Created by Umang Kedan on 21/11/23.
//

import UIKit

class ProfileImageViewController: UIViewController {
    
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var gallerySelectButton: UIButton!
    let ImageArray = [UIImage(named: "cat1") ?? UIImage(),
                      UIImage(named: "cat2") ?? UIImage(),
                      UIImage(named: "cat3") ?? UIImage(),
                      UIImage(named: "cat4") ?? UIImage(),
                      UIImage(named: "cat5") ?? UIImage(),
                      UIImage(named: "cat6") ?? UIImage()]
    @IBOutlet weak var selectButton: UIButton!
    
    @IBOutlet weak var startButton: UIButton!

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var imageViewTop: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
setupImage()
        
    }
    func setupImage(){
        imageViewTop.image = UIImage(named: "bts")
        imageViewTop.layer.cornerRadius = imageViewTop.frame.height / 2
        startButton.layer.cornerRadius = 40
        stopButton.layer.cornerRadius = 40
        imageView1.image = UIImage(named:"hello")
        setImagePicker()
        
    }
    func setImagePicker(){
        imagePicker.delegate = self
        imagePicker.allowsEditing = true

    }
   
    @IBAction func startAnimation(_ sender: UIButton) {
        imageView1.animationImages = ImageArray
                imageView1.animationDuration = 6
                imageView1.animationRepeatCount = 3
                imageView1.startAnimating()
        
            startButton.isEnabled = false
            stopButton.isEnabled = true
        
    }
    
    @IBAction func selectImageFromGallery(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker,animated: true)
    }
    
    @IBAction func stopAction(_ sender: Any) {
        imageView1.stopAnimating()
           imageView1.image = UIImage(named: "bye")
        
        startButton.isEnabled = true
        stopButton.isEnabled = false
    }
    
    @IBAction func selectImage(_ sender: Any) { //imagePicker.sourceType = .camera
        //self.present(imagePicker, animated: true)
        
        let alert = UIAlertController(title: "Upload Image", message: "Please upload your image from", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Alert Canceled")
        })
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { _ in
            print("Camera Action")
            self.imagePicker.sourceType = .camera
            self.present(self.imagePicker,animated: true)
        })
        
        let galleryAction = UIAlertAction(title: "Gallery", style: .default, handler: {_ in
            print("Gallery action")
            self.imagePicker.sourceType = .photoLibrary
            self.present(self.imagePicker,animated: true)
        })
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive)
        
        
        alert.addAction(cameraAction)
        alert.addAction(galleryAction)
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        
        
        
        self.present(alert, animated: true)
        
        
    }
    
}
extension ProfileImageViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("cancel")
        self.dismiss(animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("finish")
        if let image = info[.editedImage] as? UIImage{
            imageViewTop.image = image
        }
    
        self.dismiss(animated: true)
    }
}
