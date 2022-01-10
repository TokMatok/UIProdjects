//
//  ViewController.swift
//  UIScrollView
//
//  Created by Ярослав on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var newScrollView = UIScrollView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstImage = UIImage(named: "deniska")
        let secondImage = UIImage(named: "deniska2")
        let thirdImage = UIImage(named: "sosiska")
        
        let scrollViewRect = view.bounds
        
        //create scroll
        newScrollView = UIScrollView(frame: scrollViewRect)
        newScrollView.isPagingEnabled = false
        newScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        view.addSubview(newScrollView)
        
        //create image
        var ImageViewRect = view.bounds
        let firstImageView = self.newImageViewWithImage(paramImage: firstImage!, paramFrame: ImageViewRect)
        newScrollView.addSubview(firstImageView)
        //next page
        ImageViewRect.origin.x += ImageViewRect.size.width
        let secondImageView = newImageViewWithImage(paramImage: secondImage!, paramFrame: ImageViewRect)
        newScrollView.addSubview(secondImageView)
        //next page
        ImageViewRect.origin.x += ImageViewRect.size.width
        let thirdImageView = newImageViewWithImage(paramImage: thirdImage!, paramFrame: ImageViewRect)
        newScrollView.addSubview(thirdImageView)
    }
    
    func newImageViewWithImage(paramImage : UIImage, paramFrame : CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}

