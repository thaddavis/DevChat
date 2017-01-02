//
//  ViewController.swift
//  DevChat
//
//  Created by Thad Duval on 12/31/16.
//  Copyright © 2016 Thad Duval. All rights reserved.
//

import UIKit

class CameraVC: CameraViewController, CameraVCDelegate {
    
    @IBOutlet weak var previewView: PreviewView!
    
    @IBOutlet weak var cameraButton: UIButton!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var captureModeControl: UISegmentedControl!
    
    override func viewDidLoad() {
        
        delegate = self
        self._previewView = previewView
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // implement CameraVCDelegate
    func canStartRecording() {
        print("Can Start Recording")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func shouldEnableCameraUI(enabled: Bool, line: String) {
        print("shouldEnableCameraUI: \(enabled) at \(line)")
        cameraButton.isEnabled = enabled
    }
    
    func shouldEnableRecordUI(enabled: Bool, line: String) {
        print("shouldEnableRecordUI: \(enabled) at \(line)")
        recordButton.isEnabled = enabled
    }
    
    func shouldEnableCaptureModeControlUI(enabled: Bool) {
        print("shouldEnableCaptureModeControlUI: \(enabled)")
        captureModeControl.isEnabled = enabled
    }
    
    @IBAction func changeCameraPressed(_ sender: Any) {
        print("changeCameraPressed")
        changeCamera(sender as! UIButton)
    }
    
    @IBAction func recordBtnPressed(_ sender: Any) {
        print("recordBtnPressed")
        toggleMovieRecording(sender as! UIButton)
    }
    
    @IBAction func captureModeChanged(_ sender: Any) {
        print("captureModeChanged")
        toggleCaptureMode(sender as! UISegmentedControl)
    }
    
}

