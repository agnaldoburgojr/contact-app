import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Endereço do contato'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            child: ListTile(
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
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Pesquisar...'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue.withOpacity(0.2),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.my_location),
      ),
    );
  }
}
