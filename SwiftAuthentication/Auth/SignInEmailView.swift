//
//  SigninEmail.swift
//  SwiftAuthentication
//
//  Created by em on 2023-05-01.
//

import SwiftUI
@MainActor
final class SignInEmailViewModel: ObservableObject {
	@Published var email = ""
	@Published var password = ""
	
	func signIn()
	{
		guard !email.isEmpty, !password.isEmpty else
		{
			print("pas de courriel ou mot de pass")
			return
		}
		Task{
			do{
				let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
				print("yay!")
				print(returnedUserData)
			}
			catch{
				print("Error: \(error))")
				
			}
		}
	}
	
	struct SignInEmailView: View {
		@StateObject private var viewModel = SignInEmailViewModel()
		var body: some View {
			VStack {
				TextField("Email...", text: $viewModel.email)
					.padding()
					.background(Color.gray.opacity(0.3))
					.cornerRadius(10)
				SecureField("Password...", text: $viewModel.password)
					.padding()
					.background(Color.gray.opacity(0.3))
					.cornerRadius(10)
				Button {
					viewModel.signIn()
					
				} label: {
					
					Text("Se connecter")
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
			.navigationTitle("Login avec email")
		}
	}
	
	struct SignInEmailView_Previews: PreviewProvider {
		static var previews: some View {
			NavigationStack {
				SignInEmailView()
			}
		}
	}
	
}
