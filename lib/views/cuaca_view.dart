import 'package:cuaca/providers/cuaca_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CuacaView extends StatefulWidget {
  @override
  _CuacaViewState createState() => _CuacaViewState();
}

class _CuacaViewState extends State<CuacaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CuacaProvider>(
        builder: (context, provider, _) {
          return ListView(
            children: [
              Padding(
                  padding: EdgeInsets.all(18.0),
                  child: TextFormField(
                    onChanged: (value) => provider.beginSearchUser(value: value),
                    controller: provider.txtSearch,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                    ),
                   ),
                  ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: provider?.cuacaModel?.items?.length??0,
                itemBuilder: (context, index){
                  var data = provider?.cuacaModel?.items;
                  return ListTile(
                    leading: Image.network(data[index]),
                    title: Text('${data[index]}'),
                  );

                },
              )
            ],
          );
        }
      ),
    );
  }
}
