import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:maplebangmu/calc.dart';
class Data {
  static String displayString = (displaybangmu * 100).ceil().toString();
  static String factString = format(displaybangmu * 100);
  static String realString = format(realbangmu * 100);
  static double displaybangmu = 0;
  static double realbangmu = 0;

  static update(){
    calcDisplay();
    calcReal();

    displayString = (displaybangmu * 100).ceil().toString();
    factString = format(displaybangmu * 100);
    realString = format(realbangmu * 100);
  }

  static String format(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 3);
  }
}
class Equipment extends Data{
  static int hat = 10;
  static int top = 5;
  static int bottom = 5;
  static int weapon1 = 0;
  static int weapon2 = 0;
  static int weapon3 = 0;
  static int subweapon1 = 0;
  static int subweapon2 = 0;
  static int subweapon3 = 0;
  static int emblem1 = 0;
  static int emblem2 = 0;
  static int emblem3 = 0;
  static int bedge = 0;
  static int medal1 = 0;
  static int medal2 = 0;
}
class Etc extends Data{
  static int setoption1 = 10;
  static int setoption2 = 0;
  static int setoption3 = 10;
  static int soul = 0;
  static int link1 = 0;
  static int link2 = 0;
  static int link3 = 0;
  static int hyperstats = 0;
  static int union1 = 0;
  static int union2 = 0;
  static int doping1 = 0;
  static int doping2 = 0;
  static int guild = 0;
  static int charisma = 0;
  static int skill1 = 0;
  static int skill2 = 0;
  static int etc1 = 0;
  static int etc2 = 0;
}
class UndisplayData extends Data{
  static int conditionalpassive = 0;
  static int debuff = 0;
  static int skill = 0;
  static int coregem = 0;
  static int hyperskill = 0;
  static int etc1 = 0;
  static int etc2 = 0;
  static int etc3 = 0;
  static int etc4 = 0;
}
class DisplayBangmuState extends State<DisplayBangmu> {
  // form을 저장하기 위한 키
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Data data = Data();
  void _submit() {
    final form = _formKey.currentState;
    form.save();

    Data.update();
    refresh();
  }
  
