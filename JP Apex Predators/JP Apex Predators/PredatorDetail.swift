//
//  PredatorDetail.swift
//  JP Apex Predators
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator

    var body: some View {
        ScrollView {

            VStack(alignment: .trailing) {
                Image(predator.type)
                    .resizable()
                    .scaledToFit()

                Image(predator.name.lowercased().filter { $0 != " " })
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width / 1.5,
                           height: UIScreen.main.bounds.height / 4)
                    .shadow(color: .black, radius: 6, x: 0, y: 0)
                    .offset(y: -210)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z:0))

                VStack(alignment: .leading) {
                    Text(predator.name)
                        .font(.largeTitle)
                        .padding(.bottom, 8)

                    Text("Appears in:")
                        .font(.title3)

                    ForEach(predator.movies, id: \.self) { movie in
                        Text("•" + movie)
                            .font(.subheadline)
                    }

                    Text("Movie Moments")
                        .font(.title)
                        .padding(.top, 15)

                    ForEach(predator.movieScenes) { scene in
                        Text(scene.movie)
                            .font(.title2)
                            .padding([.top, .bottom], 1)

                        Text(scene.sceneDescription)
                            .padding(.bottom, 15)
                    }

                    Text("Read More:")
                        .font(.caption)
                    Link(predator.link, destination: URL(string: predator.link)!)
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                .padding(.top, -230)
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct PredatorDetail_Previews: PreviewProvider {
    static var previews: some View {
        let movieScene1 = MovieScene(id: 3,
                                    movie: "Jurassic Park III",
                                    sceneDescription: "The film starts off with Dr. Grant and his colleague Billy discussing a Velociraptor’s communicative intelligence. Billy uses a 3D printer to replicate the larynx of a Velociraptor. When Dr. Grant and the group get stranded on the island, his colleague Billy steals two Velociraptor eggs unknown to the others. When the survivors reach the abandoned laboratory, a raptor sneaks in there and attacks Amanda Kirby. The group runs to the cages and traps one of them. We see its communicative abilities when it actually calls the other Velociraptors for help. The survivors run through a group of Corythosaurus and Parasaurolophus and into the forest. Amanda, Paul and Billy hide in the trees while Dr. Grant is still on the ground. The raptors injure Udesky and set a trap to lure the others down from the tree. Amanda Kirby almost falls from the tree but is saved and Dr. Grant is confronted by a Velociraptor. Eric Kirby comes to his rescue and sprays a gas can and the raptors flee.\n\nWe then see the raptors at the climax of the movie when the survivors are making their way back to the beach. The Velociraptors surround the group and the female raptor challenges Amanda Kirby for the eggs that Billy stole earlier. She hands over the eggs and Dr. Grant uses the imitation raptor larynx to fool the raptors into running off. The survivors then escape the island.")

        let movieScene2 = MovieScene(id: 4,
                                    movie: "Jurassic World",
                                    sceneDescription: "The T-rex mainly stayed in her paddock for most of the incident until Claire Dearing told Lowery Cruthers to open her enclosure's door and let her out after Claire's nephew Gray Mitchell told her that another dinosaur was needed to help kill the Indominus rex. Using a flare, Claire guided the T. rex to the Indominus and threw the flare at the hybrid. Crashing through Main Street's mounted Spinosaurus skeleton, the Tyrannosaurus challenged the I-rex with an almighty bellow, not knowing exactly what this new creature was but identifying it as a threat. When the hybrid did not back down, the T-rex attacked her viciously.\n\nInitially, the Tyrannosaurus had the advantage, landing several bites to the I. rex's neck, but the elder dinosaur was fighting from a territorial standpoint whilst the hybrid was aiming to kill and the tables were quickly turned, with the T-rex thrown down against the Jurassic Traders Outpost, destroying it in the process and almost killing Owen Grady, Gray, and Zach Mitchell.\n\nHowever, before the Indominus could kill her, Blue, the surviving Velociraptor of the battle, intervened by lunging onto the I. rex, giving the T. rex time to get up off the ground, now fighting to kill. With Blue latched onto the hybrid, the old T. rex grabbed the Indominus dragging her and slamming her body into the nearby buildings of Main Street. At one point, Blue rode on the tyrannosaur's back while she smashed the I. rex into one of the buildings. She finally flung the hybrid near the edge of the Jurassic World Lagoon where the Mosasaurus that resided there leaped out of the water to snatch the I-rex and drag it underwater, drowning the hybrid. After the fight, the T. rex and Blue looked at each other for a brief moment. Despite a previous animosity and hostile encounter with raptors, the T-rex decided to spare Blue either because she is too injured and exhausted, or because she doesn't see her as a threat. Either way, the old Tyrannosaurus limps away to recover from the injuries she sustained from the fight.\n\nIn the aftermath of the incident, the T-rex stomped onto the Control Center helipad and took in the ruined park that had become void of any people, warming her wounds in the rising sun before letting out her signature roar, claiming the island as hers once again.")

        let predator = ApexPredator(id: 3,
                                    name: "Tyrannosaurus rex",
                                    type: "land",
                                    movies: ["Jurassic Park", "The Lost World: Jurassic Park",
                                             "Jurassic Park III", "Jurassic World", "Jurassic World: Fallen Kingdom"],
                                    movieScenes: [movieScene1, movieScene2],
                                    link: "https://jurassicpark.fandom.com/wiki/Tyrannosaurus_rex")
        PredatorDetail(predator: predator).preferredColorScheme(.dark)
    }
}
