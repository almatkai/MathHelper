//
//  ContentView.swift
//  MathHelper
//
//  Created by Almat Kairatov on 23.12.2022.
//
//
//import SwiftUI
//
//struct ContentView: View {
//
//    @State var arrayX:[Double] = []
//    @State var arrayFunc:[Double] = []
//    @State var num0:Double = 1 // мына мандерды ауыстыр
//    @State var xy:Double = 2 // мына мандерды ауыстыр
//    @State var xSTR:String = "" // мына мандерды ауыстыр
//    @State var ySTR:String = "" // мына мандерды ауыстыр
//    @State var y:Double = 0 // мына мандерды ауыстыр
//
//    @State var res1:Double = 0
//    @State var res2:Double = 0
//
//    var body: some View {
//        VStack {
//            Spacer()
//            HStack{
//                Text("Function:")
//                Text("3x - cos(x)")
//            }
////            TextField("X", text: $xSTR).textFieldStyle(.roundedBorder)
////            TextField("Y", text: $ySTR).textFieldStyle(.roundedBorder)
////            Button(action: {
////                x = Double(xSTR)!
////                res1 = formula(x: x)
////                y = Double(ySTR)!
////                res2 = formula(x: y)
////            }, label: {Text("Run")})
////            .buttonStyle(.borderedProminent)
////
////            Text("RES OF X: \(res1)")
////            Text("RES OF Y: \(res2)")
////            Spacer()
//            Button(action: {
//                let x: Double = num0 - (formula(x: num0))/(formula2(x: num0))
//                let func1: Double = formula(x: x)
//
//                arrayX.append(x)
//                arrayFunc.append(func1)
//
//                num0 = x
//
//
//                }, label: {
//                        Text("Compute")
//                }).buttonStyle(.borderedProminent)
//
//
//            List{
//                ForEach(arrayX.indices, id: \.self){ index in
//                    let num = arrayX[index]
//                    let funcVal = arrayFunc[index]
//                    HStack{
//                        Text("\(index + 1)")
//                            .foregroundColor(.blue)
//                        VStack{
//                            Text("x \(index + 1)= \(num)")
//                            Text("f(x\(index + 1)) = \(funcVal)")
//                        }
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//
//    func formula(x:Double) -> Double{
//        return x * log10(x) - 1.2 //мына жерде формуласын ауыстыр
//    }
//    func formula2(x:Double) -> Double{
//        return log10(x) + 1/log(10) //мына жерде формуласын ауыстыр
//    }
//}

//REGULA FALSI METHOD

//import SwiftUI
//
//struct ContentView: View {
//
//    @State var arrayX:[Double] = []
//    @State var arrayFunc:[Double] = []
//    @State var num0:Double = -0.5 // мына мандерды ауыстыр
//    @State var num1:Double = 0.5// мына мандерды ауыстыр
//
//    var body: some View {
//        VStack {
//            Spacer()
//            HStack{
//                Text("Function:")
//                Text("2x - log(x) - 7")
//            }
//            Button(action: {
//                let x: Double = num0 - ((num1 - num0)*formula(x: num0))/(formula(x: num1) - formula(x: num0))
//                let func1: Double = formula(x: x)
//
//                arrayX.append(x)
//                arrayFunc.append(func1)
//
//                if (func1 > 0){
//                    num0 = x
//                }else {
//                    num1 = x
//                }
//
//                }, label: {
//                        Text("Compute")
//                }).buttonStyle(.borderedProminent)
//
//            List{
//                ForEach(arrayX.indices, id: \.self){ index in
//                    let num = arrayX[index]
//                    let funcVal = arrayFunc[index]
//                    HStack{
//                        Text("\(index + 2)")
//                            .foregroundColor(.blue)
//                        VStack{
//                            Text("x \(index + 2)= \(num)")
//                            Text("f(x\(index + 2)) = \(funcVal)")
//                        }
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//
//    func formula(x:Double) -> Double{
//        return x * exp(x - sin(x)) //мына жерде формуласын ауыстыр
//    }
//}


//FALSE POSITION

//import SwiftUI
//
//struct ContentView: View {
//
//    @State var arrayX:[Double] = []
//    @State var arrayFunc:[Double] = []
//    @State var num0:Double = 2 // мына мандерды ауыстыр
//    @State var num1:Double = 3 // мына мандерды ауыстыр
//
//    var body: some View {
//        VStack {
//            Spacer()
//            HStack{
//                Text("Function:")
//                Text("x^6 - x^4 - x^3 - 1")
//            }
//            Button(action: {
//                let x: Double = (num0 + num1)/2
//                let func1: Double = formula(x: x)
//
//                arrayX.append(x)
//                arrayFunc.append(func1)
//
//                num0 = num1
//                num1 = x
//
//                }, label: {
//                        Text("Compute")
//                }).buttonStyle(.borderedProminent)
//
//            List{
//                ForEach(arrayX.indices, id: \.self){ index in
//                    let num = arrayX[index]
//                    let funcVal = arrayFunc[index]
//                    HStack{
//                        Text("\(index + 2)")
//                            .foregroundColor(.blue)
//                        VStack{
//                            Text("x \(index + 2)= \(num)")
//                            Text("f(x\(index + 2)) = \(funcVal)")
//                        }
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//
//    func formula(x:Double) -> Double{
//        return x * exp(x) - cos(x) //мына жерде формуласын ауыстыр
//    }
//}

import SwiftUI

