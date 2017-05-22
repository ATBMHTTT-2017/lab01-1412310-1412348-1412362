

---Chi Truong Phong duoc phep cap nhat va them thong tin vao du an (DAC)
grant select,update, insert on system.DuAn to truongPhong;
---Tat ca Nhan Vien binh thuong (tru Truong Phong, Truong Chi Nhanh, Truong Du An) chi duoc phep xem thong tin cua phong minhf va luong cua minh
create view view_nhanvien1 as
select * from  nhanvien where manv not in (select truongphong from phongban)
and manv not in (select truongda from duan) and manv not in (select truongchinhanh from chinhanh) 
and maphong in (select maphong from nhanvien where manv=user)

grant select on view_nhanvien1 to nhanvien;

create or replace function xemluong (
p_schema varchar2, p_obj varchar2)
return varchar2
as
  user varchar2(100);
begin
  user := sys_context('userenv', 'session_user');
  return 'manv = ' || q'[']' || user  ||  q'[']';
end;

begin
dbms_rls.add_policy (
  object_schema => 'system',
  object_name => 'view_nhanvien1',
  policy_name => 'xemluongnhanvien',
  function_schema => 'system',
  policy_function => 'xemluong',
  sec_relevant_cols => 'LUONG',sec_relevant_cols_opt => dbms_rls.ALL_ROWS);
end;
