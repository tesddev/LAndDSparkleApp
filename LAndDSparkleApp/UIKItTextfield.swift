//
//  UIKItTextfield.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import Foundation
import SwiftUI
import UIKit

struct UIKitTextField: UIViewRepresentable {
    @Binding var text: String

    class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.delegate = context.coordinator
        textField.borderStyle = .roundedRect
        return textField
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }
}

import SwiftUI
import UIKit

struct UILabelRepresentable: UIViewRepresentable {
    var text: String

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        
        let descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: .body)
        let customFont = UIFont(descriptor: descriptor, size: 20)
        
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        label.font = customFont
        label.textColor = .red
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}

