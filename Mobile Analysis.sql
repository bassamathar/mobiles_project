SELECT * FROM mobile_1.`mobile analysis`;

-----------
select Price, Selfie_Camera, Selfie_Camera, RAM_Storage, Battery_Capacity from mobile_1.`mobile analysis`; 

SELECT * FROM mobile_1.`mobile analysis` ORDER BY Price DESC LIMIT 5;

select Phone_name, Price, Brands from mobile_1.`mobile analysis` order by Price asc Limit 5; 

select Price, Brands, Selfie_Camera, RAM_Storage from mobile_1.`mobile analysis` where Brands = "Samsung"  order by Price asc limit 5

select Price, Operating_System_Type from mobile_1.`mobile analysis` where Operating_System_Type = 'iOS' order by Price desc limit 5;

Select Price, Operating_System_Type from mobile_1.`mobile analysis` where Operating_System_Type = "iOS" order by Price asc limit 5; 

select Brands, Phone_name, 5G_Availability from mobile_1.`mobile analysis` where 5G_Availability = "Yes" order by Price asc limit 5;

select Brands, sum(Price) from mobile_1.`mobile analysis` group by Brands limit 10;






select distinct Brands from mobile_1.`mobile analysis`; 

SELECT 
    Brands,
    case 
        when Brands = 'realme' then 'https://brandlogos.net/realme-logo-vector-93539.html'
		when Brands = 'Redmi' then 'https://en.m.wikipedia.org/wiki/File:Xiaomi_logo.svg'
		when Brands = 'Samsung' then 'https://iconduck.com/icons/1943/samsung'
		when Brands = 'OnePlus' then 'https://brandlogos.net/oneplus-logo-vector-93177.html'
        when Brands = 'Vivo' then 'https://brandlogos.net/vivo-communication-technology-logo-vector-98791.html'
        when Brands = 'Motorola' then 'https://brandlogos.net/motorola-eps-42446.html'
        when Brands = 'Infinix' then 'https://brandlogos.net/infinix-mobile-logo-vector-96601.html'
       when Brands = 'Tecno' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Tecno_Logo.png/1280px-Tecno_Logo.png'
        when Brands = 'Moto' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Motorola_logo.svg/1280px-Motorola_logo.svg.png'
        when Brands = 'Oppo' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/OPPO_logo.svg/1280px-OPPO_logo.svg.png'
        when Brands = 'Xiaomi' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Xiaomi_logo.svg/1280px-Xiaomi_logo.svg.png'
        when Brands = 'Mi' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Xiaomi_logo.svg/1280px-Xiaomi_logo.svg.png'
        when Brands = 'Apple' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1280px-Apple_logo_black.svg.png'
        when Brands = 'Nokia' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Nokia_new_logo.svg/1280px-Nokia_new_logo.svg.png'
        when Brands = 'JioPhone' then 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Jio_logo.svg/1280px-Jio_logo.svg.png'

        -- Add more WHEN clauses for other brands if needed
        else 'unknown'
    end as Image_Link
from mobile_1.`mobile analysis`;

alter table mobile_1.`mobile analysis` add column Image_Links Varchar(3355)

UPDATE mobile_1.`mobile analysis`
SET Image_Links = CASE 
    WHEN Brands = 'realme' THEN 'https://en.wikipedia.org/wiki/Realme#/media/File:Realme_logo_SVG.svg'
	WHEN Brands = 'Redmi' THEN 'https://upload.wikimedia.org/wikipedia/commons/2/29/Xiaomi_logo.svg'
	WHEN Brands = 'Samsung' THEN 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Samsung_wordmark.svg'
	WHEN Brands = 'OnePlus' THEN 'https://upload.wikimedia.org/wikipedia/commons/f/f8/OP_LU_Reg_1L_RGB_red_copy-01.svg'
    WHEN Brands = 'Vivo' THEN 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Vivo_mobile_logo.png'
    WHEN Brands = 'Motorola' THEN 'https://upload.wikimedia.org/wikipedia/commons/1/13/Motorola-Logo.svg'
    WHEN Brands = 'Infinix' THEN 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Logo_of_Infinix.png'
    WHEN Brands = 'Tecno' THEN 'https://en.wikipedia.org/wiki/Tecno_Mobile#/media/File:Tecno_Mobile_logo.svg'
    WHEN Brands = 'Moto' THEN 'https://upload.wikimedia.org/wikipedia/commons/1/13/Motorola-Logo.svg'
    WHEN Brands = 'Oppo' THEN 'https://upload.wikimedia.org/wikipedia/commons/b/b8/OPPO_Logo.svg'
    WHEN Brands = 'Xiaomi' THEN 'https://upload.wikimedia.org/wikipedia/commons/2/29/Xiaomi_logo.svg'
    WHEN Brands = 'Mi' THEN 'https://upload.wikimedia.org/wikipedia/commons/2/29/Xiaomi_logo.svg'
    WHEN Brands = 'Apple' THEN 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1280px-Apple_logo_black.svg.png'
    WHEN Brands = 'Nokia' THEN 'https://upload.wikimedia.org/wikipedia/commons/0/02/Nokia_wordmark.svg'
    when brands = 'JioPhone' then 'https://en.wikipedia.org/wiki/Jio#/media/File:Reliance_Jio_Logo.svg'
     when brands = 'Itel' then 'https://en.wikipedia.org/wiki/Itel_Mobile#/media/File:Itel_Indonesia_logo.png'
    ELSE 'unknown'
END;


SELECT 
    Operating_System_Type,
    CASE 
        WHEN Operating_System_Type = 'Android' THEN 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Android_logo_%282019-2023%29.svg'
        WHEN Operating_System_Type = 'iOS' THEN 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1280px-Apple_logo_black.svg.png'
        WHEN Operating_System_Type = 'Windows' THEN 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Windows_logo_-_2012.svg'
        ELSE 'Unknown'
    END AS Logo_Link
FROM mobile_1.`mobile analysis`;

alter table mobile_1.`mobile analysis` add column Logo_link Varchar(3355)

UPDATE mobile_1.`mobile analysis`
SET Logo_link = 
    CASE 
        WHEN Operating_System_Type = 'Android' THEN 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Android_logo_%282019-2023%29.svg'
        WHEN Operating_System_Type = 'iOS' THEN 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1280px-Apple_logo_black.svg.png'
        WHEN Operating_System_Type = 'Windows' THEN 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Windows_logo_-_2012.svg'
        ELSE 'Unknown'
    END;


 
 
 





