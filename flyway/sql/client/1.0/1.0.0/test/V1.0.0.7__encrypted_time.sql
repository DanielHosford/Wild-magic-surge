-- =============================================
-- Author:      Alexandre Tran
-- Create date: 01/02/2019
-- Description: Encrypted time as test util
-- =============================================

SET NOCOUNT ON;

IF NOT EXISTS (SELECT name FROM sys.schemas WHERE name = N'test')
BEGIN
  PRINT 'Creating the test schema';
    EXEC('CREATE SCHEMA [test] AUTHORIZATION [dbo]');
END

GO

IF OBJECT_ID('test.encryptedTime', 'U') IS NOT NULL
BEGIN
  DROP TABLE test.encryptedTime;
END

CREATE TABLE test.encryptedTime (
  time TIME NOT NULL,
  encrypted VARCHAR(255) NOT NULL
);

INSERT INTO test.encryptedTime
  VALUES ('00:00','(W@X=''O=$R50')
    ,('00:15','(7]?5AXW/3$0')
    ,('00:30','($60''!!8:*8H')
    ,('00:45','(0@:44]N.71T')
    ,('01:00','(1>BL[X 4AX')
    ,('01:15','(FY/0WEQ RO<')
    ,('01:30','(!=2/QD"OY9H')
    ,('01:45','(0\KI#[?[DS<')
    ,('02:00','(#Y/J$C<VF;@')
    ,('02:15','(FV1]MA!D\9X')
    ,('02:30','(*_R0C;H&E=(')
    ,('02:45','(C_XEF&K?Q\D')
    ,('03:00','(#]CJ#1EWN7$')
    ,('03:15','(7$HQTE=$7NT')
    ,('03:30','(+?7X#G^)B/<')
    ,('03:45','(-D@YPMR"+\T')
    ,('04:00','(S/"#+O- &2<')
    ,('04:15','((UM5;4KQ3U,')
    ,('04:30','(FN1XFN'':(08')
    ,('04:45','(=^>7?PKOX1T')
    ,('05:00','((_^I8M2+PET')
    ,('05:15','(E1)K  G?E?(')
    ,('05:30','(9GZ3MKEX/\,')
    ,('05:45','(*8W5V[5WP;<')
    ,('06:00','(UF5E/\XQBEP')
    ,('06:15','(:\#C-.^Z+"T')
    ,('06:30','(0\H5FEU]7>\')
    ,('06:45','(J>N1S.4=_F<')
    ,('07:00','(.C(N+DDD+ZX')
    ,('07:15','(R4E>OR:E@_@')
    ,('07:30','("^_PX^FHF%$')
    ,('07:45','(TAIBG-(7C^$')
    ,('08:00','(U].]''WPK>+0')
    ,('08:15','(^KUWA 1,W?0')
    ,('08:30','(J(#51G?4O)4')
    ,('08:45','(ST).SMT#F=(')
    ,('09:00','("\$/08_U-PX')
    ,('09:15','(BM\W9!,0#%\')
    ,('09:30','(9.I+EH7-=%0')
    ,('09:45','(JC*(!Q3E#1X')
    ,('10:00','(A]>D\3H8<_\')
    ,('10:15','(?& #UM$>9B<')
    ,('10:30','(J4K],=\*=KL')
    ,('10:45','(7N1*\*F[BBL')
    ,('11:00','(DT(M_+!Q%4D')
    ,('11:15','(V*C) >&#V]0')
    ,('11:30','(F3?:''F(U_N8')
    ,('11:45','($Q5RMY\6$E<')
    ,('12:00','(37!4Y].@^F$')
    ,('12:15','(3*"E0!$@5Z<')
    ,('12:30','(''+JDBA[<?XD')
    ,('12:45','(.[<W&"FIJ2P')
    ,('13:00','(H6P=]_\8^&L')
    ,('13:15','(#,[\8MS$0MP')
    ,('13:30','(U&+XO''X87^4')
    ,('13:45','(S:6/.XYBT]$')
    ,('14:00','(@R*F;/QA>7(')
    ,('14:15','(HZ%Q6Q''R4V\')
    ,('14:30','(N#F._XTSF(8')
    ,('14:45','(V3WHBSWTG@<')
    ,('15:00','(]%1?KR ,,<X')
    ,('15:15','(R%6MM/T;1''X')
    ,('15:30','(_WSC]0205FP')
    ,('15:45','(( *9%_XUK"(')
    ,('16:00','(^A</ <U_Z.8')
    ,('16:15','(B$O*/S7X]DT')
    ,('16:30','(45B V"''PP[0')
    ,('16:45','(T4SR&B[K]%\')
    ,('17:00','(>>.(;BE\[&4')
    ,('17:15','(M2*E)#&0]5,')
    ,('17:30','((>+ECFY,)E(')
    ,('17:45','(*8]%GA0Q9<<')
    ,('18:00','(;-RO;J;G''Q4')
    ,('18:15','(8:G:C8;^M0$')
    ,('18:30','(@9;8?U$-*5<')
    ,('18:45','(3GEPH[>C^:')
    ,('19:00','((P,LJC]:;_H')
    ,('19:15','(HOLA83@%6I\')
    ,('19:30','(S-_;N#7PR0,')
    ,('19:45','(@-''NW,5+!X')
    ,('20:00','(@<<Q:.U-''((')
    ,('20:15','(C&4J,=4+J],')
    ,('20:30','(;CJ0W8,>(1P')
    ,('20:45','(@H.R"GWZ.ET')
    ,('21:00','(-$V(.%.<N4H')
    ,('21:15','(G*014?JF>Z')
    ,('21:30','(?U>+EMD+!;<')
    ,('21:45','(Q*$EV?P%%_')
    ,('22:00','(8$]CUZBMKSL')
    ,('22:15','(,4U;NM)D2;<')
    ,('22:30','((TP8''./BNH8')
    ,('22:45','(].56NKK8M48')
    ,('23:00','(/>A#2EQYH:H')
    ,('23:15','(<UV?WLID''0D')
    ,('23:30','((G-;)6Q*3!(')
    ,('23:45','(V .$WW^R"YD');