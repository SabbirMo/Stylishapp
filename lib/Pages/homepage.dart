import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';
import 'package:stylishapp/Views/Grid%20View/grid_view.dart';
import 'package:stylishapp/Views/List%20Tile/list_tile_view.dart';
import 'package:stylishapp/Views/List%20View%20Builder/listviewside.dart';
import 'package:stylishapp/Views/Time/current_time.dart';
import 'package:stylishapp/Views/Unit/all_featured.dart';
import 'package:stylishapp/Views/Unit/container_view.dart';
import 'package:stylishapp/Views/Unit/hotsummer.dart';
import 'package:stylishapp/Views/Unit/pageview.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map> cetagories = [
    {
      'name' : 'Beauty',
      'picture' : 'assets/logo/beauty.png'
    },
    {
      'name' : 'Fashion',
      'picture' : 'assets/logo/fashion.png'
    },
    {
      'name' : 'Kids',
      'picture' : 'assets/logo/kids.png'
    },
    {
      'name' : 'Mens',
      'picture' : 'assets/logo/mens.png'
    },
    {
      'name' : 'Womens',
      'picture' : 'assets/logo/womens.png'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(image: AssetImage('assets/logo/stylish.png'),width: 115),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: const Image(image: AssetImage('assets/logo/Group.png'),
         ),
        ),
        actions: const [
          Image(image: AssetImage('assets/logo/profile.png'),
          )
        ],
      ),
    body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: Column(
        children: [
           TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: 'Search any Product..',
                hintStyle: const TextStyle(
                  color: Color(0xffBBBBBB)
                ),
                prefixIcon: const Icon(Icons.search_outlined),
                suffixIcon: const Icon(Icons.mic)
            ),
          ),
          const SizedBox(height: 15,),
          const AllFeatured(
            featured: "All Featured",
            sort: "Sort",
            filter: "Filter",
          ),
          const SizedBox(height: 12,),
          SizedBox(
            height: 80,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: cetagories.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 88,
                  child: ListTile(
                    title:Container(
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(cetagories[index]['picture']), fit: BoxFit.cover),
                        shape: BoxShape.circle
                      ),
                    ),
                    subtitle: Text(cetagories[index]['name'],
                    textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
          const PageViewList(),
          const SizedBox(height: 10),
          const CurrentTime(
            title: "Deal of the Day",
            subTitle: " 22h 55m 20s remaining ",
            icon: Icons.alarm,
            backgroundColor:Color(0xff4392F9),
          ),
          const SizedBox(height: 10),
          const GridViewList(),
          const ListTileView(),
          const SizedBox(height: 10),
          const ContainerView(),
          const SizedBox(height: 15),
          const CurrentTime(
            title: 'Trending Products ', 
            subTitle: ' Last Date 29/02/22', 
            icon: Icons.calendar_month, 
            backgroundColor: AppColors.primaryColors,
          ),
          const SizedBox(height: 15),
          const ListViewSide(),
          const HotSummer(),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Sponserd",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                 ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*100,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(image: AssetImage('assets/images/Mask Group.png'),
                  fit: BoxFit.cover
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('up to 50% Off',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: SvgPicture.asset('assets/svg/Vector.svg',  width: 10,),
                    )
                  ],
                ),
              )
            ],
          )
        ],
       ),
      ),
    )
   );
  }
}