struct Formulas{
    var falsePos = "[math]x2 = x0-(x1-x0)F(x0)/(F(x1)-F(x0))[/math]"
    var secant = "[math]x2=x1-((x1 - x0)F(x1))/(F(x1)-F(x0))[/math]"
    var bisection = "[math]x2 = ((x0 + x1)/2) = x2$[/math], if F(x2) is positive [math]$x3 = ((x0+x2)/2)$[/math], else [math]$x3 = ((x1+x2)/2)$[/math], and so on..."
    var newtonRapson = "[math]x(n+1)=x(n+1) = xn - (F(xn)/F'(xn))$[/math]"
    var regulaFalsi = "[math]x2=x0 - ((x1 - x0)F(x0))/(F(x1) - F(x0))[/math]"
}

struct ContentView: View {
    @State var formula = ""
    @State var derivative = ""
    
    @State var picked = 1
    
    @State var arrayX:[Double] = []
    @State var arrayFunc:[Double] = []
    
    @State var num0:Double = 0 // мына мандерды ауыстыр
    @State var num1:Double = 0 // мына мандерды ауыстыр
    
    @State var start = 2

    @State var current: Double = 0
    
    @State var formulas = Formulas()

    var body: some View {
        VStack {
            Picker(selection: $picked,label: Text("Picker"), content: {
                Text("False Position").tag(1) //False Position
                Text("Bisect").tag(2) //Bisection
                Text("New-Rapson").tag(3) //Newton-Rapson
                Text("Secant").tag(4) //Secant
                Text("Reg Falsi").tag(5) //Regula-Falsi
            }).pickerStyle(.segmented)

            
            HStack{
                VStack{
                    switch picked {
                    case 1 :
                        TextView(string: $formulas.falsePos)
                    case 2 :
                        TextView(string: $formulas.bisection)
                    case 3 :
                        TextView(string: $formulas.newtonRapson)
                    case 4 :
                        TextView(string: $formulas.secant)
                    default:
                        TextView(string: $formulas.regulaFalsi)
                    }
                }.frame(width: .infinity, height: 40)
            }.padding(.top)
            Text("DON'T FORGET TO UPDATE FORMULA!")
                .foregroundColor(.red)
            HStack{
                TextField("number 1", value: $num0, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .background(Color(hex: "#162780"))
                if picked != 3 {
                    TextField("number 2", value: $num1, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .background(Color(hex: "#162780"))
                }
            }.animation(.easeOut)
                .transition(.slide)
            HStack{
                Button(action: {
                    arrayX.removeAll()
                    arrayFunc.removeAll()
                    current = 0
                    start = 2
                    
                    num0 = 0
                    num1 = 0
                    
                    }, label: {
                            Text("Restart")
                            .font(.subheadline)
                    })
                .frame(width: 80, height: 40)
                .background(Color(hex: "#162780"))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                Button(action: {
                    switch picked {
                    case 1, 5 : //FALSE POSITION & FALSI METHOD
                        current = falsePosFormula(x0: num0, x1: num1)
                        
                        arrayX.append(current)
                        arrayFunc.append(expression(x: current))
                        
                        num0 = num1
                        num1 = current
                    case 2: //BISECTION
                        current = (num0 + num1)/2
                        
                        let currentFunc = expression(x: current)
                        
                        arrayX.append(current)
                        arrayFunc.append(expression(x: current))
                        
                        if currentFunc > 0 {
                            num1 = current
                        }else {
                            num0 = num1
                            num1 = current
                        }
                    case 3:
                        current = newtonRapsonFormula(x: num0)
                        arrayX.append(current)
                        arrayFunc.append(expression(x: current))
                        num0 = current
                        
                        start = 1
                    default:
                        current = secantFormula(x0: num0, x1: num1)
                        arrayX.append(current)
                        arrayFunc.append(expression(x: current))
                        num0 = num1
                        num1 = current
                    }
                    }, label: {
                            Text("Compute")
                            .font(.subheadline)
                    })
                .frame(width: 80, height: 40)
                .background(Color(hex: "#162780"))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
            }.animation(.easeOut)
                .transition(.slide)
            

            VStack{
                List{
                    ForEach(arrayX.indices, id: \.self){ index in
                        let num = arrayX[index]
                        let funcVal = arrayFunc[index]
                        HStack{
                            Text("\(index + start)")
                                .foregroundColor(.blue)
                            VStack{
                                Text("x \(index + start)= \(num)")
                                Text("f(x\(index + start)) = \(funcVal)")
                            }
                        }
                    }.listRowBackground(Color(hex: "#224c92"))
                }.animation(.easeOut)
                    .transition(.slide)
                    .background(Color(hex: "#1a1d2b"))
                    .scrollContentBackground(.hidden)
                    .cornerRadius(10)
            }.background(Color(hex: "#1a1d2b"))
            
        }
        .padding()
        .background(Color(hex: "#111420"))
    }
    
    func expression(x:Double) -> Double{
//        write formula here
        return pow(x, 3) - 2 * x - 5
    }
    func expressionDerivative(x:Double) -> Double{
//        write formula here
        return 4 * pow(x, 3) - 1
    }

    func falsePosFormula(x0:Double, x1:Double) -> Double {
        return x0 - (x1 - x0) * (expression(x: x0))/(expression(x: x1) - expression(x: x0))
    }
    
    func newtonRapsonFormula(x:Double) -> Double{
        return x - (expression(x: x))/(expressionDerivative(x: x))
    }
    
    func secantFormula(x0:Double, x1:Double) -> Double {
        return x1 - (x1 - x0) * (expression(x: x1))/(expression(x: x1) - expression(x: x0))
    }
}


