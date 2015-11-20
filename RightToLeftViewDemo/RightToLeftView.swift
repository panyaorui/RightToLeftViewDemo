//
//  RightToLeftView.swift
//  Neighbour
//
//  Created by ray on 15/11/2.
//  Copyright © 2015年 ray. All rights reserved.
//

import UIKit

class RightToLeftView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    var contentFrame:CGRect!;
    
    var isShow:Bool = false;
    class func viewFromNibNamed()->RightToLeftView
    {
        let view:RightToLeftView = NSBundle.mainBundle().loadNibNamed("RightToLeftView", owner: self, options: nil)[0] as! RightToLeftView
        
        view.layer.cornerRadius = 5;
        view.layer.masksToBounds  = true;
        view.frame = CGRectMake(0, 0, 0, 0);
        return view;
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func layoutSubviews() {
        super.layoutSubviews();
    }
    func show(frame:CGRect)
   {
    isShow = true;
    if(self.contentFrame == nil)
    {
       self.contentFrame = self.contentView.frame;
      }
    self.frame = CGRectMake(frame.origin.x - self.contentFrame.width, frame.origin.y, self.contentFrame.width, self.contentFrame.height);
    
     self.contentView.frame = CGRectMake(frame.origin.x, frame.origin.y, 0, self.contentFrame.height);
    
      UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
         self.contentView.frame = CGRectMake(frame.origin.x - self.contentFrame.width, frame.origin.y, self.contentFrame.width, self.contentFrame.height);
        }) { (Bool) -> Void in
    }

    }
    func hidden()
    {
            isShow = false;
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.contentView.frame = CGRectMake(self.contentView.frame.origin.x + self.contentFrame.width, self.contentView.frame.origin.y, 0, self.contentFrame.height);
            }) { (Bool) -> Void in
                self.frame = CGRectMake(0, 0, 0, 0);
          }
    }
}
