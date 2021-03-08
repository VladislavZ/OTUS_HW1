//
//  ListScreen.swift
//  SUI
//
//  Created by Vladyslav Zubkov on 08.03.2021.
//

import SwiftUI

struct ListScreen: View {
    
    @EnvironmentObject var viewModel: ListScreenViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.recipts) { item in
                    RecipeListCell(recipe: item)
                }
            }
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}

struct RecipeListCell: View {
    
    let recipe: Recipe
    
    var body: some View {
        Text(recipe.title ?? "")
    }
}


final class ListScreenViewModel: ObservableObject {
    
    @Published private(set) var recipts: [Recipe] = .init()
    
    init() {
        RecipeAPI.getRecipe(i: "chicken") { [weak self] (list, error) in
            self?.recipts = list?.results ?? []
        }
    }
}

extension Recipe: Identifiable {
    public var id: String {
        return title ?? UUID().uuidString
    }
}
