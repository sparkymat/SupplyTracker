District.seed(:id,
  {id:  1, code: 'alp', name: 'Alappuzha',          local_name: 'ആലപ്പുഴ'      },
  {id:  2, code: 'ekm', name: 'Ernakulam',          local_name: 'എറണാകുളം'   },
  {id:  3, code: 'idk', name: 'Idukki',             local_name: 'ഇടുക്കി'       },
  {id:  4, code: 'knr', name: 'Kannur',             local_name: 'കണ്ണൂർ'        },
  {id:  5, code: 'ksr', name: 'Kasaragod',          local_name: 'കാസർഗോഡ്'   },
  {id:  6, code: 'kol', name: 'Kollam',             local_name: 'കൊല്ലം'        },
  {id:  7, code: 'ktm', name: 'Kottayam',           local_name: 'കോട്ടയം'       },
  {id:  8, code: 'koz', name: 'Kozhikode',          local_name: 'കോഴിക്കോട്'    },
  {id:  9, code: 'mpm', name: 'Malappuram',         local_name: 'മലപ്പുറം'       },
  {id: 10, code: 'pkd', name: 'Palakkad',           local_name: 'പാലക്കാട്'      },
  {id: 11, code: 'ptm', name: 'Pathanamthitta',     local_name: 'പത്തനംതിട്ട'     },
  {id: 12, code: 'tvm', name: 'Thiruvananthapuram', local_name: 'തിരുവനന്തപുരം'  },
  {id: 13, code: 'tcr', name: 'Thrissur',           local_name: 'തൃശ്ശൂർ'        },
  {id: 14, code: 'wnd', name: 'Wayanad',            local_name: 'വയനാട്'        },
)

Area.seed(:id,
  { id:  1, name: 'Neyyattinkara',      district_id: 12 },
  { id:  2, name: 'Kattakkada',         district_id: 12 },
  { id:  3, name: 'Nedumangadu',        district_id: 12 },
  { id:  4, name: 'Thiruvananthapuram', district_id: 12 },
  { id:  5, name: 'Chirayinkeezhu',     district_id: 12 },
  { id:  6, name: 'Varkala',            district_id: 12 },
  { id:  7, name: 'Kollam',             district_id: 6  },
  { id:  8, name: 'Kunnathoor',         district_id: 6  },
  { id:  9, name: 'Karunagappally',     district_id: 6  },
  { id: 10, name: 'Kottarakkara',       district_id: 6  },
  { id: 11, name: 'Punalur',            district_id: 6  },
  { id: 12, name: 'Pathanapuram',       district_id: 6  },
  { id: 13, name: 'Adoor',              district_id: 11 },
  { id: 14, name: 'Konni',              district_id: 11 },
  { id: 15, name: 'Kozhencherry',       district_id: 11 },
  { id: 16, name: 'Ranni',              district_id: 11 },
  { id: 17, name: 'Mallappally',        district_id: 11 },
  { id: 18, name: 'Thiruvalla',         district_id: 11 },
)
=begin
Chenganoor 	Alappuzha District 	11
Mavelikkara 	Alappuzha District 	15
Karthikappally (HO: Haripad) 	Alappuzha District 	18
Kuttanad {HO: Mankombu} 	Alappuzha District 	14
Ambalappuzha (HO: Alappuzha) 	Alappuzha District 	13
Cherthala 	Alappuzha District 	20
Changanasserry 	Kottayam District 	15
Kottayam 	Kottayam District 	26
Vaikom 	Kottayam District 	18
Meenachil (HO: Palai) 	Kottayam District 	28
Kanjirappally 	Kottayam District 	13
Peermade 	Idukki District 	10
Udumbanchola (HO: Nedumkandam) 	Idukki District 	23
Idukki (HO: Painavu) 	Idukki District 	19
Thodupuzha 	Idukki District 	19
Devikulam 	Idukki District 	12
Kothamangalam 	Ernakulam District 	12
Muvattupuzha 	Ernakulam District 	18
Kunnathunad(HO: Perumbavoor) 	Ernakulam District 	23
Kanayannur (HO: Eranakulam) 	Ernakulam District 	20
Kochi (HO: Fort Kochi) 	Ernakulam District 	15
North Paravur 	Ernakulam District 	13
Aluva 	Ernakulam District 	16
Chalakudy 	Thrissur District 	31
Mukundapuram (HO: Irinjalakuda) 	Thrissur District 	29
Kodungallur 	Thrissur District 	12
Thrissur 	Thrissur District 	41
Chavakkad 	Thrissur District 	17
Kunnamkulam 	Thrissur District 	14
Thalapilly (HO: Wadakkancheri) 	Thrissur District 	22
Alathoor 	Palakkad District 	30
Chittur 	Palakkad District 	30
Palakkad 	Palakkad District 	30
Pattambi 	Palakkad District 	18
Ottappalam 	Palakkad District 	41
Mannarkkad 	Palakkad District 	25
Perinthalmanna 	Malappuram District 	24
Nilambur 	Malappuram District 	19
Eranad (HO: Manjeri) 	Malappuram District 	33
Kondotty 	Malappuram District 	09
Ponnani 	Malappuram District 	11
Tirur 	Malappuram District 	30
Thiroorangadi 	Malappuram District 	18
Kozhikode 	Kozhikode District 	25
Thamarassery 	Kozhikode District 	20
Koyilandy 	Kozhikode District 	34
Vatakara 	Kozhikode District 	28
Vythiri (HO: Kalpetta) 	Wayanad District 	18
Sulthan Bathery 	Wayanad District 	15
Mananthavady 	Wayanad District 	16
Thalassery 	Kannur District 	34
Iritty 	Kannur District 	19
Kannur 	Kannur District 	34
Taliparamba 	Kannur District 	33
Payyannur 	Kannur District 	12
Hosdurg 	Kasaragod District 	20
Vellarikundu 	Kasaragod District 	14
Kasaragod 	Kasaragod District 	25
Manjeswaram(Uppala) 	Kasaragod District
=end