  void refresh(){
    final snackBar = SnackBar(
      content: Text('저장 완료::표기 방무 = '+Data.displayString),
      action: SnackBarAction(
        label: '닫기',
        onPressed: () {},
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const sizedBoxSpace = SizedBox(height: 16);

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                sizedBoxSpace,
                Text('장비'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.hat.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.hat.toString(),
                            labelText:'모자',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.hat = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),                
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.top.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.top.toString(),
                            labelText:'상의(한벌옷)',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.top = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.bottom.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.bottom.toString(),
                            labelText:'하의',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.bottom = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.weapon1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.weapon1.toString(),
                            labelText:'무기1',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.weapon1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),                
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.weapon2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.weapon2.toString(),
                            labelText:'무기2',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.weapon2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.weapon3.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.weapon3.toString(),
                            labelText:'무기3',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.weapon3 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.subweapon1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.subweapon1.toString(),
                            labelText:'보조무기1',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.subweapon1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.subweapon2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.subweapon2.toString(),
                            labelText:'보조무기2',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.subweapon2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.subweapon3.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.subweapon3.toString(),
                            labelText:'보조무기3',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.subweapon3 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.emblem1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.emblem1.toString(),
                            labelText:'엠블렘1',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.emblem1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.emblem2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.emblem2.toString(),
                            labelText:'엠블렘2',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.emblem2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.emblem3.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.emblem3.toString(),
                            labelText:'엠블렘3',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.emblem3 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.bedge.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.bedge.toString(),
                            labelText:'뱃지',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.bedge = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.medal1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.medal1.toString(),
                            labelText:'훈장',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.medal1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Equipment.medal2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Equipment.medal2.toString(),
                            labelText:'훈장(설치)',
                          ),
                          onSaved: (value) {
                            try{
                              Equipment.medal2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('세트 옵션'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.setoption1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.setoption1.toString(),
                            labelText:'장비 세트옵션',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.setoption1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.setoption2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.setoption2.toString(),
                            labelText:'장신구 세트',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.setoption2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.setoption3.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.setoption3.toString(),
                            labelText:'기타(칠요세트 등)',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.setoption3 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('링크 스킬'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.link1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.link1.toString(),
                            labelText:'루미너스',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.link1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.link2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.link2.toString(),
                            labelText:'호영',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.link2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.link3.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.link3.toString(),
                            labelText:'제로',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.link3 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('유니온'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.union1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.union1.toString(),
                            labelText:'공격대 배치',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.union1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.union2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.union2.toString(),
                            labelText:'블래스터 카드',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.union2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('번외'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.soul.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.soul.toString(),
                            labelText:'소울',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.soul = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.hyperstats.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.hyperstats.toString(),
                            labelText:'하이퍼 스탯',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.hyperstats = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.charisma.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.charisma.toString(),
                            labelText:'카리스마',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.charisma = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('도핑'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.doping1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.doping1.toString(),
                            labelText:'고관비',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.doping1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.doping2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.doping2.toString(),
                            labelText:'파란별물약',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.doping2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.guild.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.guild.toString(),
                            labelText:'길드스킬',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.guild = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('직업별 스킬'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.skill1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.skill1.toString(),
                            labelText: '스킬1',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.skill1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.skill2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.skill2.toString(),
                            labelText:'스킬2',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.skill2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('기타, 에디셔널'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.etc1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.etc1.toString(),
                            labelText: '몬스터라이프',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.etc1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: Etc.etc2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: Etc.etc2.toString(),
                            labelText:'기타',
                          ),
                          onSaved: (value) {
                            try{
                              Etc.etc2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace
              ]
            )
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow[300],
          child: Text('저장', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17 ),),
          onPressed: _submit,
      ),
    );
  }

}
class DisplayBangmu extends StatefulWidget{
  const DisplayBangmu({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => DisplayBangmuState();
}
class UndisplayBangmuState extends State<UndisplayBangmu> {
  // form을 저장하기 위한 키
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Data data = Data();

  void _submit() {
    final form = _formKey.currentState;
    form.save();

    Data.update();
    refresh();
  }
  void refresh(){
      final snackBar = SnackBar(
        content: Text('저장 완료::실제 방무 = '+Data.realString),
        action: SnackBarAction(
          label: '닫기',
          onPressed: () {},
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const sizedBoxSpace = SizedBox(height: 16);
    
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                sizedBoxSpace,
                Text(' 이 항목에서는 스탯창에 반영되지 않지만, 교전시 적용되는 방어율 무시 수치들을 입력합니다.',
                  style: TextStyle(fontSize: 17, color: Colors.yellow[300]),),
                sizedBoxSpace,
                Text('비표기 방무수치'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.conditionalpassive.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.conditionalpassive.toString(),
                            labelText: '조건부 패시브',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.conditionalpassive = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.debuff.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.debuff.toString(),
                            labelText:'방깎 디버프',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.debuff = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.skill.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.skill.toString(),
                            labelText: '방깎 스킬',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.skill = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.coregem.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.coregem.toString(),
                            labelText:'젬펙업',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.coregem = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
                sizedBoxSpace,
                Text('기타'),
                sizedBoxSpace,
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.etc1.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.etc1.toString(),
                            labelText: '1',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.etc1 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                    const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.etc2.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.etc2.toString(),
                            labelText:'2',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.etc2 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                      const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.etc3.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.etc3.toString(),
                            labelText:'3',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.etc3 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                      const Divider(
                      color: Colors.black,
                      indent: 10,
                    ),
                    new Flexible(
                      child: 
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          initialValue: UndisplayData.etc4.toString(),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: UndisplayData.etc4.toString(),
                            labelText:'4',
                          ),
                          onSaved: (value) {
                            try{
                              UndisplayData.etc4 = int.parse(value);
                            }on FormatException catch(e){
                              final snackBar = SnackBar(
                                content: Text('정수로 입력해주세요.'),
                                action: SnackBarAction(
                                  label: '닫기',
                                  onPressed: () {},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            }
                          },
                        ),
                      ),
                  ],
                ),
              ]
            )
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow[300],
          child: Text('저장', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17 ),),
          onPressed: _submit,
      ),
    );
  }

}
class UndisplayBangmu extends StatefulWidget{
  const UndisplayBangmu({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => UndisplayBangmuState();
}
class ResultState extends State<Result> {
  // form을 저장하기 위한 키
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Data data = Data();

  void _submit() {
    final form = _formKey.currentState;
    form.save();

    Data.update();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const sizedBoxSpace = SizedBox(height: 16);

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                sizedBoxSpace,
                Row(
                  children: <Widget>[
                    Icon(Icons.check, color: Colors.yellow[300]),
                    Container(
                      width: 200,
                      child: Text(
                        ' 표기 방무: ',
                        style: TextStyle(fontSize: 24),
                      )
                    ),
                    Text(Data.factString, style: TextStyle(fontSize: 24),)
                  ],
                ),
                sizedBoxSpace,
                Row(
                  children: <Widget>[
                    Icon(Icons.check, color: Colors.yellow[300],),
                    Container(
                      width: 200,
                      child: Text(
                        ' 스탯창 방무: ',
                        style: TextStyle(fontSize: 24),
                      )
                    ),
                    Text(Data.displayString, style: TextStyle(fontSize: 24, color: Colors.green[300])),
                  ],
                ),
                sizedBoxSpace,
                Row(
                  children: <Widget>[
                    Icon(Icons.check, color: Colors.yellow[300],),
                    Container(
                      width: 200,
                      child: Text(
                        ' 실제 방무: ',
                        style: TextStyle(fontSize: 24),
                      )
                    ),
                    Text(Data.realString, style: TextStyle(fontSize: 24, color: Colors.red[300])),
                  ],
                ),
                sizedBoxSpace,
                sizedBoxSpace,
                sizedBoxSpace,
                sizedBoxSpace,
                sizedBoxSpace,
                sizedBoxSpace,
                Text('표기 방무: 보정되기 전, 스탯창에 보이는 방무', style: TextStyle(fontSize:17),),
                sizedBoxSpace,
                Text('스탯창 방무: 스탯창에서 보이는 방무, 소숫점 버림', style: TextStyle(fontSize:17)),
                sizedBoxSpace,
                Text('실제 방무: 실제 교전 시 적용되는 방무', style: TextStyle(fontSize:17)),

              ]
            )
          )
        )
      ),
    );
  }

}
class Result extends StatefulWidget{
  const Result({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ResultState();
}