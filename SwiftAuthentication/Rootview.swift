//
//  Rootview.swift
//  SwiftAuthentication
//
//  Created by em on 2023-05-03.
//

import SwiftUI

struct Rootview: View {
	@State private var showingSignInView:
		Bool = false
	var body: some View {
		ZStack {
			NavigationStack {
				Text("parametres")
			}
		}
		.onAppear {}
		.fullScreenCover(isPresented: $showingSignInView) {
			NavigationStack {
				AuthVIew()
			}
		}
	}
}

struct Rootview_Previews: PreviewProvider {
	static var previews: some View {
		Rootview()
	}
}
