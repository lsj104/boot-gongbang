ALTER table tblMember add NAME varchar2(200);
ALTER table tblMember add TEL varchar2(200);

alter table tblAccount drop column pw;
alter table tblMember drop column name;
alter table tblMember drop column tel;
delete from tblMemberClass;
alter table tblMemberClass add tel varchar2(200) not null;
alter table tblMemberClass add name varchar2(100) not null;
alter table tblShop drop column tel;
alter table tblShop add tel varchar2(200) null;
ALTER table tblMember add NAME varchar2(200);
ALTER table tblMember add TEL varchar2(200);
alter table tblMemberClass drop column tel;
alter table tblMemberClass drop column name;

select * from TBLACCOUNT;
select * from TBLMEMBER;
delete from TBLACCOUNT;
delete from TBLMEMBER;

commit ;

-- tblshop 컬럼 수정 (name => 대표자명, nickname => 공방명)
alter table tblShop add nickname varchar2(1000);
update tblShop set name = '정은정', nickname = '얼롱더센트', tel = '010-1340-5106' where seq = 1;
update tblShop set name = '진예은', nickname = '두유공방', tel = '010-1441-8816' where seq = 2;
update tblShop set name = '김유나', nickname = '손꾸락질', tel = '010-1303-0620' where seq = 3;
update tblShop set name = '최우리', nickname = '손끝스튜디오', tel = '010-6879-8765' where seq = 4;
update tblShop set name = '이채림', nickname = '매탄동작업실', tel = '010-6575-5567' where seq = 5;
update tblShop set name = '이은혜', nickname = '별이엔캐서린작업실', tel = '010-4127-7642' where seq = 6;
update tblShop set name = '최옥순', nickname = '엠마의인형', tel = '010-8131-8366' where seq = 7;
update tblShop set name = '고연희', nickname = '들랑날랑', tel = '010-1408-3610' where seq = 8;
update tblShop set name = '박수연', nickname = '공감도예', tel = '010-1348-3991' where seq = 9;
update tblShop set name = '김미진', nickname = '레티엘', tel = '010-1334-8594' where seq = 10;
update tblShop set name = '박정연', nickname = '프롬마스', tel = '010-1401-8940' where seq = 11;
update tblShop set name = '장윤정', nickname = '오디너리유즈', tel = '010-6350-5262' where seq = 12;
update tblShop set name = '여민지', nickname = 'Mayol0503', tel = '010-1426-0667' where seq = 13;
update tblShop set name = '라영선', nickname = '슬로우니트', tel = '010-1358-2526' where seq = 14;
update tblShop set name = '배소연', nickname = '리우드', tel = '010-1412-0143' where seq = 15;
update tblShop set name = '강희정', nickname = '두두스튜디오', tel = '010-1469-7022' where seq = 16;
update tblShop set name = '이서영', nickname = '시나브로', tel = '010-1347-0792' where seq = 17;
update tblShop set name = '김용성', nickname = '청년공방 본점', tel = '010-1307-2513' where seq = 18;
update tblShop set name = '심은하', nickname = '아틀리에 라벨라', tel = '010-1401-8701' where seq = 19;
update tblShop set name = '김보경', nickname = '영롱달빛', tel = '010-1418-4426' where seq = 20;
update tblShop set name = '장주현', nickname = '프랑꼬아트랩', tel = '010-1556-2355' where seq = 21;
update tblShop set name = '김미연', nickname = '프랑꼬아트랩 부산 서면점', tel = '010-2856-2355' where seq = 22;
update tblShop set name = '정애정', nickname = '공예하는 언니', tel = '010-1328-0722' where seq = 23;
update tblShop set name = '이상아', nickname = '니트에이', tel = '010-2598-3681' where seq = 24;
update tblShop set name = '염초롱', nickname = '크리스 아뜰리에', tel = '010-2864-1705' where seq = 25;
update tblShop set name = '김민영', nickname = '마이민로그', tel = '010-8251-5586' where seq = 26;
update tblShop set name = '이미영', nickname = '닌NIN', tel = '010-9658-7775' where seq = 27;
update tblShop set name = '장희라', nickname = '달달마망', tel = '010-7698-4283' where seq = 28;
update tblShop set name = '김아라', nickname = '소마르', tel = '010-1567-2173' where seq = 29;
update tblShop set name = '김다혜', nickname = '다이앤스토리', tel = '010-1031-3728' where seq = 30;
update tblShop set name = '윤진아', nickname = '정다운공방', tel = '010-0622-6932' where seq = 31;
update tblShop set name = '한경재', nickname = '선나무가구', tel = '010-8956-5459' where seq = 32;
update tblShop set name = '김선희', nickname = '마마스토리', tel = '010-8592-1014' where seq = 33;
update tblShop set name = '정다솜', nickname = '왓위원트', tel = '010-6351-1920' where seq = 34;
update tblShop set name = '이미소', nickname = '리본라움', tel = '010-8989-8285' where seq = 35;
update tblShop set name = '심휘용', nickname = '미엘', tel = '010-6304-0408' where seq = 36;
update tblShop set name = '조자영', nickname = '러브투모로우', tel = '010-3546-2867' where seq = 37;
update tblShop set name = '권재희', nickname = '우드얀', tel = '010-9944-3226' where seq = 38;
update tblShop set name = '전희경', nickname = '브라이튼미', tel = '010-6932-9030' where seq = 39;
update tblShop set name = '김아름', nickname = '스튜디오 오름', tel = '010-0488-0250' where seq = 40;

-- 수진
-- tblMember 관리자 정보 추가
insert into TBLMEMBER(seq, nickname, image, aseq, name, tel) VALUES (SEQMEMBER.nextval, '관리자', 'default.png', 1, '관리자', '010-1234-1234');

-- tblMember 주소 추가 0211
ALTER table tblMember add address varchar2(500);

-- tblShop location -> address 컬럼명 변경 0211
ALTER table TBLSHOP rename column location to address;

-- tblShop name & tel 수정 0211
alter table TBLSHOP modify (tel null );
alter table TBLSHOP modify (name null );
alter table TBLSHOP modify (address null );

--클래스 이미지 파일 수정
update tblClass set image='북바인딩달력미니노트만들기.jpg' where seq = 67;
update tblClass set image='힐링하며원데이가죽체험하기필통.png' where seq = 64;
update tblClass set image='벨벳자이언트얀가방만들기.jpg' where seq = 58;
update tblClass set image='데일리유니크발찌원데이클래스.jpg' where seq = 51;
update tblClass set image='반짝반짝주얼리와함께하는나만의힐링데이.jpg' where seq = 48;
update TBLClass set image='레이어드 실반지.jpg' where seq = 44;

--뷰 생성
create or replace view vwClass
as
select *
from (select tc.seq,
             tc.name,
             tc.price,
             tc.image,
             tc.cseq,
             ts.nickname,
             ts.address
      from tblClass tc
          inner join tblShop ts on tc.sseq = ts.seq);

commit;

select * from vwClass;

