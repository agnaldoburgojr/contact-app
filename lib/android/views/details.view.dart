import 'package:contacts_app/android/views/address.view.dart';
import 'package:contacts_app/android/views/editor-contact.view.dart';
import 'package:contacts_app/models/contact.model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 10,
          ),
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Agnaldo Burgo Junior',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '(14)996257952',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Text(
            'agnaldoburgojr@gmail.com',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: () => {},
                color: Theme.of(context).primaryColor,
                child: Icon(Icons.phone, color: Theme.of(context).accentColor),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: () => {},
                color: Theme.of(context).primaryColor,
                child: Icon(Icons.email, color: Theme.of(context).accentColor),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: () => {},
                color: Theme.of(context).primaryColor,
                child: Icon(Icons.camera_enhance,
                    color: Theme.of(context).accentColor),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Endereço",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rua do Desenvolvedor, 256",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "Marília/SP",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            isThreeLine: true,
            trailing: FlatButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressView(),
                  ),
                ),
              },
              child:
                  Icon(Icons.pin_drop, color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditorContactView(
                      model: ContactModel(
                        id: '1',
                        name: 'Agnaldo Burgo Junior',
                        email: 'agnaldoburgojr@gmail.com',
                        phone: '(14) 99625-7952',
                      ),
                    ),
                  ),
                ),
              },
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.edit,
            color: Theme.of(context).accentColor,
          )),
    );
  }
}
