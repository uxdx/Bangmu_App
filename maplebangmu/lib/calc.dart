import 'package:maplebangmu/tabs.dart';

void calcDisplay(){
  double value = 1;
  value *= 1-Equipment.hat * 0.01;
  value *= 1-Equipment.top * 0.01;
  value *= 1-Equipment.bottom * 0.01;
  value *= 1-Equipment.weapon1 * 0.01;
  value *= 1-Equipment.weapon2 * 0.01;
  value *= 1-Equipment.weapon3 * 0.01;
  value *= 1-Equipment.subweapon1 * 0.01;
  value *= 1-Equipment.subweapon2 * 0.01;
  value *= 1-Equipment.subweapon3 * 0.01;
  value *= 1-Equipment.emblem1 * 0.01;
  value *= 1-Equipment.emblem2 * 0.01;
  value *= 1-Equipment.emblem3 * 0.01;
  value *= 1-Equipment.bedge * 0.01;
  value *= 1-Equipment.medal1 * 0.01;
  value *= 1-Equipment.medal2 * 0.01;
  //
  value *= 1-Etc.setoption1 * 0.01;
  value *= 1-Etc.setoption2 * 0.01;
  value *= 1-Etc.setoption3 * 0.01;
  value *= 1-Etc.link1 * 0.01;
  value *= 1-Etc.link2 * 0.01;
  value *= 1-Etc.link3 * 0.01;
  value *= 1-Etc.union1 * 0.01;
  value *= 1-Etc.union2 * 0.01;
  value *= 1-Etc.doping1 * 0.01;
  value *= 1-Etc.doping2 * 0.01;
  value *= 1-Etc.hyperstats * 0.01;
  value *= 1-Etc.soul * 0.01;
  value *= 1-Etc.charisma * 0.01;
  value *= 1-Etc.guild * 0.01;
  value *= 1-Etc.skill1 * 0.01;
  value *= 1-Etc.skill2 * 0.01;
  value *= 1-Etc.etc1 * 0.01;
  value *= 1-Etc.etc2 * 0.01;

  Data.displaybangmu = 1 - value;
}
void calcReal(){
  double value = 1;
  value *= 1-Equipment.hat * 0.01;
  value *= 1-Equipment.top * 0.01;
  value *= 1-Equipment.bottom * 0.01;
  value *= 1-Equipment.weapon1 * 0.01;
  value *= 1-Equipment.weapon2 * 0.01;
  value *= 1-Equipment.weapon3 * 0.01;
  value *= 1-Equipment.subweapon1 * 0.01;
  value *= 1-Equipment.subweapon2 * 0.01;
  value *= 1-Equipment.subweapon3 * 0.01;
  value *= 1-Equipment.emblem1 * 0.01;
  value *= 1-Equipment.emblem2 * 0.01;
  value *= 1-Equipment.emblem3 * 0.01;
  value *= 1-Equipment.bedge * 0.01;
  value *= 1-Equipment.medal1 * 0.01;
  value *= 1-Equipment.medal2 * 0.01;
  //
  value *= 1-Etc.setoption1 * 0.01;
  value *= 1-Etc.setoption2 * 0.01;
  value *= 1-Etc.setoption3 * 0.01;
  value *= 1-Etc.link1 * 0.01;
  value *= 1-Etc.link2 * 0.01;
  value *= 1-Etc.link3 * 0.01;
  value *= 1-Etc.union1 * 0.01;
  value *= 1-Etc.union2 * 0.01;
  value *= 1-Etc.doping1 * 0.01;
  value *= 1-Etc.doping2 * 0.01;
  value *= 1-Etc.hyperstats * 0.01;
  value *= 1-Etc.soul * 0.01;
  value *= 1-Etc.charisma * 0.01;
  value *= 1-Etc.guild * 0.01;
  value *= 1-Etc.skill1 * 0.01;
  value *= 1-Etc.skill2 * 0.01;
  value *= 1-Etc.etc1 * 0.01;
  value *= 1-Etc.etc2 * 0.01;
  //
  value *= 1-UndisplayData.conditionalpassive * 0.01;
  value *= 1-UndisplayData.skill * 0.01;
  value *= 1-UndisplayData.hyperskill * 0.01;
  value *= 1-UndisplayData.debuff * 0.01;
  value *= 1-UndisplayData.coregem * 0.01;
  value *= 1-UndisplayData.etc1 * 0.01;
  value *= 1-UndisplayData.etc2 * 0.01;
  value *= 1-UndisplayData.etc3 * 0.01;
  value *= 1-UndisplayData.etc4 * 0.01;

  Data.realbangmu = 1 - value;
}