//
//  RxTextViewDelegateProxy.swift
//  RxCocoa
//
//  Created by Yuta ToKoRo on 7/19/15.
//  Copyright (c) 2015 Krunoslav Zaher. All rights reserved.
//

#if os(iOS) || os(tvOS)

import Foundation
import UIKit
#if !RX_NO_MODULE
import RxSwift
#endif

/**
     For more information take a look at `DelegateProxyType`.
*/
public class RxTextViewDelegateProxy
    : RxScrollViewDelegateProxy
    , UITextViewDelegate {

    /**
     Typed parent object.
     */
    public weak private(set) var textView: UITextView?

    /**
     Initializes `RxTextViewDelegateProxy`

     - parameter parentObject: Parent object for delegate proxy.
     */
    public required init(parentObject: AnyObject) {
        self.textView = (parentObject as! UITextView)
        super.init(parentObject: parentObject)
    }
}

#endif
