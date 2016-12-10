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

    @IBOutlet weak var freqFld: NSTextField!

    @IBAction func setFreq(_ sender: NSButton) {
        restartTimer(freqFld.integerValue)
    }
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window.backgroundColor = NSColor.black
    }
    
    var timer: Timer = Timer()
    
    func restartTimer(_ hz: Int) {
        timer.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0/Double(hz * 2), repeats: true, block: toggleBackground)
    }
    
    override init() {
        super.init()
        restartTimer(40)
    }
    
    func toggleBackground(_ timer: Timer) {
        if window.backgroundColor == NSColor.white{
            window.backgroundColor = NSColor.black
        } else {
            window.backgroundColor = NSColor.white
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

