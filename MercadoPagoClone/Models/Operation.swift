//
//  Operation.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 12/10/24.
//

import Foundation

struct Operation : Identifiable {
    let id: Int
    let iconCorp: String
    let nameCorp: String
    let iconCard: String
    let typeCard: String
    let total: String
    let type: String
    let date: String
}
