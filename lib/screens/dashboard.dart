import 'package:flutter/material.dart';
// import 'package:'; // url do contacts_list.dart

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
            // child: Image.network('https://apod.nasa.gov/apod/image/2108/phas_jpl_3254.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContactsList(),
                    )
                  );
                },
                child: Container(
                  height: 100,
                  width: 200,
                  color: Theme.of(context).primaryColor,
                  child: Column( 
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 24
                      ),
                      Text(
                        'Contatos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        )
                      )
                    ]
                  ]
                ),
              ), 
            ) 
          ),
        ]
      ),
    );
  }
}
