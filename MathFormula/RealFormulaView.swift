//
//  RealFormulaView.swift
//  MathHelper
//
//  Created by Almat Kairatov on 08.01.2023.
//

import SwiftUI
import RichTextView

struct TextView : UIViewRepresentable {
    
    @Binding var string : String
    
    func makeUIView(context: Context) -> RichTextView {
        let richTextView = RichTextView(
            input: string,
            latexParser: LatexParser(),
            font: UIFont.systemFont(ofSize: UIFont.systemFontSize),
            textColor: UIColor.white,
            frame: CGRect.zero,
            completion: nil
        )
        
        return richTextView
        
    }

   func updateUIView(_ uiView: RichTextView, context: Context) {
        uiView.update(
            input: string,
            latexParser: LatexParser(),
            font: UIFont.systemFont(ofSize: UIFont.systemFontSize),
            textColor: UIColor.white,
            completion: nil
        )
   }
}
