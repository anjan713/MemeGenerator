import 'package:flutter/material.dart';
import 'package:memegeneratorapp/domain/meme_controller.dart';
import '../domain/model/meme.dart';
import '../locator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Meme recieveMeme;
  Meme newMeme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter',
                style: TextStyle(fontSize: 22),
              ),
              Text(
                'Generator',
                style: TextStyle(fontSize: 22, color: Colors.purple),
              ),
            ],
          ),
        ),
        body: Container(
            color: Colors.black,
            child: newMeme != null
                ? Center(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber),
                                ),
                                child: recieveMeme != null
                                    ? Image(
                                        image: NetworkImage(newMeme.image),
                                        fit: BoxFit.fill,
                                        height: 400,
                                        width: 400,
                                      )
                                    : CircularProgressIndicator()),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: Text(
                    'No Meme from Server',
                    style: TextStyle(color: Colors.white),
                  ))),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.next_plan_sharp),
          onPressed: () async {
            setState(() {
              print('I got clicked');
              recieveMeme = null;
            });
            recieveMeme = await locator.get<MemeController>().fetchMeme();
            setState(() {
              newMeme = recieveMeme;
              print(recieveMeme);
              print('Where is response');
              // recieveMeme = null;
            });
          },
        ));
  }
}
