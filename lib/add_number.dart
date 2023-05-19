// import 'package:flutter/material.dart';
// import 'package:mobile_app/utils/data-constants.dart';


// class AddNumbers extends StatefulWidget {
//   const AddNumbers({super.key});

//   @override
//   State<AddNumbers> createState() => _AddNumbersState();
// }

// class _AddNumbersState extends State<AddNumbers> {
//  TextEditingController nameController = TextEditingController();
//   TextEditingController contactController = TextEditingController();
//   List<Contact> contacts = List.empty(growable: true);



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text(
//           "Add",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(60),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 50,
//             ),
//             Container(
//               width: 280,
//               child: TextField(
//                               controller: nameController,

//                 decoration: InputDecoration(
//                   labelText: "Name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
          
//             const SizedBox(height: 10),
//             Container(
//               width: 280,
//               child: TextField(
//                               controller: contactController,
//               keyboardType: TextInputType.number,
//               maxLength: 11,

//                 decoration: InputDecoration(
//                   labelText: "Phone Number",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//         ElevatedButton(onPressed: ( ){

//             String name = nameController.text.trim();
//                       String contact = contactController.text.trim();
//                       if (name.isNotEmpty && contact.isNotEmpty) {
//                         setState(() {
//                                 // Navigator.pop(context);
//                           nameController.text = '';
//                           contactController.text = '';
//                           contacts.add(Contact(name: name, contact: contact));
//                         });
//                       }
//         }, child:const Text("Save")),


//            const SizedBox(height: 10),
//             // contacts.isEmpty
//             //     ? const Text(
//             //         'No Contact yet..',
//             //         style: TextStyle(fontSize: 22),
//             //       )
//             //     : Expanded(
//             //         child: ListView.builder(
//             //           itemCount: contacts.length,
//             //           itemBuilder: (context, index) => getRow(index),
//             //         ),
//             //       )
//           ],
//         ),
//       ),
//     );
//   }



// }

