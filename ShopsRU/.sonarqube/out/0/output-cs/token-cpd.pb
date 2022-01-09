˙
:C:\Users\Yasin\Desktop\ShopsRU\Contracts\BaseRequestDto.cs
	namespace 	
	Contracts
 
{ 
[ 

JsonObject 
( 
MemberSerialization #
.# $
OptIn$ )
)) *
]* +
public		 

class		 
BaseRequestDto		 
{

 
} 
} Ä
;C:\Users\Yasin\Desktop\ShopsRU\Contracts\BaseResponseDto.cs
	namespace 	
	Contracts
 
{ 
[ 

JsonObject 
( 
MemberSerialization #
.# $
OptIn$ )
)) *
]* +
public		 

class		 
BaseResponseDto		  
{

 
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
int 
ResponseCode 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
ResponseMessage %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
bool 
Success 
{ 	
get 
{ 
return 
ResponseCode #
>=$ &
$num' (
;( )
} 
set 
{ 
ResponseCode 
=  
value! &
?' (
ResponseCodes) 6
.6 7
Sucess7 =
:> ?
(@ A
ResponseCodeA M
==N P
$numQ R
?S T
ResponseCodesU b
.b c
Errorc h
:i j
ResponseCodek w
)w x
;x y
}z {
} 	
} 
} ù
@C:\Users\Yasin\Desktop\ShopsRU\Contracts\BaseResponseExecuter.cs
	namespace 	
	Contracts
 
{ 
public 

static 
class  
BaseResponseExecuter ,
{		 
public

 
static

 
T

 
Execute

 
<

  
T

  !
>

! "
(

" #
Func

# '
<

' (
T

( )
>

) *
func

+ /
)

/ 0
where

1 6
T

7 8
:

9 :
BaseResponseDto

; J
,

J K
new

L O
(

O P
)

P Q
{ 	
T 
result 
= 
new 
T 
( 
) 
; 
result 
. 
ResponseCode 
=  !
ResponseCodes" /
./ 0
Sucess0 6
;6 7
try 
{ 
result 
= 
func 
( 
) 
;  
} 
catch 
( 
ValidateException $
vex% (
)( )
{ 
result 
. 
ResponseCode #
=$ %
ResponseCodes& 3
.3 4
ValidationError4 C
;C D
result 
. 
ResponseMessage &
=' (
vex) ,
., -
Message- 4
;4 5
} 
catch 
( 
CodedException !
cex" %
)% &
{ 
result 
. 
ResponseCode #
=$ %
cex& )
.) *
Code* .
;. /
result 
. 
ResponseMessage &
=' (
cex) ,
., -
Message- 4
;4 5
} 
catch   
(   
BusinessException   $
bex  % (
)  ( )
{!! 
result## 
.## 
ResponseCode## #
=##$ %
ResponseCodes##& 3
.##3 4
BusinessError##4 A
;##A B
result$$ 
.$$ 
ResponseMessage$$ &
=$$' (
bex$$) ,
.$$, -
Message$$- 4
;$$4 5
}%% 
catch&& 
(&& 
	Exception&& 
ex&& 
)&&  
{'' 
result(( 
.(( 
ResponseCode(( #
=(($ %
ResponseCodes((& 3
.((3 4
ErrorSystem((4 ?
;((? @
result)) 
.)) 
ResponseMessage)) &
=))' (
ex))) +
.))+ ,
Message)), 3
;))3 4
}** 
return,, 
result,, 
;,, 
}-- 	
}// 
}00 ì
HC:\Users\Yasin\Desktop\ShopsRU\Contracts\Exceptions\BusinessException.cs
	namespace 	
	Contracts
 
. 

Exceptions 
{ 
[ 
Serializable 
] 
public 

class 
BusinessException "
:# $
	Exception% .
{		 
public

 
BusinessException

  
(

  !
)

! "
:

# $
base

% )
(

) *
)

* +
{ 	
} 	
public 
BusinessException  
(  !
string! '
message( /
)/ 0
:1 2
base3 7
(7 8
message8 ?
)? @
{ 	
} 	
} 
} ∆
EC:\Users\Yasin\Desktop\ShopsRU\Contracts\Exceptions\CodedException.cs
	namespace 	
	Contracts
 
. 

Exceptions 
{ 
[ 
Serializable 
] 
public 

class 
CodedException 
:  !
	Exception" +
{		 
public

 
int

 
Code

 
{

 
get

 
;

 
private

 &
set

' *
;

* +
}

, -
public 
CodedException 
( 
) 
:  !
base" &
(& '
)' (
{ 	
} 	
public 
CodedException 
( 
int !
code" &
,& '
string( .
message/ 6
)6 7
:8 9
base: >
(> ?
message? F
)F G
{ 	
this 
. 
Code 
= 
code 
; 
} 	
} 
} ì
HC:\Users\Yasin\Desktop\ShopsRU\Contracts\Exceptions\ValidateException.cs
	namespace 	
	Contracts
 
. 

Exceptions 
{ 
[ 
Serializable 
] 
public 

class 
ValidateException "
:# $
	Exception% .
{		 
public

 
ValidateException

  
(

  !
)

! "
:

# $
base

% )
(

) *
)

* +
{ 	
} 	
public 
ValidateException  
(  !
string! '
message( /
)/ 0
:1 2
base3 7
(7 8
message8 ?
)? @
{ 	
} 	
} 
} œ	
9C:\Users\Yasin\Desktop\ShopsRU\Contracts\ResponseCodes.cs
	namespace 	
	Contracts
 
{ 
public 

static 
class 
ResponseCodes %
{ 
public		 
const		 
int		 
Sucess		 
=		  !
$num		" #
;		# $
public 
const 
int 
Error 
=  
-! "
$num" #
;# $
public 
const 
int 
ErrorSystem $
=% &
-' (
$num( )
;) *
public 
const 
int 
ErrorDatabase &
=' (
-) *
$num* +
;+ ,
public 
const 
int 
Warning  
=! "
-# $
$num$ %
;% &
public 
const 
int 
ValidationError (
=) *
-+ ,
$num, .
;. /
public 
const 
int 
BusinessError &
=' (
-) *
$num* ,
;, -
} 
} á	
VC:\Users\Yasin\Desktop\ShopsRU\Contracts\ShopsRuService\Dto\CalculateBillRequestDto.cs
	namespace 	
	Contracts
 
. 
ShopsRuService "
." #
Dto# &
{ 
public 

class #
CalculateBillRequestDto (
:) *
BaseRequestDto+ 9
{		 
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

  
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

SectorType  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ñ
WC:\Users\Yasin\Desktop\ShopsRU\Contracts\ShopsRuService\Dto\CalculateBillResponseDto.cs
	namespace 	
	Contracts
 
. 
ShopsRuService "
." #
Dto# &
{ 
public 

class $
CalculateBillResponseDto )
:* +
BaseResponseDto, ;
{		 
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

  
public 
decimal 
Amount 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} À
JC:\Users\Yasin\Desktop\ShopsRU\Contracts\ShopsRuService\IBillController.cs
	namespace 	
	Contracts
 
. 
ShopsRuService "
{ 
public 

	interface 
IBillController $
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
} ∑
JC:\Users\Yasin\Desktop\ShopsRU\Contracts\ShopsRuService\Type\SectorType.cs
	namespace 	
	Contracts
 
. 
ShopsRuService "
." #
Type# '
{ 
public 

enum 

SectorType 
{ 
	Groceries		 
=		 
$num		 
,		 
Textile 
= 
$num 
} 
} 