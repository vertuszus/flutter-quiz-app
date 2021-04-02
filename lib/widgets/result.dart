import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Низкий результат. Необходимо повторить материал';
      img = Image.asset('assets/images/low.jpg');
    } else if ((4 <= count && count <= 7)) {
      msg = 'Средний результат. Попробуйте пройти тест заново';
      img = Image.asset('assets/images/medium.jpg');
    } else {
      msg = 'Поздравляем, тест пройден успешно!';
      img = Image.asset('assets/images/high.jpg');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              5.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: <Color>[
            Colors.indigo,
            Colors.indigoAccent,
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),

          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.black,
          ),
          Text(
            'Вы ответили верно на $count из $total вопросов',
          ),
          Divider(
            color: Colors.black,
          ),

          // ignore: deprecated_member_use
          FlatButton(
            child: Text(
              'Пройти тест еще раз',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}
