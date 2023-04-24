//
//  RandomAvatar.swift
//  Avatar
//
//  Created by Juan Camilo Marín Ochoa on 30/04/23.
//

import SwiftUI

struct RandomAvatar: View {
    let svgString = GenerateSVG()
    
    // Parámetros
    let width: CGFloat
    let height: CGFloat
    
    init(width: CGFloat = 100, height: CGFloat = 100) {
        self.width = width
        self.height = height
    }
    
    var body: some View {
        WebView(
            htmlString: """
                <!DOCTYPE html>
                <html>
                <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                </head>
                <body style="margin:0;">
                <img src="data:image/svg+xml,\(svgString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")" width="100%" height="auto" />
                </body>
                </html>
            """
        )
        .frame(width: width, height: height)
    }
}

struct RandomAvatar_Previews: PreviewProvider {
    static var previews: some View {
        RandomAvatar()
    }
}
