//
//  ContentView.swift
//  03-stacks
//
//  Created by rodolfo silva on 11/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack (spacing: 8) {
                PricingView(title: "Basic",
                            subtitle: "Un curso incluido",
                            price: "$9,99",
                            textColor: .white,
                            backgroundColor: .green)
                ZStack{
                PricingView(title: "Carrera",
                            subtitle: "Toda una carrera",
                            price: "$29,99",
                            textColor: .black,
                            backgroundColor: Color(red: 230/255,
                                                   green: 230/255,
                                                   blue:230/255 ))
                    Text("El mejor para empezar")
                       .font(.system(.caption, design: .rounded))
                       .foregroundColor(.white)
                       .fontWeight(.black)
                       .padding(8)
                       .background(Color(red: 240/255,
                                         green: 180/255,
                                         blue:50/255 ))
                       .offset(x: 0, y: -85)
                }
                
            }.padding(.horizontal)
            
            DefinitiveCardView()
            
            //-- MY SOLUTION
          //  DefinitiveView()
          //  headerTopTextView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 4) {
                Text("Elige tu itinerario")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
                Text("de aprendizaje")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }.padding()
    }
}

struct PricingView: View {
    
    var title: String
    var subtitle: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    var body: some View {
        VStack {
            
            icon.map({
                Image(systemName:$0)//$0 = icon
                    .resizable()
                    .frame(width: 26, height: 40, alignment: .center)
                    .foregroundColor(.white)
            })
            
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 31,weight: .heavy,
                              design: .rounded))
                .foregroundColor(textColor)
            
            Text(subtitle)
                .font(.headline)
                .foregroundColor(textColor)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            .padding(25)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

//-- MY SOLUTION
//struct DefinitiveView: View {
//    var body: some View {
//
//        VStack(alignment: .center, spacing: 3) {
//           Spacer()
//            Image(systemName: "lightbulb")
//                .resizable()
//                .frame(width: 26, height: 40, alignment: .center)
//                .foregroundColor(.white)
//
//            Text("Definitivo")
//                .font(.system(.title, design: .rounded))
//                .fontWeight(.bold)
//                .foregroundColor(.white)
//
//            Text("$99.99")
//                .font(.system(size: 30,weight: .heavy,
//                              design: .rounded))
//                .fontWeight(.black)
//                .foregroundColor(.white)
//
//            Text("Todos los cursos online")
//                .font(.system(size: 18,weight: .regular,
//                              design: .rounded))
//                .fontWeight(.semibold)
//                .foregroundColor(.white)
//                .frame(alignment: .center)
//
//
//        }.frame(width: 340, height: 162, alignment: .center)
//            .padding(10)
//            .background(.black)
//            .cornerRadius(10)
//        }
//}

//struct headerTopTextView: View {
//    var body: some View {
//        ZStack() {
//            Text("Conviertete en un máster del universo")
//                .font(.system(.caption, design: .rounded))
//                .foregroundColor(.white)
//                .fontWeight(.black)
//                .padding(8)
//                .background(Color(red: 240/255,
//                                  green: 180/255,
//                                  blue:50/255 ))
//                .offset(x: 0, y: -198)
//        }.padding(2)
//    }
//}

struct DefinitiveCardView: View {
    var body: some View {
        ZStack{
            PricingView(title: "Definitivo",
                        subtitle: "Todos los cursos online",
                        price: "$99,99",
                        textColor: .white,
                        backgroundColor: Color(red: 50/255,
                                               green: 50/255,
                                               blue:50/255 ),
                        icon: "lightbulb")
            .padding(.horizontal)
            
            Text("Conviertete en un máster del universo")
                .font(.system(.caption, design: .rounded))
                .foregroundColor(.white)
                .fontWeight(.black)
                .padding(8)
                .background(Color(red: 240/255,
                                  green: 180/255,
                                  blue:50/255 ))
                .offset(x: 0, y: -88)
        }.padding(.vertical)
        Spacer()
    }
}
