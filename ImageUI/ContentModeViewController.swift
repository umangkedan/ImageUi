//
//  ContentModeViewController.swift
//  ImageUI
//
//  Created by Umang Kedan on 22/11/23.
//

import UIKit

class ContentModeViewController: UIViewController {
    
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var aspectFitImage: UIImageView!
    
    @IBOutlet weak var cutButton6: UIButton!
    @IBOutlet weak var cutButton5: UIButton!
    @IBOutlet weak var cutButton4: UIButton!
    @IBOutlet weak var cutButton3: UIButton!
    @IBOutlet weak var cutButton2: UIButton!
    @IBOutlet weak var cutButton1: UIButton!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var centreImage: UIImageView!
    @IBOutlet weak var aspectFillImage: UIImageView!
    
    @IBOutlet weak var noImageLabel6: UILabel!
    @IBOutlet weak var noImageLabel2: UILabel!
    @IBOutlet weak var noImageLabel4: UILabel!
    
    @IBOutlet weak var noImageLabel5: UILabel!
    @IBOutlet weak var noImageLabel3: UILabel!
    @IBOutlet weak var noImageLabel1: UILabel!
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var scaleToFitImage: UIImageView!
    @IBOutlet weak var selectPhotoButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setImagePicker()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "Name", message: "Enter your name", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Submit", style: .default) { _ in
            print("Submitted")
        }
        alert.addTextField { textField in
            print(textField.text)
            textField.delegate = self
        }
        
        alert.addAction(okayAction)
        self.present(alert, animated: true)

        
    }
    
    
    func setImagePicker(){
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        aspectFitImage.backgroundColor = .black
        aspectFitImage.image = UIImage(named: "animal")
        aspectFillImage.image = UIImage(named: "animal")
        centreImage.image = UIImage(named: "animal")
        leftImage.image = UIImage(named: "animal")
        scaleToFitImage.image = UIImage(named: "animal")
        topImage.image = UIImage(named: "animal")
        
    }
    
    @IBAction func selectPhotoAction(_ sender: Any) {
        noImageLabel1.isHidden = true
        noImageLabel2.isHidden = true
        noImageLabel3.isHidden = true
        noImageLabel4.isHidden = true
        noImageLabel5.isHidden = true
        noImageLabel6.isHidden = true
        let alert = UIAlertController(title: "Upload Image", message: "Please upload your image from", preferredStyle: .actionSheet)
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
        noImageLabel1.isHidden = true
        alert.addAction(cameraAction)
        alert.addAction(galleryAction)
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func cutAction1(_ sender: Any) {
        let alert = UIAlertController(title: "Are You Sure", message: "Do you want to delete the photo", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
            print("Alert Cancelled")
        })
//        let yesAction = UIAlertAction(title: "Yes", style: .default, handler: {_ in
//            self.aspectFitImage.image = UIImage(named: "black")
//            self.noImageLabel1.isHidden = false
//        })
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: {_ in
            print("Delete The photograph")
            self.aspectFitImage.image = UIImage(named: "black")
            self.noImageLabel1.isHidden = false
        })
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        self.present(alert, animated: true)
       
    }
    @IBAction func cutAction2(_ sender: Any)
    {
        let alert = UIAlertController(title: "Are You Sure", message: "Do you want to delete the photo", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Alert Canceled")
        })
        let yesAction = UIAlertAction(title: "Yes", style: .default, handler: {_ in
            self.aspectFillImage.image = UIImage(named: "black")
            self.noImageLabel2.isHidden = false
        })
    }

        @IBAction func cutAction3(_ sender: Any) {
            let alert = UIAlertController(title: "Are You Sure", message: "Do you want to delete the photo", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                print("Alert Canceled")
            })
            let yesAction = UIAlertAction(title: "Yes", style: .default, handler: {_ in
                self.centreImage.image = UIImage(named: "black")
                self.noImageLabel3.isHidden = false
            })
            
        }
        
        @IBAction func cutAction4(_ sender: Any) {
            let alert = UIAlertController(title: "Are YOu Sure ", message: "Do You Want to delete the photo", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
                print("Alert Cancel ")
            })
            let yesAction = UIAlertAction(title: "Yes", style: .default, handler: {_ in
                self.leftImage.image = UIImage(named: "black")
                self.noImageLabel4.isHidden = false
            })
        }
        
        @IBAction func cutAction5(_ sender: Any) {
            let alert = UIAlertController(title: "Are You Sure ", message: "Do you want to delete the photo ", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
                print("alert cancelled")
            })
            let yesAction = UIAlertAction(title: "Yes ", style: .default, handler: {_ in
                self.scaleToFitImage.image = UIImage(named: "black")
                self.noImageLabel5.isHidden = false
            })
            
        }
        
        @IBAction func cutAction6(_ sender: Any) {
            let alert = UIAlertController(title: "Are You Sure ", message: "Do you Want to delete the photo ", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
                print("Alert cancelled ")})
            let yesAction = UIAlertAction(title: "Yes ", style: .default, handler: {_ in
                self.topImage.image = UIImage(named: "black")
                self.noImageLabel6.isHidden = false})
        }
        
    }

extension ContentModeViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("cancel")
        self.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("finish")
        if let image = info[.editedImage]as? UIImage{
            aspectFitImage.image = image
            aspectFillImage.image = image
            centreImage.image = image
            leftImage.image = image
            scaleToFitImage.image = image
            topImage.image = image
            self.dismiss(animated: true)
            
        }
    }
}
extension ContentModeViewController : UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("start editing")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Begin editing")
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("end editing")
        return true
    
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("ended editing")
        print("Entered Name is \(textField.text ?? "")")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("shounld return")
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("should clear")
        return true
    }
}


