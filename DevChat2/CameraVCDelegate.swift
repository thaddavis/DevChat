//
//  CameraVCDelegate.swift
//  DevChat
//
//  Created by Thad Duval on 1/1/17.
//  Copyright © 2017 Thad Duval. All rights reserved.
//

import Foundation

protocol CameraVCDelegate {
    func shouldEnableRecordUI(enabled: Bool, line: String)
    func shouldEnableCameraUI(enabled: Bool, line: String)
    func shouldEnableCaptureModeControlUI(enabled: Bool)
    func canStartRecording()
    func recordingHasStarted()
}
