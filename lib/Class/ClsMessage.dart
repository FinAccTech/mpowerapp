import 'package:equatable/equatable.dart';

class ClsMessage extends Equatable {
  final int MsgSno;
  final DateTime Msg_Date;
  final int Msg_Cat;
  final int Msg_Type;
  final int SenderSno;
  final int RecipientSno;
  final String Text_Content;
  final String File_Path;
  final String File_Desc;
  final int Msg_Status;
  final int Del_Status;

  const ClsMessage({
    required this.MsgSno,
    required this.Msg_Date,
    required this.Msg_Cat,
    required this.Msg_Type,
    required this.SenderSno,
    required this.RecipientSno,
    required this.Text_Content,
    required this.File_Path,
    required this.File_Desc,
    required this.Msg_Status    ,
    required this.Del_Status,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    MsgSno,   Msg_Date,    Msg_Cat,    Msg_Type,    SenderSno,    RecipientSno,    Text_Content,
    File_Path,    File_Desc,    Msg_Status    ,    Del_Status,  ];

  static ClsMessage fromJson(json) => ClsMessage(
    MsgSno: json['MsgSno'],
    Msg_Date: DateTime.parse(json['Msg_Date']['date']),
    Msg_Cat: json['Msg_Cat'],
    Msg_Type: json['Msg_Type'],
    SenderSno: json['SenderSno'],
    RecipientSno: json['RecipientSno'],
    Text_Content: json['Text_Content'],
    File_Path: json['File_Path'],
    File_Desc: json['File_Desc'],
    Msg_Status: json['Msg_Status'],
    Del_Status: json['Del_Status'],
  );
}
