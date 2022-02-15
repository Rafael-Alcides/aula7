import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Card Nft';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Card(
          color: const Color.fromARGB(255, 32, 13, 85),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(
                    'https://images.unsplash.com/photo-1618005198919-d3d4b5a92ead?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
              ),
              const ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Lifgood # 1233',
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 179, 151),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Aumenta o foco e concentração',
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 93, 158),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "0.99 ETH",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.watch),
                        Text(
                          "Resta 3 dias",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.white60,
                height: 1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://media-exp1.licdn.com/dms/image/C4D03AQGDmld-qEjlrw/profile-displayphoto-shrink_800_800/0/1643936159115?e=1650499200&v=beta&t=Y7yF5J_E3YUqRERCgYBZExRkaWGDb53FW_67W12-5c0"))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      "Criado por",
                      style: TextStyle(
                          color: Color.fromARGB(255, 13, 93, 158),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      "Rafael Alcides",
                      style: TextStyle(color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize:15),
                      
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
