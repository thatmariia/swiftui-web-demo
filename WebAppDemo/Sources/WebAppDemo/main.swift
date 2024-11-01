// The Swift Programming Language
// https://docs.swift.org/swift-book

//import SwiftUI
//
////@main
//struct TokamakWebAppDemo: App {
//    var body: some Scene {
//        WindowGroup {
//            Text("Hello, Web!")
////            SharedContentView(viewModel: SharedContentViewModel())
//        }
//    }
//}

import SwiftWebUI
//#if canImport(SwiftWebUI)
//import SwiftWebUI
//#else
//import SwiftUI
//#endif
import SharedUIComponentsDemo

SwiftWebUI.serve(
    SharedContentView(viewModel: 3)
//    SharedContentView()
)


//public struct SharedContentView: View {
//    
//    public var body: some View {
//        Text("Hello, World!")
//    }
//}
