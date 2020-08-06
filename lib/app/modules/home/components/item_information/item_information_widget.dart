import 'package:flutter/material.dart';

class ItemInformationWidget extends StatelessWidget {
  final String titulo;
  final String inicio;
  final String fim;
  final String descricao;

  const ItemInformationWidget(
      {Key key, this.titulo, this.inicio, this.fim, this.descricao})
      : super(key: key);

  Widget atualmente() {
    return Container(
      padding: EdgeInsets.only(top: 1, bottom: 2, left: 5, right: 5),
      child: Text(
        "Atualmente",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo ?? "",
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Icon(Icons.date_range),
                SizedBox(
                  width: 10,
                ),
                inicio == null
                    ? atualmente()
                    : Text(
                        inicio,
                        style: TextStyle(color: Colors.teal, fontSize: 16),
                      ),
                Text(
                  " - ",
                  style: TextStyle(color: Colors.teal, fontSize: 16),
                ),
                fim == null
                    ? atualmente()
                    : Text(
                        fim,
                        style: TextStyle(color: Colors.teal, fontSize: 16),
                      ),
              ],
            ),
          ),
          Text(
            descricao ?? "",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
