//
//  ContentView.swift
//  HelloBinding
//
//  Created by EDUARDO MEJIA on 01/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

/*import Cocoa

var str = "Hello, playground"
var fruits = ["Apple", "Grape", "Banana", "Grape"]
var filteredArray = fruits.filter({$0 != "Grape"})
print(filteredArray)*/

import SwiftUI

struct ContentView: View {
    var model = Dish.all()
    @State private var isSpicy = false
   
    @State private var filterArray = []
    var body: some View {
        
       
       
        
        
        List{
            
            Toggle(isOn: $isSpicy){
                Text("Spicy")
                    .font(.title)
                
            }         //$0.isSpicy t o f de la coleccion ==  t o f de la State
                        // modelo filtrado por spicy igual a true luego hace el forEach
            ForEach(model.filter{$0.isSpicy == self.isSpicy})
            {dish in
                HStack{
                    Image(dish.imageURL)
                    .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                        .font(.title)
                    .lineLimit(nil)
                    
                    Spacer()
                    if(dish.isSpicy){
                        Image("spicy_icon")
                        .resizable()
                        .frame(width: 35, height: 35)
                    }
                    
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
