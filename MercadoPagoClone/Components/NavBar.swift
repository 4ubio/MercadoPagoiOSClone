//
//  NavBar.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 10/10/24.
//

import SwiftUI

struct NavBar: View {
    
    var selected: String
    
    var body: some View {
        
        //NavBar
        HStack {
            VStack (spacing: 5) {
                Image(systemName: "house")
                    .foregroundStyle(
                        selected == "Inicio" ? Color.BG_1 : Color.gray
                    )
                    .font(.system(size: 20))
                    .frame(maxHeight: 25)
                Text("Inicio")
                    .foregroundStyle(
                        selected == "Inicio" ? Color.BG_1 : Color.gray
                    )
                    .font(.system(size: 10))
            }
            .frame(maxWidth: .infinity)
            VStack (spacing: 5) {
                Image(systemName: "creditcard")
                    .foregroundStyle(
                        selected == "Actividad" ? Color.BG_1 : Color.gray
                    )
                    .font(.system(size: 20))
                    .frame(maxHeight: 25)
                Text("Actividad")
                    .foregroundStyle(
                        selected == "Actividad" ? Color.BG_1 : Color.gray
                    )
                    .font(.system(size: 10))
            }
            .frame(maxWidth: .infinity)
            
            Image(systemName: "qrcode")
                .padding(10)
                .foregroundStyle(Color.white)
                .font(.system(size: 30))
                .background(Color.BG_1)
                .clipShape(Circle())
                .padding(5)
                .background(Color.LIGHTBLUE)
                .clipShape(Circle())
                .offset(x: 0, y: -12)
            
            VStack (spacing: 5) {
                Image(systemName: "dollarsign")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 20))
                    .frame(maxHeight: 25)
                Text("Beneficios")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 10))
            }
            .frame(maxWidth: .infinity)
            VStack (spacing: 5) {
                Image(systemName: "line.3.horizontal")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 25))
                    .frame(maxHeight: 25)
                Text("Más")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 10))
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 30)
        .background(Color.white)
        .frame(maxWidth: .infinity)
        .border(width: 0.3, edges: [.top], color: .gray)
    }
}

#Preview {
    NavBar(selected: "Inicio")
}

struct EdgeBorder: Shape {
    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        edges.map { edge -> Path in
            switch edge {
            case .top: return Path(.init(x: rect.minX, y: rect.minY, width: rect.width, height: width))
            case .bottom: return Path(.init(x: rect.minX, y: rect.maxY - width, width: rect.width, height: width))
            case .leading: return Path(.init(x: rect.minX, y: rect.minY, width: width, height: rect.height))
            case .trailing: return Path(.init(x: rect.maxX - width, y: rect.minY, width: width, height: rect.height))
            }
        }.reduce(into: Path()) { $0.addPath($1) }
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
