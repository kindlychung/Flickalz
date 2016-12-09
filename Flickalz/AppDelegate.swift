//
//  AppDelegate.swift
//  Flickalz
//
//  Created by Kaiyin Zhong on 12/9/16.
//  Copyright © 2016 vu.co.kaiyin. All rights reserved.
//

import Cocoa
import Foundation

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        lbl.drawsBackground = true
        lbl.backgroundColor = NSColor.black
        Timer.scheduledTimer(withTimeInterval: 1.0/Double(hz), repeats: true, block: toggleBackground)
    }
    
    var hz = 40
    
    func toggleBackground(_ timer: Timer) {
        if lbl.backgroundColor == NSColor.black {
            lbl.backgroundColor = NSColor.white
        } else {
            lbl.backgroundColor = NSColor.black
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    @IBOutlet weak var lbl: NSTextField!
}

