//
//  String.swift
//  AttributedStringEncoder
//
//  Created by Christian Beer on 16.11.25.
//

extension String {
    
    /// Wraps self with symbol (sample: `"Hello"` with `"**"` -> `"**Hello**"`)
    func wrap(with symbol: String) -> String {
        symbol + self + symbol
    }
    
}
