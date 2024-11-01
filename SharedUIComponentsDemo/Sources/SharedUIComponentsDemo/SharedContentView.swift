//
//  SharedContentView.swift
//  SharedUIComponentsDemo
//
//  Created by Mariia Steeghs-Turchina on 31/10/2024.
//


public struct SharedContentView: CPView {
    var nr: Int

    public init(nr: Int) {
        self.nr = nr
    }

    public var body: some CPView {
        CPText("you entered \(nr)")
    }
}
