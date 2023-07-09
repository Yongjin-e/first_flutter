import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  String url =
      'https://health.chosun.com/site/data/img_dir/2023/05/31/2023053102582_0.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewScreen'),
      ),
      body: gridviewBuilder(),
    );
  }

  Widget gridviewBase() {
    return GridView(
      gridDelegate: delegate(),
      padding: EdgeInsets.all(10),
      children: [
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
        Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  SliverGridDelegate delegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 1,
      mainAxisExtent: 100
    );
  }

  Widget gridviewBuilder(){
    return GridView.builder(
        gridDelegate: delegate(),
        itemBuilder: (context, index) {
          return Image.network(url);
        },
    );
  }
}
