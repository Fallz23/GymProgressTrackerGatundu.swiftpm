import SwiftUI

struct MainView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    @State var exercises = [Exercise(image: "benchPress", name: "Bench Press", sets: 0, reps: 0, restTime: 0.0, max: 0), Exercise(image: "deadlift", name: "Deadlift", sets: 0, reps: 0, restTime: 0.0, max: 0), Exercise(image: "barbell squat", name: "Squat", sets: 0, reps: 0, restTime: 0, max: 0), Exercise(image: "front squat", name: "Front Squat", sets: 0, reps: 0, restTime: 0.0, max: 0)]
    
    @State var selectedTab = 0
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color(red: 0.1, green: 0.1, blue: 0.1)
                    .ignoresSafeArea()
                VStack(spacing: 24) {
                    
                    Text("Gym Tracker")
                        .font(.custom("Arial", size: 40))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    Spacer()
                    
                    
                    ScrollView{
                        
                        ForEach(0..<exercises.count, id: \.self ){i in
                            NavigationLink(destination: InfoView(reps: $exercises[i].reps,sets: $exercises[i].sets, restTime: $exercises[i].restTime,max: $exercises[i].max, image: exercises[i].image)){
                                
                                HStack{
                                    Text(exercises[i].name)
                                        .font(.custom("Arial", size: 40))
                                        .foregroundStyle(.white)
                                    
                                    Spacer()

                                    Image(exercises[i].image)
                                        .resizable()
                                        .cornerRadius(20)
                                        .frame(width: 200, height: 200)
                                }
                            
                            }
                        }
                        
                    }//.frame(width: .infinity, height: .infinity)
                       // .background(.black)
                    
                    //   Text("hi")
                    
                    
                    
                    
                    //       .background(.green)
                    
                    //   Text("hello worldy1")
                }//.frame(width: .infinity, height: .infinity)
                   // .background(.black)
                
            }
            
            TabView(selection: $selectedTab){
               SwiftUIView()
                    .tag(0)
                    .tabItem{
                        Label("info", systemImage: "person.3.fill")
                    }
                
                SwiftUIView_2()
                    .tag(1)
                    .tabItem{
                        Label("exercise", systemImage: "person.3.fill")
                    }
                
            }
            
        }
    }
}
