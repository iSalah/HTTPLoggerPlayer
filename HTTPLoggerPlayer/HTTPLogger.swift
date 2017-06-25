//
//  HTTPLogger.swift
//  HTTPLoggerPlayer
//
//  Created by Salah on 2017-06-26.
//  Copyright © 2017 DevSK. All rights reserved.
//

import Foundation

class HTTPLogger: URLProtocol {

    override class func canInit(with request: URLRequest) -> Bool {
        let url = request.url?.absoluteString ?? ""
        NSLog("Intercepted request with url: \(url)")
        return true
    }

}
