//
//  NSAttributedStringEncoder.swift
//  AttributedStringEncoder
//
//  Created by Christian Beer on 16.11.25.
//

/// Encoder to encode NSAttributedString to Markdown string
@objc public class NSAttributedStringEncoder: NSObject {
    
    let flavor: MarkdownFlavor
    
    @objc public init(flavor: MarkdownFlavor) {
        self.flavor = flavor
    }
    
    /// Encode the AttributedString to Markdown
    /// - Parameter string: AttributedString to encode
    /// - Returns: encoded string as Markdown
    @objc public func encode(_ string: NSAttributedString) -> String {
        string
            .runs
            .map { run in
                return flavor.encodeRun(run, in: string[run.range])
            }
            .joined()
    }
    
}
