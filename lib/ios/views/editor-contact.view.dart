import 'package:contacts_app/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  const EditorContactView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle:
                model == null ? Text('Novo Contato') : Text('Editar Contato'),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  CupertinoTextField(
                    placeholder: model?.name ?? "Nome",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoTextField(
                    placeholder: model?.phone ?? "Telefone",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoTextField(
                    placeholder: model?.email ?? "E-mail",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: CupertinoButton.filled(
                      child: Text('Salvar'),
                      onPressed: () => {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
