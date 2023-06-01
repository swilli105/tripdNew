//
//  ImageView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/19/23.
//

import SwiftUI

struct ImageView: View {
    @State private var image: Image?
    @State private var isEditing = false

    var body: some View {
        VStack {
            if let image = image {
                image
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .padding()
                    .onTapGesture {
                        isEditing.toggle()
                    }
            } else {
                Button(action: {
                    isEditing.toggle()
                }) {
                    Text("Add Image")
                }
                .padding()
            }
        }
        .sheet(isPresented: $isEditing) {
            ImagePickerView(image: $image)
        }
    }
}

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var image: Image?

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .photoLibrary
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePickerView>) {

    }

    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePickerView

        init(_ parent: ImagePickerView) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = Image(uiImage: uiImage)
            }

//            parent.imagePickerControllerDidFinish(picker)
        }

        func imagePickerControllerDidFinish(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
