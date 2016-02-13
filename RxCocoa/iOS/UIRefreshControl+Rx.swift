//
//  UIRefreshControl+Rx.swift
//  RxCocoa
//
//  Created by Yosuke Ishikawa on 1/31/16.
//  Copyright © 2016 Krunoslav Zaher. All rights reserved.
//

#if os(iOS)
import UIKit

#if !RX_NO_MODULE
import RxSwift
#endif

extension UIRefreshControl {

    /**
    Bindable sink for `beginRefreshing()`, `endRefreshing()` methods.
    */
    public var rx_refreshing: AnyObserver<Bool> {
        return UIBindingObserver(UIElement: self) { refreshControl, refresh in
            if refresh {
                self.beginRefreshing()
            } else {
                self.endRefreshing()
            }
        }.asObserver()
    }

}

#endif
