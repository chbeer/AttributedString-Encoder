//
//  MarkdownFlavor.swift
//  AttributedStringEncoder
//
//  Created by Christian Beer on 16.11.25.
//

import Foundation

/// CommonMark Markdown flavor.
@objc open class MarkdownFlavor: NSObject {

    /// CommonMark Markdown flavor.
    @objc nonisolated(unsafe) public static let commonMark = MarkdownFlavor()
    
    /// Encode a run of an AttributedString.
    /// - Parameters:
    ///   - run: the run to encode
    ///   - string: the AttributedSubstring for the run
    /// - Returns: the encoded text for this run
    open func encodeRun(_ run: AttributedString.Runs.Element, in string: AttributedSubstring) -> String {
        var text = String(string.characters)
        
        if let inline = run.inlinePresentationIntent {
            if inline.contains(.stronglyEmphasized) {
                text = encodeStronglyEmphasized(text)
            }
            if inline.contains(.emphasized) {
                text = encodeEmphasized(text)
            }
            if inline.contains(.strikethrough) {
                text = encodeStrikethrough(text)
            }
        }
        
        if let link = run.link {
            text = encodeLink(text, url: link)
        }
        
        return text
    }
    
    // MARK: - Encoders
    
    open func encodeStronglyEmphasized(_ text: String) -> String {
        text.wrap(with: "**")
    }
    open func encodeEmphasized(_ text: String) -> String {
        text.wrap(with: "*")
    }
    open func encodeStrikethrough(_ text: String) -> String {
        text.wrap(with: "~~")
    }
    
    open func encodeLink(_ text: String, url: URL) -> String {
        "[\(text)](\(url.absoluteString))"
    }
    
}
