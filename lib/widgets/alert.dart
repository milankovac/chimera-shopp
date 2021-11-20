import 'package:flutter/material.dart';

class AlertDialogCustom extends StatelessWidget {
  final title;
  const AlertDialogCustom(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.white.withOpacity(0.8),
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                child: Text(title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Positioned(
                  bottom: 53,
                  child: Image.network(
                      "https://i.pinimg.com/originals/e4/d2/8f/e4d28f0fe61ea7752328c306a583ac26.gif",
                      width: 150,
                      height: 150)),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.check,color: Colors.black,),
              label: const Text('OK',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
