 import 'package:flutter/material.dart';
import 'package:mobile_app/add_number.dart';
import 'package:mobile_app/utils/data-constants.dart';

 class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}
   TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  int selectedIndex = 0;
  List<Contact> contacts = List.empty(growable: true);

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return  
 Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const  Text('Contacts',
        style: TextStyle(color: Colors.white),),
        actions: [
        IconButton(
      icon:const Icon(Icons.search),
        color: Colors.white,

      onPressed: () {
        // Perform search functionality
      },
    ),
        ],
      ),
      body: Center(
        child:  contacts.isEmpty
            // ? const Icon(
            //     Icons.contact_emergency,
            //     size: 100,
            //     color: Colors.blue,
            //   )
          ? Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
               Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc_4VWClAkDc1qA7txSf-QuxBvS3H0NQwAiQ&usqp=CAU')),
                Text("You Don't Have Any Contacts Yet")
            ],
          )
           
            : Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  )
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            // barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("My title"),
                content: Container(
                  height: 130,
                  child: Column(
                    children: [
                      TextField(
                        controller: nameController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: ' Name',
                        ),
                      ),
                                                        SizedBox(height: 10,),

                      TextField(
                        controller: contactController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contact Number',
                        ),
                      )
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty) {
                        setState(() {
                                // Navigator.pop(context);
                          nameController.text = '';
                          contactController.text = '';
                          contacts.add(Contact(name: name, contact: contact));
                        });
                      }
                    },
                  )
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    
    );
 }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
          foregroundColor: Colors.white,
          child: Text(
            contacts[index].name[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contacts[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(contacts[index].contact),
          ],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    //
                     showDialog(
                        // barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("My title" ,
                            style: TextStyle(color: Colors.white),),
                            content: Container(
                              height: 130,
                              child: Column(
                                children: [
                                  TextField(
                                    controller: nameController,
                                    obscureText: false,
                                    decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText:contacts[selectedIndex].name
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  TextField(
                                    controller: contactController,
                                    
                                    obscureText: false,
                                    decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText:contacts[selectedIndex].contact

                                    ),
                                  )
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                   String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = contact;
                          selectedIndex = 0;
                        });
                      }
                    //
                                },
                              )
                            ],
                          );
                        },
                      );
                   
                  },
                  child: const Icon(Icons.edit)),
              InkWell(
                  onTap: (() {
                    //
                    setState(() {
                      contacts.removeAt(index);
                    });
                    //
                  }),
                  child: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );

  }


}
 
