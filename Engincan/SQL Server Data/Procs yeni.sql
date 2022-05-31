create proc SP_TOPLAM_GELIR
as
begin
	select s.adi ,sum(p.ucret) as Gelir from paket p
	join sube s on s.id = p.gonderilen_sube_id
	group by p.gonderilen_sube_id, s.adi
end

create proc SP_AYLIK_GELIR
(
	@ilkAy int,
	@sonAy int
)
as
begin
	select s.adi, sum(p.ucret) as Gelir from paket p
	join sube s on s.id=p.gonderilen_sube_id
	where month(p.subeye_verme_tarihi) between @ilkAy and @sonAy
	group by p.gonderilen_sube_id, s.adi
end

create proc SP_AYLIK_KARGO
(
	@ilkAy int,
	@sonAy int
)
as
begin
	select top 5 s.adi, count(*) as Kargo_Miktarý from paket p
	join sube s on p.gonderilen_sube_id = s.id
	where month(p.subeye_verme_tarihi) between @ilkAy and @sonAy
	group by p.gonderilen_sube_id, s.adi
end

create proc SP_SUBE_ISLEM
as
begin
	select s.adi, count(*) as Kargo_Miktarý from paket p
	join sube s on p.gonderilen_sube_id=s.id
	group by p.gonderilen_sube_id, s.adi
end

create proc SP_PERSONEL_ISLEM
as
begin
	select top 5 pe.ad, pe.soyad, count(*) as Ýþlem_Miktarý from paket p
	join personel pe on p.islem_yapan_personel_id=pe.id
	group by p.islem_yapan_personel_id, pe.ad, pe.soyad
	order by count(*) desc
end

create proc SP_KURYE_ISLEM
as
begin
	select top 5 pe.ad, pe.soyad, count(*) as Ýþlem_Miktarý from paket p
	join arac a on p.arac_id=a.id
	join personel pe on a.personel_id=pe.id
	group by a.personel_id, pe.ad, pe.soyad
	order by count(*) desc
end

create proc SP_TUM_GELIR
as
begin
	select sum(p.ucret) as Toplam_Gelir from paket p
end

create proc SP_AYLIK_TUM_KARGO
(
@ilkAy int,
@sonAy int
)
as
begin
	select count(*) as ToplamKargoMiktari  from paket p
	join sube s on p.gonderilen_sube_id = s.id
	where month(p.subeye_verme_tarihi) between @ilkAy and @sonAy
end