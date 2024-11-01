//
//  CrossPlatform.swift
//  SharedUIComponentsDemo
//
//  Created by Mariia Steeghs-Turchina on 01/11/2024.
//


#if PLATFORM_SWIFTWEBUI
import SwiftWebUI
public typealias CPView = View
public typealias CPText = Text
#else
import SwiftUI
public typealias CPView = SwiftUI.View
public typealias CPText = SwiftUI.Text
#endif
