//
//  Util.swift
//  Ind03_Bernius_Paul
//
//  Created by Paul Bernius on 4/5/22.
//

import UIKit

fileprivate var aView : UIView?

extension UIViewController {
    
    // This two methods are referenced in "Reference 1"
    
    
    /*
     This swift file extends UIViewController to add
     the spinner function to all view controllers.
     This way, inside any view controller, I can type
     self.showSpinner() and the spinner will start
     animating. Then, I can type, self.removeSpinner
     to remove the spinner.
     
     Again, because I extended UIViewController, these
     two functions can be used in any view controller.
     */
    
    // Method to show the spinner
    func showSpinner() {
        aView = UIView(frame: self.view.bounds)
        let ai = UIActivityIndicatorView(style: .large)
        ai.center = aView!.center
        ai.startAnimating()
        aView?.addSubview(ai)
        self.view.addSubview(aView!)
    }
    
    // Method to remove the spinner
    func removeSpinner() {
        aView?.removeFromSuperview()
        aView = nil
    }
    
}
