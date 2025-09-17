//
//  ContentView.swift
//  IMC
//
//  Created by Victor on 16/09/25.
//

import SwiftUI

struct BienvenidaView: View {
    let nombre: String
    let peso: String
    let altura: String

    var imc: Double {
        let pesoDouble = Double(peso) ?? 0
        let alturaDouble = Double(altura) ?? 0
        
        if alturaDouble > 0 {
            return pesoDouble / (alturaDouble * alturaDouble)
        } else {
            return 0
        }
    }
    
 
    var clasificacionIMC: String {
        switch imc {
        case 0..<18.5:
            return "Bajo peso"
        case 18.5..<25:
            return "Peso normal"
        case 25..<30:
            return "Sobrepeso"
        case 30...:
            return "Obesidad"
        default:
            return "Dato no válido"
        }
    }
    

    var colorIMC: Color {
        switch imc {
        case 0..<18.5:
            return .blue
        case 18.5..<25:
            return .green
        case 25..<30:
            return .orange
        case 30...:
            return .red
        default:
            return .gray
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Hola, \(nombre)")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Tu peso: \(peso) kg")
                .font(.title2)
            
            Text("Tu altura: \(altura) m")
                .font(.title2)
            
            Divider().padding(.vertical, 5)

            Text("Tu IMC es: \(String(format: "%.1f", imc))")
                .font(.title)
                .fontWeight(.semibold)
            
  
            Text(clasificacionIMC)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(colorIMC)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ContentView: View {
    @State private var nombreUsuario: String = ""
    @State private var peso: String = ""
    @State private var altura: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField("Por favor ingresa tu nombre", text: $nombreUsuario)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Ingresa tu peso (kg)", text: $peso)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                
                TextField("Ingresa tu altura (m)", text: $altura)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                
                NavigationLink {
                    BienvenidaView(nombre: nombreUsuario, peso: peso, altura: altura)
                } label: {
                    Text("Ingresar")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Registro")
        }
    }
}
#Preview {
    ContentView()
}
