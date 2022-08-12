//
//  HomeView.swift
//  VPN
//
//  Created by PDWS on 8/12/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var serverData = ServerViewModel()
    
    var body: some View {
        
        ZStack{
            VStack{
                
                //MARK: Titles and Status
                VStack{
                    Text("AESTHER")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    Text("STATUS")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(serverData.isConnected ? "CONNECTED" : "DISCONNECTED")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                        .padding(.bottom, 20)
                }
                .frame(height: UIScreen.main.bounds.height / 3.3)
                
                //MARK: Start - Stop Button
                
                VStack {
                    
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .top ),content: {
                     
                        LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .top, endPoint: .bottom)
                            .clipShape(CustomShape())

                        Button(action: {serverData.isConnected.toggle()}, label: {
                            VStack(spacing: 15){
                                
                                Image(systemName: "power")
                                    .font(.system(size: 70))
                                    .foregroundColor(serverData.isConnected ? Color.red.opacity(0.8) : .white)
                                
                                Text(serverData.isConnected ? "STOP" : "START")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                            .padding(50)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing)
                            )
                            .clipShape(Circle())
                            .padding(15)
                            .background(Color("power")).opacity(0.8)
                            .clipShape(Circle())
                            .padding(15)
                            .background(Color("gradient1")).opacity(0.8)
                            .clipShape(Circle())
                        })
                        .offset(y: -65)
                        .padding(.bottom, -65)
                    })
                    .padding(.top, 60)
                    
                    Spacer()
                    
                    //MARK: CardView ..
                    Button(action: {
                        withAnimation{serverData.showSheet.toggle()}
                    }, label: {
                         
                        CardView(server: serverData.currentServer, subTitle: "")
                            .background(BlurView())
                            .clipShape(Capsule())
                            .padding()
                    })
                    Spacer()
                }

            }
            
            BottomSheet(serverData: serverData)
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
        .background(
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                Color.black.opacity(0.1)
                    .ignoresSafeArea(.all, edges: .top)
            }

        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
