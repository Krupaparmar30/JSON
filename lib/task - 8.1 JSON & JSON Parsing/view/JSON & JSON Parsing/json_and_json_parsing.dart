import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../provider/json_provider.dart';

class json_and_json_parsing extends StatelessWidget {
  const json_and_json_parsing({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PhotoProvider photoProviderFalse =
        Provider.of<PhotoProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
              child: Text(
            'JSON DATA',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: ListView.builder(
          itemCount: photoProviderFalse.photoesList.length,
          itemBuilder: (context, index) => Card(
            color: Colors.grey.shade100,
            child: ListTile(
              title: Text(photoProviderFalse.photoesList[index].title),
            
              leading: Container(
                height: height*0.180,
                width: width*0.2,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(photoProviderFalse.photoesList[index].url),
                        fit: BoxFit.cover
            
                    )
                ),
              ),
            ),
          ),
           ),

        );
  }
}
