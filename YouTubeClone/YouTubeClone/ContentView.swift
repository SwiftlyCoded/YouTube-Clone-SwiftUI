//
//  ContentView.swift
//  YouTubeClone
//
//  Created by Alex on 27/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1568410099, green: 0.1568752527, blue: 0.1568388343, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    ControlPanel()
                    SelectionPanel()
                    ChannelPhoto()
                }
                .padding(.top, 60)
                .background(Color(#colorLiteral(red: 0.08555387706, green: 0.3797933459, blue: 0.4470273852, alpha: 1)))
                .offset(y: -30)
                
                VStack{
                    LogoPannel()
                    EditManage()
                    
                    Text("Uploads")
                        .padding(.trailing, 280)
                        .padding(.vertical, 15)
                    
                    FirstVideo()
                    SecondVideo()
                }
                .offset(y: -30)
                
                Spacer()
                
                Menu()
                
            }
        }.foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ControlPanel: View{
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: "arrow.left")
            Text("Swiftly coded")
            Spacer()
            Image(systemName: "tv")
            Image(systemName: "magnifyingglass")
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
        }
        .padding(.bottom, 15)
        .font(.system(size: 20))
        .padding(.horizontal, 20)
    }
}

struct SelectionPanel: View{
    var body: some View{
        HStack(spacing: 20){
            Text("Home")
            Text("Videos")
            Text("Playlists")
            Text("Channels")
        }.textCase(.uppercase)
    }
}

struct ChannelPhoto: View{
    var body: some View{
        Image("background")
            .resizable()
            .scaledToFill()
    }
}

struct LogoPannel: View{
    var body: some View{
        HStack{
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.leading, 10)
            
            VStack(alignment: .leading, spacing: 5){
                Text("Swiftly coded")
                    .font(.system(size: 20, weight: .bold))
                
                Text("22 subscribers")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct EditManage: View{
    var body: some View{
        HStack{
            Text("Edit channel")
                .textCase(.uppercase)
                .padding(.horizontal, 22)
                .padding(.vertical, 10)
                .foregroundColor(Color(#colorLiteral(red: 0.2527852952, green: 0.6634278297, blue: 1, alpha: 1)))
                .border(Color(#colorLiteral(red: 0.2527852952, green: 0.6634278297, blue: 1, alpha: 1)))
            
            Text("Manage videos")
                .textCase(.uppercase)
                .padding(.horizontal, 22)
                .padding(.vertical, 10)
                .foregroundColor(Color(#colorLiteral(red: 0.2527852952, green: 0.6634278297, blue: 1, alpha: 1)))
                .border(Color(#colorLiteral(red: 0.2527852952, green: 0.6634278297, blue: 1, alpha: 1)))
        }
    }
}

struct FirstVideo: View{
    var body: some View{
        HStack(alignment: .top){
            Image("thumb2")
                .resizable()
                .frame(width: 180, height: 110)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text("SwiftUI from scratch")
                Text("#2 Views, Modifiers,")
                Text("Stacks (2021")
                
                HStack{
                    Text("60 views")
                    Text("15 hours ago")
                }.foregroundColor(.gray)
                .font(.system(size: 15))
            }
            
        }.padding(.bottom)
    }
}

struct SecondVideo: View{
    var body: some View{
        HStack(alignment: .top){
            Image("thumb1")
                .resizable()
                .frame(width: 180, height: 110)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text("SwiftUI from scratch")
                Text("#1 Setup")
                
                HStack{
                    Text("72 views")
                    Text("5 days ago")
                }.foregroundColor(.gray)
                .font(.system(size: 15))
            }
        }
    }
}

struct Menu: View{
    var body: some View{
        VStack{
            Rectangle()
                .frame(width: 400, height: 0.3)
                .foregroundColor(.gray)
                .padding(.bottom, 5)
            
            HStack(spacing: 30){
                VStack{
                    Image(systemName: "house.fill")
                        .font(.system(size: 20))
                    Text("Home")
                }
                
                VStack{
                    Image(systemName: "safari")
                        .font(.system(size: 20))
                    Text("Explore")
                }
                
                Image(systemName: "plus.circle")
                    .scaleEffect(2.2)
                    .padding(.horizontal, 10)
                
                VStack{
                    Image(systemName: "rectangle.stack.person.crop")
                        .font(.system(size: 20))
                    Text("Subs")
                }
                
                VStack{
                    Image(systemName: "play.rectangle")
                        .font(.system(size: 20))
                    Text("Library")
                }
            }.padding(.bottom, 30)
        }
    }
}
