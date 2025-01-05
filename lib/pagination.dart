import 'package:flutter/material.dart';

class Pagination extends StatefulWidget {
  const Pagination({super.key});

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
final scrollController = ScrollController();

List<String> items = List.generate(15, (index)=> '${index + 1}' );

@override
  void initState() {
    super.initState();
    scrollController.addListener((){
      if(scrollController.position.maxScrollExtent == scrollController.offset){
      fetch();
    }
    });
  }

  @override
  void dispose() {
    scrollController.dispose(); 
    super.dispose();
  }
  fetch() async {
     setState(() {
      
      items.addAll(['A', 'B', 'C', 'D']);
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        itemCount: items.length + 1,
        itemBuilder: (_, index){
          if(index < items.length){
            return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.blue,
            child: Text('$index'),
          ),
        );
          } else {
            return Center(child: CircularProgressIndicator(),);
          }
        
      }),
    );
  }
}