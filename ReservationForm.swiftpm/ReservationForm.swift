//
//  ReservationForm.swift
//  ReservationForm
//
//  Created by RabidGeek on 12/13/23.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type Your Name",
            text: $customerName,
            onEditingChanged: {status in
                print(status)
            })
            .onSubmit({
                print("Submitted")
            })
        }
        .padding()
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
