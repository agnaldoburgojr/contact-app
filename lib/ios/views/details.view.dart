import 'package:contacts_app/ios/styles.dart';
import 'package:contacts_app/ios/views/address.view.dart';
import 'package:contacts_app/ios/views/editor-contact.view.dart';
import 'package:contacts_app/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Contato'),
            trailing: CupertinoButton(
              child: Icon(CupertinoIcons.pen),
              onPressed: () => {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
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
            ),
          ),
          SliverFillRemaining(
              child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
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
                  CupertinoButton(
                    onPressed: () => {},
                    child: Icon(CupertinoIcons.phone),
                  ),
                  CupertinoButton(
                    onPressed: () => {},
                    child: Icon(CupertinoIcons.mail),
                  ),
                  CupertinoButton(
                    onPressed: () => {},
                    child: Icon(CupertinoIcons.photo_camera),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: double.infinity),
                            Text(
                              'Endereço',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Agnaldo Burgo Junior',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '14 996247952',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CupertinoButton(
                      child: Icon(
                        CupertinoIcons.location,
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => AddressView(),
                          ),
                        ),
                      },
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
