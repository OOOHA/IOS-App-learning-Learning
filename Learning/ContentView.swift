//
//  ContentView.swift
//  Learning
//
//  Created by 邱宏宇 on 8/6/21.
//

import SwiftUI



struct ContentView: View {
    
    
    
    
    
    
    
    @State var word = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color("first")
                    .ignoresSafeArea()
                
                VStack{
                    ZStack(alignment: .trailing){

                        TextField("Input", text: $word)
                            .frame(width: 300, height: 50)
                            .background(Color.white)
                            .cornerRadius(30)
                            .padding()
                            
//                        Button(action: {
//                            word = ""
//                        }) {
//                            Image(systemName: "xmark.circle.fill")
//                                .padding(.trailing)
//                                .foregroundColor(.red)
//                                .offset(x:-5)
//                                //.cornerRadius(50)
//                        }
                    }
                    
                    
                    NavigationLink(
                        destination: sec(new: word),
                        label: {
                            Text("Hello, world!")
                                .frame(width: 300, height: 50)
                                .background(Color.green)
                                .cornerRadius(30)
                                .padding()
                                .foregroundColor(Color("on"))
                                .padding()
                        })
                    
                    NavigationLink(
                        destination: sec(new: word),
                        label: {
                            Text("Hi")
                                .frame(width: 300, height: 50)
                                .background(Color.gray)
                                .cornerRadius(30)
                                .padding()
                                .foregroundColor(Color("on"))
                                .padding()
                        })
                    
                    
                    NavigationLink(
                        destination: sec(new: word),
                        label: {
                            Button(action: {
                                word = "100"
                            }, label: {
                                Text("Button")
                                    .frame(width: 300, height: 50)
                                    .background(Color.blue)
                                    .cornerRadius(30)
                                    .padding()
                                    .foregroundColor(Color("on"))
                                    .padding()
                                    .padding()
                                
                            })
                        })
                    
                }
                
                
            }
            
        }
    }
}
struct sec: View {
    
    @State var new = ""
    var body: some View {
        VStack{
            Text(new)
                .padding()
            Text("Fuck")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
