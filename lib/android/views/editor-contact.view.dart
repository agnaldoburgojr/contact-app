import 'package:contacts_app/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  const EditorContactView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: model == null ? Text('Novo Contato') : Text('Editar Contato'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  initialValue: model?.name,
                  onSaved: (val) => {
                    model.name = val,
                  },
                ),
                TextFormField(
                  initialValue: model?.phone,
                  onSaved: (val) => {
                    model.phone = val,
                  },
                ),
                TextFormField(
                  initialValue: model?.email,
                  onSaved: (val) => {
                    model.email = val,
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: FlatButton.icon(
                    color: Theme.of(context).primaryColor,
                    onPressed: () => {},
                    icon: Icon(
                      Icons.save,
                      color: Theme.of(context).accentColor,
                    ),
                    label: Text(
                      'Salvar',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
