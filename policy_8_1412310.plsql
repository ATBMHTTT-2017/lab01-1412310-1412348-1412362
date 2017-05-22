--- Yeu cau 8:
-- Tao view 
create or replace view chitieu_phongban
as
select maChiTieu, tenChTieu, soTien, duAn, truongPhong
from (ChiTieu join DuAn on (ChiTieu.duAn = DuAn.maDA))
join PhongBan on DuAn.phongChuTri = PhongBan.maPhong;
-- Phan quyen select tren view cho role truongPhong
grant select on system.chitieu_phongban to truongPhong;
-- Tao function lay ma nhan vien cua user
create or replace function xem_chitieu_truongphong (
p_schema varchar2, p_obj varchar2)
return varchar2
as
  user varchar2(100);
begin
  user := sys_context('userenv', 'session_user');
  return 'truongPhong = ' || q'[']' || user  ||  q'[']';
end;

-- Gan policy vao view chitieu_phongban su dung policy_function xem_chitieu_phongban
-- ap dung tren cot soTien
begin
  dbms_rls.add_policy (
  object_schema => 'system',
  object_name => 'chitieu_phongban',
  policy_name => 'my_policy',
  function_schema => 'system',
  policy_function => 'xem_chitieu_truongphong',
  sec_relevant_cols => 'soTien', 
  sec_relevant_cols_opt => dbms_rls.ALL_ROWS);
end;


 select * from system.chitieu_phongban;


