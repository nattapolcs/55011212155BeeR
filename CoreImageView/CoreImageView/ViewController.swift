//
//  ViewController.swift
//  CoreImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary
import MobileCoreServices

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var UImageCiew: UIImageView!
    
    @IBOutlet weak var amountSlider: UISlider!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePicker: UIImagePickerController!
    var newMedia: Bool?
    
    @IBAction func mountSliderValueChanged(sender: UISlider) {
        
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg, scale: 1, orientation: orientation)
        self.imageView.image = newImage
        
        
    }
    @IBAction func loadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
    }

    
    @IBAction func savePhoto(sender: AnyObject) {
       /* //1
        let imageToSave = filter.outputImage
        //2
        let softwareContext = CIContext(options: [kCIContextUseSoftwareRenderer: true])
        //3
        let cgimg = softwareContext.createCGImage(imageToSave, fromRect: imageToSave.extent())
        //4
        let library = ALAssetsLibrary()
        library.writeImageToSavedPhotosAlbum(cgimg, metadata: imageToSave.properties(), completionBlock: nil)*/
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        
        newMedia = true
        
    }
    
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up //new
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        
        //let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
        // beginImage = CIImage(contentsOfURL: fileURL)
        
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        context = CIContext(options: nil)
        
        println("\(beginImage)")
        // let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        // let newImage = UIImage(CGImage: cgimg)
        //self.UIImageCiew.image = newImage
        //self.logAllFilter()
        
        
    }
    func logAllfilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties{
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }

    func oldPhoto(img: CIImage, withAmount intensity: Float) -> CIImage {
        //1
        let sepia = CIFilter(name:"CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        //2
        let random = CIFilter(name:"CIRandomGenerator")
        
        //3
        let lighten = CIFilter(name:"CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        //4
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        //5
        let composite = CIFilter(name:"CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        //6
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputRadius")
        //7
        return vignette.outputImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: NSDictionary!) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImage = CIImage(image:gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        self.mountSliderValueChanged(amountSlider)
    }


}

