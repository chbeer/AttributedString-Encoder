//
//  SwiftUIMarkdownFlavor.swift
//  AttributedStringEncoder
//
//  Created by Christian Beer on 16.11.25.
//

import Foundation
import SwiftUI

public extension MarkdownFlavor {
    nonisolated(unsafe) static let swiftUI = SwiftUIMarkdownFlavor()
}

open class SwiftUIMarkdownFlavor: MarkdownFlavor {
    
    override open func encodeRun(_ run: AttributedString.Runs.Element, in string: AttributedSubstring) -> String {
        var text = super.encodeRun(run, in: string)
        
        
        
        return text
    }
    
}
