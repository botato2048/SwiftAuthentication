//
//  AuthVIew.swift
//  SwiftAuthentication
//
//  Created by em on 2023-05-01.
//


// 42:47

import SwiftUI

struct AuthVIew: View {
	var body: some View {
		VStack {
			NavigationLink {
				
				/*struct AuthVIew: View {
				@Binding var showsigninview: Bool
	   var body: some View {
		   VStack {
			   NavigationLink {
				   SignInEmailView(showsigninview: $showsigninview)
				 */
				
				SignInEmailView()
			}
		label: {
				Text("Se connecter avec Email")
					.font(.headline)
					.foregroundColor(.white)
					.frame(height: 55)
					.frame(maxWidth: .infinity)
					.background(Color.blue)
					.cornerRadius(10)
			}
			Spacer()
		}
		.padding()
		.navigationTitle("Se Connecter")
	}
}

struct AuthVIew_Previews: PreviewProvider {
	static var previews: some View {
		NavigationStack {
			AuthVIew()
		}
	}
}
