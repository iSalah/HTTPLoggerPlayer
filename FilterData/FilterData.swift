//
//  FilterData.swift
//  HTTPLoggerPlayer
//
//  Created by Salah on 2017-06-26.
//  Copyright © 2017 DevSK. All rights reserved.
//

import NetworkExtension

class FilterData: NEFilterDataProvider {
    
    override func handleNewFlow(_ flow: NEFilterFlow) -> NEFilterNewFlowVerdict {
        let url = flow.url?.absoluteString ?? ""
        NSLog("FitlerData HandleNewFlow URL: \(url)")
        return NEFilterNewFlowVerdict.allow()
    }

}
