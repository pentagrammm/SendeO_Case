ç
IC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\BaseDalmanager.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
{ 
public 

abstract 
class 
BaseDalmanager (
{		 
	protected

 
ShopsRuContext

  
_context

! )
;

) *
public 
BaseDalmanager 
( 
ShopsRuContext ,
context- 4
)4 5
{ 	
_context 
= 
context 
; 
} 	
} 
} á
dC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\Repositories\Abstract\ICustomerRepository.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #
Repositories# /
./ 0
Abstract0 8
{ 
public 

	interface 
ICustomerRepository (
:) *
IRepository+ 6
<6 7
Customer7 ?
>? @
{		 
}

 
} á
dC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\Repositories\Abstract\IDiscountRepository.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #
Repositories# /
./ 0
Abstract0 8
{ 
public 

	interface 
IDiscountRepository (
:( )
IRepository) 4
<4 5
Discount5 =
>= >
{		 
}

 
} ¢
\C:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\Repositories\Abstract\IRepository.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #
Repositories# /
./ 0
Abstract0 8
{ 
public 

	interface 
IRepository  
<  !
TEntitiy! )
>) *
where+ 0
TEntitiy1 9
:: ;
class< A
{ 
TEntitiy		 
GetById		 
(		 
Guid		 
Id		  
)		  !
;		! "
IEnumerable 
< 
TEntitiy 
> 
GetAll $
($ %
)% &
;& '
} 
} •
cC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\Repositories\Concrete\CustomerRepository.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #
Repositories# /
./ 0
Concrete0 8
{		 
public

 

class

 
CustomerRepository

 #
:

$ %

Repository

& 0
<

0 1
Customer

1 9
>

9 :
,

: ;
ICustomerRepository

< O
{ 
public 
CustomerRepository !
(! "
ShopsRuContext" 0
context1 8
)8 9
:: ;
base< @
(@ A
contextA H
)H I
{ 	
} 	
} 
} •
cC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\Repositories\Concrete\DiscountRepository.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #
Repositories# /
./ 0
Concrete0 8
{		 
public

 

class

 
DiscountRepository

 #
:

$ %

Repository

& 0
<

0 1
Discount

1 9
>

9 :
,

: ;
IDiscountRepository

< O
{ 
public 
DiscountRepository !
(! "
ShopsRuContext" 0
context1 8
)8 9
:: ;
base< @
(@ A
contextA H
)H I
{ 	
} 	
} 
} ∫
[C:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\Repositories\Concrete\Repository.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #
Repositories# /
./ 0
Concrete0 8
{		 
public

 

class

 

Repository

 
<

 
TEntity

 #
>

# $
:

% &
IRepository

' 2
<

2 3
TEntity

3 :
>

: ;
where

< A
TEntity

B I
:

J K
class

L Q
{ 
	protected 
	DbContext 
_context $
;$ %
private 
readonly 
DbSet 
< 
TEntity &
>& '
_dbset( .
;. /
public 

Repository 
( 
	DbContext #
context$ +
)+ ,
{ 	
_context 
= 
context 
; 
_dbset 
= 
_context 
. 
Set !
<! "
TEntity" )
>) *
(* +
)+ ,
;, -
} 	
public 
IEnumerable 
< 
TEntity "
>" #
GetAll$ *
(* +
)+ ,
{ 	
return 
_dbset 
. 
AsEnumerable &
(& '
)' (
;( )
} 	
public 
TEntity 
GetById 
( 
Guid #
Id$ &
)& '
{ 	
return 
_dbset 
. 
Find 
( 
Id !
)! "
;" #
} 	
} 
} è
QC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\UnitOfWork\IUnitOfWork.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #

UnitOfWork# -
{ 
public 

	interface 
IUnitOfWork  
:  !
IDisposable! ,
{		 
ICustomerRepository

 
CustomerRepository

 .
{

/ 0
get

1 4
;

4 5
}

6 7
IDiscountRepository 
DiscountRepository .
{/ 0
get1 4
;4 5
}6 7
} 
} 
PC:\Users\Yasin\Desktop\ShopsRU\Dao.ShopsRuDb.DALMANAGER\UnitOfWork\UnitOfWork.cs
	namespace 	
Dao
 
. 
	ShopsRuDb 
. 

DALMANAGER "
." #

UnitOfWork# -
{		 
public

 

class

 

UnitOfWork

 
:

 
BaseDalmanager

 +
,

+ ,
IUnitOfWork

- 8
{ 
public 

UnitOfWork 
( 
ShopsRuContext (
context) 0
)0 1
:1 2
base2 6
(6 7
context7 >
)> ?
{ 	
CustomerRepository 
=  
new! $
CustomerRepository% 7
(7 8
_context8 @
)@ A
;A B
DiscountRepository 
=  
new! $
DiscountRepository% 7
(7 8
_context8 @
)@ A
;A B
} 	
public 
ICustomerRepository "
CustomerRepository# 5
{6 7
get8 ;
;; <
private= D
setE H
;H I
}J K
public 
IDiscountRepository "
DiscountRepository# 5
{6 7
get8 ;
;; <
private= D
setE H
;H I
}J K
public 
void 
Dispose 
( 
) 
{ 	
} 	
} 
} 