//
//  NavBar.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 10/10/24.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        //NavBar
        HStack {
            VStack (spacing: 5) {
                Image(systemName: "house")
                    .foregroundStyle(Color.BG_1)
                    .font(.system(size: 20))
                Text("Inicio")
                    .foregroundStyle(Color.BG_1)
                    .font(.system(size: 13))
            }
            .frame(maxWidth: .infinity)
            VStack (spacing: 5) {
                Image(systemName: "creditcard")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 20))
                Text("Actividad")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13))
            }
            .frame(maxWidth: .infinity)
            
            Image(systemName: "qrcode")
                .padding(15)
                .foregroundStyle(Color.white)
                .font(.system(size: 35))
                .background(Color.BG_1)
                .clipShape(Circle())
                .padding(7)
                .background(Color.LIGHTBLUE)
                .clipShape(Circle())
                .offset(x: 0, y: -20)
            
            VStack (spacing: 5) {
                Image(systemName: "dollarsign")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 20))
                Text("Beneficios")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13))
            }
            .frame(maxWidth: .infinity)
            VStack (spacing: 5) {
                Image(systemName: "rectangle.stack")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 20))
                Text("Más")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13))
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 20)
        .background(Color.white)
        .frame(maxWidth: .infinity)
        .border(width: 0.3, edges: [.top], color: .gray)
    }
}

#Preview {
    NavBar()
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
