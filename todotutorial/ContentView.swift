//
//  ContentView.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight=false
    
    var body: some View {
        ZStack {
            GradientView(isNight: $isNight)
            VStack{
                HeadingMain(cityName: "Halifax")
                MainClimateView(iconName: "cloud.sun.fill", temperature: 23)
                Spacer()
                VStack{
                    HStack(spacing: 2){
                        dayOfWeek(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 12)
                        dayOfWeek(dayOfWeek: "WED", imageName: "cloud.bolt.fill", temperature: 12)
                        dayOfWeek(dayOfWeek: "THU", imageName: "cloud.drizzle.fill", temperature: 12)
                        dayOfWeek(dayOfWeek: "FRI", imageName: "cloud.drizzle.fill", temperature: 12)
                        dayOfWeek(dayOfWeek: "SAT", imageName: "cloud.sun.rain.fill", temperature: 12)
                    }
                }
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100) // makes the vstack bigger
                StandardAppButton(buttonName: "Change day time", backgroundColor: .white, textColor: .black) {
                    isNight.toggle()
                    print("Current time: \(getCurrentTimeAndDay().time)")
                    print("Current day: \(getCurrentTimeAndDay().day)")
                }
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
        }
        }
    }
    

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

struct dayOfWeek: View {
    var dayOfWeek : String
    var imageName : String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 15, weight: .light, design: .default))
                .foregroundStyle(.white)
                .frame(width: 70, height: 50)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct GradientView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("CustomBlue")]), startPoint: .topLeading, endPoint: .bottom)
            .ignoresSafeArea(.all)
    }
}

struct HeadingMain: View {
    var cityName : String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium , design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainClimateView: View {
    var iconName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)")
                .font(.system(size: 70))
                .foregroundStyle(.white)
        }
    }
}
