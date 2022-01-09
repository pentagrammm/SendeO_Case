ß
FC:\Users\Yasin\Desktop\ShopsRU\ShopsRU.BLL\Abstract\IBillServiceBll.cs
	namespace 	
ShopsRU
 
. 
BLL 
. 
Abstract 
{ 
public 

	interface 
IBillServiceBll $
{		 $
CalculateBillResponseDto

  
CalculateBill

! .
(

. /#
CalculateBillRequestDto

/ F
request

G N
)

N O
;

O P
} 
} Ž
EC:\Users\Yasin\Desktop\ShopsRU\ShopsRU.BLL\Concrete\BillServiceBll.cs
	namespace 	
ShopsRU
 
. 
BLL 
. 
Concrete 
{ 
public 

class 
BillServiceBll 
:  !
IBillServiceBll" 1
{ 
private 
readonly 
ShopsRuContext '
_db( +
;+ ,
public 
BillServiceBll 
( 
ShopsRuContext ,
db- /
)/ 0
{ 	
_db 
= 
db 
; 
} 	
public $
CalculateBillResponseDto '
CalculateBill( 5
(5 6#
CalculateBillRequestDto6 M
requestN U
)U V
{ 	
using 
( 
var 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
_db3 6
)6 7
)7 8
{ 
var 
customer 
= 

unitOfWork )
.) *
CustomerRepository* <
.< =
GetById= D
(D E
requestE L
.L M
UserIdM S
)S T
;T U
if 
( 
customer 
== 
null  $
)$ %
throw 
new 
BusinessException /
(/ 0
$str0 @
)@ A
;A B
Discount!! 
discount!! !
=!!" #
null!!$ (
;!!( )
if"" 
("" 
customer"" 
."" 

DiscountId"" '
.""' (
HasValue""( 0
)""0 1
discount## 
=## 

unitOfWork## )
.##) *
DiscountRepository##* <
.##< =
GetById##= D
(##D E
customer##E M
.##M N

DiscountId##N X
.##X Y
Value##Y ^
)##^ _
;##_ `
var%% 

sectorType%% 
=%%  
(%%! "

SectorType%%" ,
)%%, -
Enum%%- 1
.%%1 2
Parse%%2 7
(%%7 8
typeof%%8 >
(%%> ?

SectorType%%? I
)%%I J
,%%J K
request%%L S
.%%S T

SectorType%%T ^
)%%^ _
;%%_ `
decimal'' 
amount'' 
;'' 
if(( 
((( 

sectorType(( 
==(( !

SectorType((" ,
.((, -
	Groceries((- 6
)((6 7
{)) 
amount** 
=** !
BillCalculationHelper** 2
.**2 3&
GetTotatAmountWithDiscount**3 M
(**M N
request**N U
.**U V
Amount**V \
)**\ ]
;**] ^
return,, 
new,, $
CalculateBillResponseDto,, 7
{-- 
Amount.. 
=..  
amount..! '
}// 
;// 
}00 
amount22 
=22 !
BillCalculationHelper22 .
.22. /3
'GetTotatAmountWithDiscountAndPercentage22/ V
(22V W
discount22W _
?22_ `
.22` a
Ratio22a f
,22f g
request22h o
.22o p
Amount22p v
)22v w
;22w x
return44 
new44 $
CalculateBillResponseDto44 3
{55 
Amount66 
=66 
amount66 #
}77 
;77 
}88 
}99 	
};; 
}<< «
KC:\Users\Yasin\Desktop\ShopsRU\ShopsRU.BLL\Helpler\BillCalculationHelper.cs
	namespace 	
ShopsRU
 
. 
BLL 
. 
Helpler 
{ 
public 

static 
class !
BillCalculationHelper -
{		 
private

 
static

 
decimal

 
GetAmountDiscount

 0
(

0 1
decimal

1 8
amount

9 ?
)

? @
{ 	
decimal 
_amountDiscount #
=$ %
$num& '
;' (
if 
( 
amount 
>= 
$num 
) 
{ 
_amountDiscount 
=  !
Math" &
.& '
Floor' ,
(, -
amount- 3
/4 5
$num6 9
)9 :
*; <
$num= >
;> ?
return 
_amountDiscount &
;& '
} 
return 
_amountDiscount "
;" #
} 	
private 
static 
decimal 
GetPercentageAmount 2
(2 3
int3 6
?6 7
discountRatio8 E
,E F
decimalG N
amountO U
)U V
{ 	
if 
( 
discountRatio 
==  
null! %
)% &
return 
$num 
; 
var 
_amountPercentage !
=" #
amount$ *
*+ ,
discountRatio. ;
.; <
Value< A
/B C
$numD G
;G H
return 
_amountPercentage $
;$ %
} 	
public 
static 
decimal 3
'GetTotatAmountWithDiscountAndPercentage E
(E F
intF I
?I J
discountRatioK X
,X Y
decimalZ a
amountb h
)i j
{   	
return!! 
amount!! 
-!! 
(!! 
GetAmountDiscount!! .
(!!. /
amount!!/ 5
)!!5 6
+!!7 8
GetPercentageAmount!!9 L
(!!L M
discountRatio!!M Z
,!!Z [
amount!!\ b
)!!b c
)!!c d
;!!d e
}"" 	
public$$ 
static$$ 
decimal$$ &
GetTotatAmountWithDiscount$$ 8
($$8 9
decimal$$9 @
amount$$A G
)$$G H
{%% 	
var&& 
aa&& 
=&& 
amount&& 
-&& 
GetAmountDiscount&& /
(&&/ 0
amount&&0 6
)&&6 7
;&&7 8
return'' 
aa'' 
;'' 
}(( 	
})) 
}** 