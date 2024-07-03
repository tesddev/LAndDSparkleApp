//
//  UIKItTextfield.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import SwiftUI
import UIKit

class CustomUIKitView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(hexString: "#238636")
        backgroundColor = UIColor(hexString: "#0f67B1").withAlphaComponent(0.8)
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct CustomUIKitViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> CustomUIKitView {
        return CustomUIKitView()
    }

    func updateUIView(_ uiView: CustomUIKitView, context: Context) {}
}
