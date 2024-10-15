import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpower/Class/ClsMessage.dart';
import 'package:mpower/Config/globals.dart' as globals;
import '../widgets/fadetransition.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  TextEditingController messageController = TextEditingController();

  int _tabIndex = 2;
  late List<ClsMessage> messages;

  int get tabIndex => _tabIndex;
  @override
  void initState() {
    // TODO: implement initState
     messages = [
      ClsMessage(MsgSno: 1, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 1, RecipientSno: 2, Text_Content: "Hi", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
      ClsMessage(MsgSno: 2, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 2, RecipientSno: 1, Text_Content: "How are you", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
      ClsMessage(MsgSno: 3, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 1, RecipientSno: 2, Text_Content: "Iam fine", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
      ClsMessage(MsgSno: 4, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 2, RecipientSno: 1, Text_Content: "How is family", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
      ClsMessage(MsgSno: 5, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 1, RecipientSno: 2, Text_Content: "Where are you nowWhere are you now", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
      ClsMessage(MsgSno: 6, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 2, RecipientSno: 1, Text_Content: "Chennai and you", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
      ClsMessage(MsgSno: 7, Msg_Date: new DateTime.now(), Msg_Cat: 1, Msg_Type: 1, SenderSno: 1, RecipientSno: 2, Text_Content: "Coimbatore", File_Path: "File_Path", File_Desc: "File_Desc", Msg_Status: 1, Del_Status: 1),
    ];
    print (messages.length);
    super.initState();
  }
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.only(bottomLeft: Radius.circular(32)),
        ),
        elevation: 0,

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.blue,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.blue,
          ),
          // IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),color: Colors.blue)
        ],
        flexibleSpace: SafeArea(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            )),
        // bottom: PreferredSize(
        //     child: Container(
        //       child: Text(
        //         "Hi",
        //         textAlign: TextAlign.left,
        //         style: TextStyle(color: Colors.brown, fontSize: 25),
        //       ),
        //       width: double.infinity,
        //       height: 50,
        //       color: Colors.yellow,
        //     ),
        //     preferredSize: Size.fromHeight(35.0))
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: const Text('C', style: TextStyle(color: Colors.white), ),
                  ),
                  label: const Text('Chats'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: const Text('G', style: TextStyle(color: Colors.white), ),
                  ),
                  label: const Text('Groups'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: const Text('R', style: TextStyle(color: Colors.white), ),
                  ),
                  label: const Text('Broadcast'),
                )
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                    child: Align(
                      alignment: (messages[index].SenderSno == 1?Alignment.topLeft:Alignment.topRight),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].SenderSno  == 1?Colors.grey.shade200:Colors.blue[200]),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(messages[index].Text_Content,style: TextStyle(fontSize: 15),)
                        )
                    ),
                  );
                },
              ),
            ),
            
            Row(
              children: [

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Expanded(child:
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1.5, color: globals.PrimaryColor), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),

              ),
              SizedBox(width: 15,),
              Icon(Icons.send, color: globals.PrimaryColor, size: 30, )


            ],)
          ],
        ),
      ),

      );
  }
}
