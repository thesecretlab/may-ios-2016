//: Playground - noun: a place where people can play

import UIKit

import AVFoundation

import XCPlayground

var str = "Hello, playground"

let byteFormatter = NSByteCountFormatter()

byteFormatter.countStyle = .File

byteFormatter.stringFromByteCount(1000000)

let lengthFormatter = NSLengthFormatter()

lengthFormatter.stringFromMeters(1000)

lengthFormatter.stringFromValue(1, unit: .Mile)

let massFormatter = NSMassFormatter()

massFormatter.stringFromKilograms(10)

let now = NSDate()

let dateFormatter = NSDateFormatter()

dateFormatter.locale = NSLocale(localeIdentifier: "fr")
//dateFormatter.timeZone = NSTimeZone(name: "GMT+6")

dateFormatter.dateFormat = "dd:MM:YY"

//dateFormatter.timeStyle = .ShortStyle
//dateFormatter.dateStyle = .FullStyle

dateFormatter.stringFromDate(now)

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true


let soundURL = [#FileReference(fileReferenceLiteral: "TestSound.wav")#]

let audioPlayer = try! AVAudioPlayer(contentsOfURL: soundURL)


audioPlayer.play()
















