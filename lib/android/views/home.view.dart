import 'package:contacts_app/android/views/details.view.dart';
import 'package:contacts_app/android/views/editor-contact.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Meus Contatos'),
        centerTitle: true,
        leading: FlatButton(
          onPressed: () => {},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg'),
                ),
              ),
            ),
            title: Text('Agnaldo Burgo Junior'),
            subtitle: Text('14 996247952'),
            trailing: FlatButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView(),
                  ),
                ),
              },
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(),
            ),
          ),
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
