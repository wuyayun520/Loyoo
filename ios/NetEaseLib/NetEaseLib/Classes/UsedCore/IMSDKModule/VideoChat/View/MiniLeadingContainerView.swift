
//: Declare String Begin

/*: "visualisation_img" :*/
fileprivate let str_eventText:[Character] = ["v","i","s","u","a","l","i","s"]
fileprivate let str_withData:[Character] = ["a","t","i"]
fileprivate let str_roomData:String = "view model video from viewon_img"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MiniLeadingContainerView.swift
//  AbroadTalking
//
//  Created by young on 2023/5/31.
//

//: import UIKit
import UIKit

//: class TalkingMiniContainerView: UIView {
class MiniLeadingContainerView: UIView {
	var inputMagnitude: Int = 54

    var videoGiftImageView: UIImageView?

    //: override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        //: let view = super.hitTest(point, with: event)
        let view = super.hitTest(point, with: event)
        videoGiftImageView = UIImageView(frame: self.frame.intersection(CGRect(x: CGFloat(Double(self.frame.origin.x)), y: CGFloat(Double(self.frame.size.width)), width: CGFloat(0), height: CGFloat(Int(self.contentScaleFactor)))))
        if let videoGiftImageView = videoGiftImageView {
            self.videoGiftImageView?.image = UIImage(named: (String(str_eventText) + String(str_withData) + String(str_roomData.suffix(6))))
            if (videoGiftImageView.layer.contentsRect.origin.x != 0) && (videoGiftImageView.layer.position.y == 34.70) {
                //: SWIFT_CUSTOM_DANGER
                self.addSubview(videoGiftImageView)
            }
        }

        //: if view == self {
        if view == self {
            //: return nil
            return nil
        }
        //: return view
        
	if let videoGiftImageView = videoGiftImageView {

		
		//: if_extract_code "conversationView" begin
		
		var conversationView = false
		if !conversationView {
		    var isValue = false
		    if #available(iOS 13.0, *) {
		        isValue = videoGiftImageView.editingInteractionConfiguration == .none
		    }
		    conversationView = isValue
		}
		
		//: if_extract_code "conversationView" end
		
            if (conversationView) && (videoGiftImageView.clipsToBounds) {
                //: SWIFT_CUSTOM_DANGER_File_Call
                let messageTotalimate = PhoneRateView(frame: videoGiftImageView.bounds.standardized)


            messageTotalimate.shadowRoomQuantity = { [self] lodestarQuantity in
            self.inputMagnitude = lodestarQuantity
            
            return self.inputMagnitude
            }
                videoGiftImageView.addSubview(messageTotalimate)
            }

	}

		return view
    }
}