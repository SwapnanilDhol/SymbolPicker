//
//  SymbolPickerViewModel.swift
//  SymbolPicker
//
//  Created by Swapnanil Dhol on 1/6/25.
//

import Foundation

public protocol SymbolPickerDelegate: AnyObject {
    func didPickSymbol(symbol: String)
}

public final class SymbolPickerViewModel: ObservableObject {

    weak public var delegate: SymbolPickerDelegate?

    public func selectSymbol(symbol: String) {
        delegate?.didPickSymbol(symbol: symbol)
    }
}
