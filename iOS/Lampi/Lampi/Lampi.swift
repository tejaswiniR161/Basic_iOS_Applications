//
//  Lampi.swift
//  Lampi
//
//  Created by Tejaswini Rajkumar on 3/26/21.
//

import Foundation
import SwiftUI

class Lampi: ObservableObject {
    @Published var hue: Double = 1.0
    @Published var saturation: Double = 1.0
    @Published var brightness: Double = 1.0
    var color: Color {
        Color(hue: hue, saturation: saturation, brightness: brightness)
    }
}
