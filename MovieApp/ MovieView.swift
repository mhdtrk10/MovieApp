//
//   MovieView.swift
//  MovieApp
//
//  Created by Mehdi Oturak on 22.11.2024.
//

import SwiftUI

struct _MovieView: View {
    var model: Model
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .frame(width: 300, height: 350)
                .cornerRadius(20)
            Text(model.movieName)
                .bold()
                .font(.title)
        }.padding()
    }
}

#Preview {
    _MovieView(model: Model(movieName: "", imageName: ""))
}
