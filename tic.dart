import 'dart:io';
List<String> val = ['1', '2', '3','4','5','6','7','8','9'];
List<String>com=['012','345','678','036','147','258','048','246'];
bool win=false;
bool isxturn=true;
int mouvecount=0;
void main() { 
Board();
get_chara();
}

bool check_comb(String comb,String check)
{
List<int>Number=comb.split('').map((item){return int.parse(item);}).toList();
bool match=false;
for(final item in Number)
{
    if(val[item]==check){match=true;}

else{match=false;
break;}

}

return match;
}


///////////////////////////////////////////////////////////////////////
void check_win(player)
{

for(final item in com)
{bool combin_val=check_comb(item, player);
if(combin_val==true)
{
    print('$player Won...');
    win=true;
    break;
}
}
}
////////////////////////////////////////////////////////////////////////////////////
void get_chara()
{
print('choose number for ${isxturn==true ? 'X' : 'O'}');
int number=int.parse(stdin.readLineSync()!);
val[number-1]=isxturn ? 'X':'O';
isxturn=!isxturn;
mouvecount++;
if(mouvecount==9)
{print('DRAW...');
}
else{Board();}
check_win('X');
check_win('O');
if(win==false){get_chara();}
}
////////////////////////////////////////////////////////////////
void Board() {
  print('|  |   |   |');
  print('|${val[0]} | ${val[1]} | ${val[2]} |');
  print('|__|___|___|');
  print('|  |   |   |');
  print('|${val[3]} | ${val[4]} | ${val[5]} |');
  print('|__|___|___|');
  print('|  |   |   |');
  print('|${val[6]} | ${val[7]} | ${val[8]} |');
  print('|__|___|___|');
  
}