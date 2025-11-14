

import SwiftUI

struct InfoView: View {
    
    @Binding var reps: Int
    @Binding var sets: Int
    @Binding var restTime: Double
    @Binding var max: Int
    @State var image: String
    
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                // Image and label
                HStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                    //.frame(width: 80, height: 80)
                    
                    
                }
                
                    HStack{
                        Text("One Rep Max(lbs)")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                     //   TextField("One Rep Max", value: $max, formatter: NumberFormatter())
                       //     .foregroundStyle(.white)
                        
                        Text("\(max)")
                            .foregroundStyle(.white)
                        
                        Slider(
                            value: Binding<Double>(
                                get: { Double(max) },
                                set: { newValue in
                                    // Round to nearest multiple of 5
                                    max = Int((newValue / 5).rounded() * 5)
                                }
                            ),
                            in: 45...400
                        )
                    }
                    HStack{
                        Text("How many sets?")
                            .foregroundStyle(.white)
                            .font(.headline)
                        
                        TextField("sets?", value: $sets,formatter: NumberFormatter())
                            .foregroundStyle(.white)
                        
                        Text("How many reps?")
                            .foregroundStyle(.white)
                            .font(.headline)
            
                        TextField("reps?", value: $reps,formatter: NumberFormatter())
                            .foregroundStyle(.white)
                        
                        
                    }
                HStack{
                    Text("How long did you rest for?")
                        .foregroundStyle(.white)
                        .font(.headline)
                    
                    TextField("How long?", value: $restTime, formatter: NumberFormatter())
                        .foregroundStyle(.white)
                }
                
                
                Spacer()
            }
            .padding()
        }
    }
}
