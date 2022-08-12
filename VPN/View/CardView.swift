//
//  CardView.swift
//  VPN
//
//  Created by PDWS on 8/12/22.
//

import SwiftUI

struct CardView: View {
    @State var server : Server
    var subTitle: String
    
    var body: some View {
        
        HStack(spacing: 15){
            
            Image(server.flag)
                .resizable()
                .frame(width: 45, height: 45)
                .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 4, content:{
                Text(server.name)
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                
                if subTitle != "" {
                    Text(subTitle)
                        .foregroundColor(.gray)
                }
            })
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 24))
                .foregroundColor(.black)
            
        }
        .padding(.leading, 10)
        .padding(.trailing)
        .padding(.vertical)
    }
}
