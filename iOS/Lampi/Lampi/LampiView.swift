//
//  LampiView.swift
//  Lampi
//
//  Created by Tejaswini Rajkumar on 3/26/21.
//

import SwiftUI

struct LampiView: View {

    @ObservedObject var lampi = Lampi()
    var body: some View {
        VStack
        {
            Spacer()
            Rectangle()
                .fill(lampi.color)
            GradientSlider(value: $lampi.hue, handleColor: lampi.color, trackColors: Color.rainbow())
                            .padding()
            GradientSlider(value: $lampi.saturation, handleColor: lampi.color, trackColors: [.white, lampi.color])
                            .padding()
            GradientSlider(value: $lampi.brightness, handleColor: lampi.color, handleImage: Image(systemName: "sun.max"), trackColors: [.black, .white])
                            .padding()
            /*GradientSlider(value: $lampi.brightness, handleImage: Image(systemName: "sun.max"))
                .foregroundColor(.red) // changes color of handle image
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Brightness")
            Slider(value: $lampi.hue)
                            .padding()
            Slider(value: $lampi.saturation)
                            .padding()
            Slider(value: $lampi.brightness)
                            .padding()*/
            Button(action:
                    {
                // Do an action or call a function
                    }) {
                
                HStack {
                    Spacer()
                    Image(systemName: "power")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }.padding()
            }
            .frame(height: 100)
            .background(Color.black)
            .foregroundColor(lampi.color)
        }.accentColor(lampi.color)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LampiView()
    }
}
