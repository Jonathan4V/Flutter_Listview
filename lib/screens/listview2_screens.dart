import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview tipo2'),
      ),
      body: ListView.separated(
              //Obtener el tamaño de mi lista
              itemCount: games.length,
              //Creamos el constructor de i lista
              itemBuilder: (context, index)=> ListTile(
                //asignamos el titulo a partir de mi lista
                title: Text(games[index]),
                //asignamos el icono de cada elemto
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                onTap: (){
                  var seleccion=games[index];
                  print(seleccion);
                }
                
              ),
              separatorBuilder: (_,__)=>Divider(),
            )
    );
  }
}
