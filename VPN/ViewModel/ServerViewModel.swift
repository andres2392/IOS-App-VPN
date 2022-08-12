//
//  ServerViewModel.swift
//  VPN
//
//  Created by PDWS on 8/12/22.
//

import SwiftUI

class ServerViewModel: ObservableObject{
    
    @Published var servers = [
        Server(name: "United States", flag: "us"),
        Server(name: "India", flag: "in"),
        Server(name: "United Kingdom", flag: "uk"),
        Server(name: "France", flag: "fr"),
        Server(name: "Colombia", flag: "co"),
        Server(name: "Singapore", flag: "si"),
        Server(name: "Venezuela", flag: "vz"),
    ]
    
    @Published var isConnected = false
    @Published var showSheet = false
    
    @Published var currentServer = Server(name: "United States", flag: "us")
}
