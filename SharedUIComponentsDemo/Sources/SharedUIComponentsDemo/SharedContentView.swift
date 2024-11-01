//
//  SharedContentView.swift
//  SharedUIComponentsDemo
//
//  Created by Mariia Steeghs-Turchina on 31/10/2024.
//


public struct SharedContentView: CPView {
    var viewModel: Int

    public init(viewModel: Int) {
        self.viewModel = viewModel
    }

    public var body: some CPView {
        CPText("\(viewModel) meows pew pew")
    }
}



//public struct SharedContentView: View {
//    @ObservedObject var viewModel: SharedContentViewModel
//
//    public init(viewModel: SharedContentViewModel) {
//        self.viewModel = viewModel
//    }
//
//    public var body: some View {
//        VStack {
//            Text(viewModel.message)
//            Button("Update Message") {
//                viewModel.updateMessage()
//            }
//        }
//    }
//}
