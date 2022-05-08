import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:travel_app/models/travel.dart';

class DetailsScreen extends StatelessWidget {
  Travel travel;
  final expandedHeight = 300.0;
  final roundedHeight = 50.0;

  DetailsScreen({
    Key? key,
    required this.travel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              _buildSliverHead(),
              SliverToBoxAdapter(
                child: _buildDetails(),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 10,
              right: 10,
            ),
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
        delegate: DetailSliverDelegate(
      travel: travel,
      expandedHeight: expandedHeight,
      roundedHeight: roundedHeight,
    ));
  }

  Widget _buildDetails() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _buildUserInfo(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              textAlign: TextAlign.justify,
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 10.0,
              bottom: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 160,
            child: FeatureWidget(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Dui faucibus in ornare quam. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Sagittis id consectetur purus ut faucibus pulvinar elementum integer. Non enim praesent elementum facilisis leo vel fringilla est. Ornare aenean euismod elementum nisi quis. Ut faucibus pulvinar elementum integer. Accumsan sit amet nulla facilisi morbi tempus. Tortor at risus viverra adipiscing at in tellus integer feugiat. Amet commodo nulla facilisi nullam vehicula ipsum. Cras semper auctor neque vitae.',
              textAlign: TextAlign.justify,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                travel.writerImage,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                travel.writer,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                travel.job,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: (){
              Share.share(travel.writerImage,subject: travel.writer);
            },
            child: const Icon(
              Icons.share_rounded,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Travel travel;
  final double expandedHeight;
  final double roundedHeight;
  DetailSliverDelegate(
      {required this.travel,
      required this.expandedHeight,
      required this.roundedHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            travel.image,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: expandedHeight,
          ),
        ),
        Positioned(
          top: expandedHeight - roundedHeight - shrinkOffset,
          left: 0,
          child: Container(
            height: roundedHeight,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight - shrinkOffset - 120,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                travel.title,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                travel.location,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    throw true;
  }
}

class FeatureWidget extends StatelessWidget {
  FeatureWidget({Key? key}) : super(key: key);
  final _list = Travel.getMostPopularBlogs();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: SizedBox(
            width: 120,
            child: Image.asset(
              _list[index].image,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      separatorBuilder: (_, index) => const SizedBox(
        width: 15.0,
      ),
      itemCount: _list.length,
    );
  }
}
