//
//  AddMovieVC.swift
//  Fave-Movies
//
//  Created by Mac Owner on 7/26/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var pickedImgView: UIImageView!
    @IBOutlet weak var givenTitle: UITextField!
    @IBOutlet weak var givenDesc: UITextField!
    @IBOutlet weak var givenUrl: UITextField!
    @IBOutlet weak var givenPlotDesc: UITextField!
    
    
    var imagePicker: UIImagePickerController!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        pickedImgView.layer.cornerRadius = 4.0
        pickedImgView.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        pickedImgView.image = image
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func addImgPressed(sender: AnyObject) {
        // Load the image picker
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func submitBtnPressed(sender: AnyObject) {
        if let title = givenTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movies", inManagedObjectContext: context)!
            let movie = Movies(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = title
            movie.desc = givenDesc.text
            movie.url = givenUrl.text
            movie.plot = givenPlotDesc.text
            movie.setMovieImage(pickedImgView.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie.")
            }
            
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
}
