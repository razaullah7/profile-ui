import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List dataList = [
    ['Clients Briefs', '10-10-2023'],
    ['CNN B2B', '10-10-2023']
  ];

  List<String> images = <String>[
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  ];

  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
    return Scaffold(
     
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff000119),
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Icon(Icons.filter_alt_rounded),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: Color(0xff000119),
              border: Border.all(width: 0.0,),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(80),
              )),
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),

          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'My Profile',
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontFamily: 'Muli-Regular',
                      fontWeight: FontWeight.bold),
                ),
              ),
               SizedBox(
                height: height *0.01,
              ),
              Center(
                  child: Image.asset(
                './images/pro.png',
                height: 70,
              )),
               Padding(
                padding: EdgeInsets.symmetric(vertical: height *0.01),
                child: Text(
                  'Flurance Katy',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Muli-Bold'),
                ),
              ),
              const Text(
                'Team Leader',
                style: TextStyle(
                  color: Color(0xffFFD032),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Muli-Regular',
                ),
              ),
               SizedBox(
                height: height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableColumn(
                    item: '67',
                    name: 'Folder',
                  ),
                  ReusableColumn(
                    item: '890',
                    name: 'Items',
                  ),
                  ReusableColumn(
                    item: '10GB',
                    name: 'Used',
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff000119),
                border: Border.all(
                  width: 0.0,color: Colors.transparent
                )),
            width: double.infinity,
            margin: EdgeInsets.zero,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0,color: Colors.transparent),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(80))),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height *0.02,
                    ),
                    //my folder
                    const Text(
                      'My Folder',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Muli-Bold',
                      ),
                    ),
                    SizedBox(height: height * 0.01,),
                    Expanded(
                        child: ListView.builder(
                            itemCount: dataList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 220,
                                  
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF8F8F8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.folder,
                                              color: Color(0xffFFD032),
                                              size: 45,
                                            ),
                                            ImageStack(
                                              imageList: images,
                                              imageRadius: 35,
                                              imageCount: 3,
                                              imageBorderWidth: 0,
                                              totalCount: images.length,
                                              backgroundColor:
                                                  Colors.purpleAccent.shade100,
                                              imageBorderColor:
                                                  Colors.transparent,
                                              extraCountBorderColor:
                                                  Colors.transparent,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          dataList[index][0],
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff000119),
                                              fontFamily: 'Muli-Bold',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        
                                        Text(
                                          'Created: ' + dataList[index][1],
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffC5C5C5),
                                            fontFamily: 'Muli-Light',
                                          ),
                                        )
                                      ]),
                                ),
                              );
                            })),SizedBox(height: height * 0.02,),

                    //Last files
                    const Text(
                      'Last Files',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Muli-Bold'),
                    ),SizedBox(height: height * 0.01,),
                    Container(
                    margin: EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(

                          children: [
                            Icon(
                              Icons.folder,
                              color: Color(0xffFFD032),
                              size: 65,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                              'Perfume App',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff000119),
                                  fontFamily: 'Muli-Bold',
                                  fontWeight: FontWeight.bold),
                            ),
                            
                            Text(
                              'Home/my_storage/my_file...',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffC5C5C5),
                                fontFamily: 'Muli-Light',
                              ),
                            )
                              ],
                            )
                          ]),
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}

class ReusableColumn extends StatelessWidget {
  const ReusableColumn({super.key, required this.name, required this.item});
  final String name;
  final String item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Muli-SemiBold',
              fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          item,
          style: const TextStyle(
              color: Color(0xffFFD032),
              fontWeight: FontWeight.bold,
              fontFamily: 'Muli-Bold',
              fontSize: 20),
        )
      ],
    );
  }
}
