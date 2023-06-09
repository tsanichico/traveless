import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:traveless/models/categories.dart';
import 'package:traveless/models/topdestination.dart';
import 'package:traveless/ui/screens/detail_screen.dart';
import 'package:traveless/utils/app_color.dart';
import 'package:traveless/utils/app_typography.dart';
import 'package:traveless/widgets/categories_card.dart';
import 'package:traveless/widgets/top_destination.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchValue = '';
  final List<String> _suggestions = [
    'Danau',
    'Gunung',
    'Pantai',
    'Desa',
  ];

  bool isButtonPressed1 = false;
  bool isButtonPressed2 = false;
  bool isButtonPressed3 = false;
  bool isButtonPressed4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo.png',
                  width: 120,
                  height: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hej, Maxie',
                      style: AppTypography.heading6.copyWith(
                        color: AppColor.grey2,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Discover and Find \nYour Places in the World',
                      style: AppTypography.Heading4.copyWith(
                        color: AppColor.black1,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - (2 * 22),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.grey3,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                            ),
                            child: TypeAheadFormField<String>(
                              textFieldConfiguration: TextFieldConfiguration(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                  icon: Icon(
                                    Icons.search,
                                  ),
                                ),
                              ),
                              suggestionsCallback: (pattern) async {
                                return await fetchSuggestions(pattern);
                              },
                              itemBuilder: (context, suggestion) {
                                return ListTile(
                                  title: Text(suggestion),
                                );
                              },
                              onSuggestionSelected: (suggestion) {
                                setState(() {
                                  searchValue = suggestion;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      isButtonPressed1 = true;
                                      isButtonPressed2 = false;
                                      isButtonPressed3 = false;
                                      isButtonPressed4 = false;
                                    },
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: isButtonPressed1
                                      ? AppColor.grey5
                                      : AppColor.white,
                                  elevation: 0,
                                ),
                                child: Text(
                                  'All',
                                  style: isButtonPressed1
                                      ? AppTypography.heading6.copyWith(
                                          fontSize: 14,
                                          color: isButtonPressed1
                                              ? AppColor.black1
                                              : AppColor.grey4,
                                        )
                                      : AppTypography.Body5.copyWith(
                                          fontSize: 14,
                                          color: isButtonPressed1
                                              ? AppColor.black1
                                              : AppColor.grey4,
                                        ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isButtonPressed1 = false;
                                  isButtonPressed2 = true;
                                  isButtonPressed3 = false;
                                  isButtonPressed4 = false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonPressed2
                                    ? AppColor.grey5
                                    : AppColor.white,
                                elevation: 0,
                              ),
                              child: Text(
                                'Nearby',
                                style: isButtonPressed2
                                    ? AppTypography.heading6.copyWith(
                                        fontSize: 14,
                                        color: isButtonPressed2
                                            ? AppColor.black1
                                            : AppColor.grey4,
                                      )
                                    : AppTypography.Body5.copyWith(
                                        fontSize: 14,
                                        color: isButtonPressed2
                                            ? AppColor.black1
                                            : AppColor.grey4,
                                      ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isButtonPressed1 = false;
                                  isButtonPressed2 = false;
                                  isButtonPressed3 = true;
                                  isButtonPressed4 = false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonPressed3
                                    ? AppColor.grey5
                                    : AppColor.white,
                                elevation: 0,
                              ),
                              child: Text(
                                'Populer',
                                style: isButtonPressed3
                                    ? AppTypography.heading6.copyWith(
                                        fontSize: 14,
                                        color: isButtonPressed3
                                            ? AppColor.black1
                                            : AppColor.grey4,
                                      )
                                    : AppTypography.Body5.copyWith(
                                        fontSize: 14,
                                        color: isButtonPressed3
                                            ? AppColor.black1
                                            : AppColor.grey4,
                                      ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isButtonPressed1 = false;
                                  isButtonPressed2 = false;
                                  isButtonPressed3 = false;
                                  isButtonPressed4 = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonPressed4
                                    ? AppColor.grey5
                                    : AppColor.white,
                                elevation: 0,
                              ),
                              child: Text(
                                'Best Deal',
                                style: isButtonPressed4
                                    ? AppTypography.heading6.copyWith(
                                        fontSize: 14,
                                        color: isButtonPressed4
                                            ? AppColor.black1
                                            : AppColor.grey4,
                                      )
                                    : AppTypography.Body5.copyWith(
                                        fontSize: 14,
                                        color: isButtonPressed4
                                            ? AppColor.black1
                                            : AppColor.grey4,
                                      ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Categories',
                              style: AppTypography.heading6.copyWith(
                                fontSize: 18,
                                color: AppColor.black1,
                              ),
                            ),
                            Text(
                              'Lihat semua',
                              style: AppTypography.Body5.copyWith(
                                  fontSize: 12, color: AppColor.grey3),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 118,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CategoriesCardWidget(
                                CatCard(
                                    id: 1,
                                    name: 'Danau',
                                    imageUrl: 'assets/danau.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CategoriesCardWidget(
                                CatCard(
                                    id: 1,
                                    name: 'Gunung',
                                    imageUrl: 'assets/gunung.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CategoriesCardWidget(
                                CatCard(
                                    id: 1,
                                    name: 'Pantai',
                                    imageUrl: 'assets/pantai.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CategoriesCardWidget(
                                CatCard(
                                    id: 1,
                                    name: 'Desa',
                                    imageUrl: 'assets/desa.png'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Destinasi',
                              style: AppTypography.heading6.copyWith(
                                fontSize: 18,
                                color: AppColor.black1,
                              ),
                            ),
                            Text(
                              'Lihat semua',
                              style: AppTypography.Body5.copyWith(
                                  fontSize: 12, color: AppColor.grey3),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 193,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen()),
                                  );
                                },
                                child: TopDestinationWidget(
                                  TopDesCard(
                                    id: 1,
                                    name: 'Pantai Ubud',
                                    imageUrl: 'assets/pantai.png',
                                    location: 'Bali, Indonesia',
                                    icon: IconModel(
                                      iconData: Icons.place,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TopDestinationWidget(
                                TopDesCard(
                                  id: 2,
                                  name: 'Gunung Fuji',
                                  imageUrl: 'assets/gunung.png',
                                  location: 'Tokyo, Japan',
                                  icon: IconModel(
                                    iconData: Icons.place,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<String>> fetchSuggestions(String pattern) async {
    await Future.delayed(Duration(milliseconds: 300));
    return _suggestions
        .where((suggestion) =>
            suggestion.toLowerCase().contains(pattern.toLowerCase()))
        .toList();
  }
}
