//
//  ProxyProvider.swift
//  HTTPLoggerPlayer
//
//  Created by Salah on 2017-06-26.
//  Copyright © 2017 DevSK. All rights reserved.
//

import NetworkExtension

class NetworkProxyProvider: NEAppProxyProvider {
    
    override func startProxy(options: [String : Any]?, completionHandler: @escaping (Error?) -> Void) {
        NSLog("Proxy provider -- start proxy")
    }
    
    /// Begin the process of stopping the tunnel.
    override func stopProxy(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void) {
        NSLog("Proxy provider -- stop proxy")
    }
    
    /// Handle a new flow of network data created by an application.
    override func handleNewFlow(_ flow: (NEAppProxyFlow?)) -> Bool {
        NSLog("Proxy provider -- handle new flow")
        return false
    }
    
}
