�
DC:\Users\Yasin\Desktop\ShopsRU\ShopsRU.PL\Abstract\IBillServicePL.cs
	namespace 	
ShopsRU
 
. 
PL 
. 
Abstract 
{ 
public 

	interface 
IBillServicePL #
{		 $
CalculateBillResponseDto

  

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
} �	
CC:\Users\Yasin\Desktop\ShopsRU\ShopsRU.PL\Concrete\BillServicePL.cs
	namespace		 	
ShopsRU		
 
.		 
PL		 
.		 
Concrete		 
{

 
public 

class 

: 
IBillServicePL  .
{ 
private
readonly
IBillServiceBll
_billServiceBLL
;
public 

( 
IBillServiceBll ,
billServiceBLL- ;
); <
{ 	
_billServiceBLL 
= 
billServiceBLL ,
;, -
} 	
public $
CalculateBillResponseDto '

(5 6#
CalculateBillRequestDto6 M
requestN U
)U V
{ 	!
BillServiceValidation !
.! "

(/ 0
request0 7
)7 8
;8 9
return 
_billServiceBLL "
." #

(0 1
request1 8
)8 9
;9 :
} 	
} 
} �
MC:\Users\Yasin\Desktop\ShopsRU\ShopsRU.PL\Validation\BillServiceValidation.cs
	namespace 	
ShopsRU
 
. 
PL 
. 

Validation 
{		 
public

 

static

 
class

 !
BillServiceValidation

 -
{ 
public 
static 
void 

(( )#
CalculateBillRequestDto) @
requestA H
)H I
{
if 
( 
request 
. 

SectorType "
!=# %

SectorType& 0
.0 1
	Groceries1 :
.: ;
ToString; C
(C D
)D E
&&F H
requestI P
.P Q

SectorTypeQ [
!=\ ^

SectorType_ i
.i j
Textilej q
.q r
ToStringr z
(z {
){ |
)| }
throw 
new 
ValidateException +
(+ ,
$str, A
)A B
;B C
if 
( 
request 
. 
UserId 
== !
Guid" &
.& '
Empty' ,
), -
throw 
new 
ValidateException +
(+ ,
$str, E
)E F
;F G
if 
( 
request 
. 
Amount 
<  
$num! "
)" #
throw 
new 
ValidateException +
(+ ,
$str, N
)N O
;O P
} 	
} 
} 