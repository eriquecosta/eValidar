//
//  Validar.swift
//  UtilsSSPMO
//
//  Created by Erique Costa on 21/02/2018.
//  Copyright © 2018 SERPRO. All rights reserved.
//

import Foundation


public class Validar {
    
    public static func date(texto: String, formato : String = "DD/MM/YYYY") -> Bool {
        let form = DateFormatter()
        form.dateFormat = formato
        
        if (form.date(from: texto)) != nil {
            return true
        } else {
            return false
        }
    }
    
    public static func valor(texto: String) -> Bool {
        let texto2 = (texto  as NSString).replacingOccurrences(of: ",", with: ".")
        if Double(texto2) != nil{
            return true
        } else {
            return false
        }
    }
    
    public static func cpf (texto : String) -> Bool {
//        let newCpf = Mascaras.unMask(input: texto as NSString) as String
        let numbers = texto.flatMap({Int(String($0))})
        guard numbers.count == 11 && Set(numbers).count != 1 else { return false }
        let soma1 = 11 - ( numbers[0] * 10 +
            numbers[1] * 9 +
            numbers[2] * 8 +
            numbers[3] * 7 +
            numbers[4] * 6 +
            numbers[5] * 5 +
            numbers[6] * 4 +
            numbers[7] * 3 +
            numbers[8] * 2 ) % 11
        let dv1 = soma1 > 9 ? 0 : soma1
        let soma2 = 11 - ( numbers[0] * 11 +
            numbers[1] * 10 +
            numbers[2] * 9 +
            numbers[3] * 8 +
            numbers[4] * 7 +
            numbers[5] * 6 +
            numbers[6] * 5 +
            numbers[7] * 4 +
            numbers[8] * 3 +
            numbers[9] * 2 ) % 11
        let dv2 = soma2 > 9 ? 0 : soma2
        return dv1 == numbers[9] && dv2 == numbers[10]
    }
    
    public static func cnpj(texto : String) -> Bool {
//        let newCnpj = Mascaras.unMask(input: texto as NSString) as String
        let numbers = texto.flatMap({Int(String($0))})
        guard numbers.count == 14 && Set(numbers).count != 1 else { return false }
        let soma1 = 11 - ( numbers[11] * 2 +
            numbers[10] * 3 +
            numbers[9] * 4 +
            numbers[8] * 5 +
            numbers[7] * 6 +
            numbers[6] * 7 +
            numbers[5] * 8 +
            numbers[4] * 9 +
            numbers[3] * 2 +
            numbers[2] * 3 +
            numbers[1] * 4 +
            numbers[0] * 5 ) % 11
        let dv1 = soma1 > 9 ? 0 : soma1
        let soma2 = 11 - ( numbers[12] * 2 +
            numbers[11] * 3 +
            numbers[10] * 4 +
            numbers[9] * 5 +
            numbers[8] * 6 +
            numbers[7] * 7 +
            numbers[6] * 8 +
            numbers[5] * 9 +
            numbers[4] * 2 +
            numbers[3] * 3 +
            numbers[2] * 4 +
            numbers[1] * 5 +
            numbers[0] * 6 ) % 11
        let dv2 = soma2 > 9 ? 0 : soma2
        return dv1 == numbers[12] && dv2 == numbers[13]
    }
    
}
