//
//  Generation.swift
//  OutLoop01
//
//  Created by 何徐宸 on 2/27/23.
//

import SwiftUI
import OpenAIKit

final class ViewModel:ObservableObject{
    private var openai: OpenAI?
    func setup(){
        openai = OpenAI(Configuration(
            organization: "Personal",
            apiKey:"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"))
    }
    
    func generateImage(prompt:String) async -> UIImage?{
        guard let openai = openai else{
            return nil
        }
        do
        {
            let params = ImageParameters(
                prompt:prompt,
                resolution: .medium,
                responseFormat: .base64Json
            )
            let result = try await openai.createImage(parameters: params)
            let data = result.data[0].image
            let image = try openai.decodeBase64Image(data)
            return image
        }
        catch{
            print(String(describing: error))
            return nil
        }
    }
}

struct Generation: View {
    @ObservedObject var viewModel = ViewModel()
    @State var text = ""
    @State var image: UIImage?
    
    var body: some View {
        NavigationView {
            VStack{
                if let image = image{
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width:150,height:150)
                }
                else{
                    TextField("Type some prompts for the DALL-E", text: $text)
                        .padding()
                    Button("Generate")
                    {
                        if !text.trimmingCharacters(in: .whitespaces).isEmpty{
                            Task{
                                let result = await viewModel.generateImage(prompt: text)
                                if result == nil{
                                    print("failed to get image")
                                }
                                self.image = result 
                            }
                        }
                    }
                }
            }
        }.navigationTitle("DALL-E Generator")
            .onAppear{
                viewModel.setup()
            }.padding()
    }
}

struct Generation_Previews: PreviewProvider {
    static var previews: some View {
        Generation()
    }
}
