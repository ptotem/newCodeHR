# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create!({name: "Admin", email: "admin@codehr.com", password: "admin123"})
admin.save!

###################################################################################################################################
# Seed Data
@roles = [
	{name:"Admin"},
	{name:"Apprentice"},
	{name:"Area Administration Manager"},
	{name:"Area Sales Engineer"},
	{name:"Area Sales Executive"},
	{name:"Area Sales Manager"},
	{name:"Area Service Engineer"},
	{name:"Area Technical Manager"},
	{name:"Area Assistant Manager"},
	{name:"Associate General Manager"},
	{name:"Associate Vice President"},
	{name:"Chief Executive Officer"},
	{name:"Chief Operations Officer"},
	{name:"Coordinator"},
	{name:"Deputy Manager"},
	{name:"Divisional Manager"},
	{name:"Draughtsman"},
	{name:"Engineer"},
	{name:"Executive"},
	{name:"Executive Assistant"},
	{name:"Functional Assistant"},
	{name:"General Manager"},
	{name:"Head"},
	{name:"Helper"},
	{name:"Human Resource"},
	{name:"Incharge"},
	{name:"Junior Engineer"},
	{name:"Junior Executive"},
	{name:"Manager"},
	{name:"Managing Director"},
	{name:"Office Assistant"},
	{name:"Operator"},
	{name:"Plant Manager"},
	{name:"President"},
	{name:"Purchase Assistant"},
	{name:"Regional Manager"},
	{name:"Senior Analyst"},
	{name:"Senior Area Engineer"},
	{name:"Senior Area Technical Manager"},
	{name:"Senior Attendant"},
	{name:"Senior Engineer"},
	{name:"Senior Executive"},
	{name:"Senior Manager"},
	{name:"Senior Project Manager"},
	{name:"Senior Service Engineer"},
	{name:"Senior Technical Specialist"},
	{name:"Senior Technician"},
	{name:"Service Engineer"},
	{name:"Shift Engineer"},
	{name:"Shift Incharge"},
	{name:"Supervisor"},
	{name:"Technician"},
	{name:"Vice President"},
	{name:"Zonal Manager"}
]

@bands = [
	{name:"Admin Band"},
	{name:"Top Management"},
	{name:"Senior Management"},
	{name:"Middle Management"},
	{name:"Junior Management"}
]

@departments = [
	{name: "Accounts & Finance"},
	{name: "Administration"},
	{name: "Business Efficiency Group"},
	{name: "Civil"},
	{name: "Commercial"},
	{name: "Design"},
	{name: "Human Resource"},
	{name: "Industrial Sales"},
	{name: "Industrial Services"},
	{name: "Industrial Services (Roserve)"},
	{name: "Logistics"},
	{name: "Maintenance"},
	{name: "Management"},
	{name: "Marine Sales"},
	{name: "Marine Services"},
	{name: "Operations"},
	{name: "Production"},
	{name: "Purchase"},
	{name: "Quality Assurance"},
	{name: "Sales"},
	{name: "SCM"},
	{name: "Services"},
	{name: "Stores"},
	{name: "Technical"},
	{name: "Training"}
]

@users = [
	{employee_code:"SAG005",employee_name:"Pavan Singh",employee_middle_name_name:"Ajit",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"14-Mar-74",date_of_joining:"1-Apr-11",designation_joined_at:"Managing Director",official_email:"PavanSingh@sag.com",address_for_communication:"Matru Srinilayam,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Business Efficiency Group"},
	{employee_code:"SAG006",employee_name:"Pritam Singh",employee_middle_name_name:"Vasant",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"18-Apr-78",date_of_joining:"1-Apr-11",designation_joined_at:"Managing Director",official_email:"PritamSingh@sag.com",address_for_communication:"B-304,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Design"},
	{employee_code:"SES005",employee_name:"Pritam Singh",employee_middle_name_name:"Alluri Reddy",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"18-Apr-78",date_of_joining:"1-Jul-10",designation_joined_at:"Managing Director",official_email:"AnupamSapat@spp.com",address_for_communication:"A/2,GF-2,Shagun Flats,Kasturi Nagar Society,Behind Shreyas High School,Manjalpur,Vadodra-390004",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Industrial Sales"},
	{employee_code:"SES006",employee_name:"Pavan Sigh",employee_middle_name_name:"Yashwant",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"14-Mar-74",date_of_joining:"1-Jul-10",designation_joined_at:"Managing Director",official_email:"PavanSigh@stti.com",address_for_communication:"Matru Srinilayam,A/2, Flat no - 307, Lok Gaurav CHS, LBS Marg,Vikhroli(W), Mumbai - 400083",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Industrial Services"},
	{employee_code:"SIS001",employee_name:"Sanjay Bhattacharya",employee_middle_name_name:"Henry Picardo",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"3-Jan-47",date_of_joining:"1-Apr-09",designation_joined_at:"Chief Operations Officer",official_email:"RaymondKalaskar@sag.com",address_for_communication:"Daulat Nagar,A-1205, Mansarovar Tower, Neelkanth Heights, Pokharan Road No. 1, Thane (W),  ",parent_ids:"SAG005",role_ids:"Chief Operations Officer",group_master_ids:"",band:"Top Management",department:"Human Resource"},
	{employee_code:"SIS002",employee_name:"Santosh Nain",employee_middle_name_name:"Sahadev Manjrekar",status:"Transfer",gender:"Male",marital_status:"UnMarried",date_of_birth:"26-Jul-77",date_of_joining:"1-Apr-09",designation_joined_at:"Associate General Manager",official_email:"DavinderVerma@sag.com",address_for_communication:"Daulat Nagar,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"SAG005",role_ids:"Associate General Manager",group_master_ids:"",band:"Top Management",department:"Industrial Services (Roserve)"},
	{employee_code:"SIS009",employee_name:"Neeraj Lakshmikanthan",employee_middle_name_name:"Ganpat Temkar",status:"Resigned",gender:"Male",marital_status:"Married",date_of_birth:"14-Jan-50",date_of_joining:"1-Apr-10",designation_joined_at:"Head",official_email:"SatishSangani@spp.com",address_for_communication:"7/D,B-304,Ghanshyam Palace,Virar (East)-401305",parent_ids:"SIS042",role_ids:"Head",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"SIS017",employee_name:"Pritam Singh",employee_middle_name_name:"Kulathur Devidas",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"18-Apr-78",date_of_joining:"1-Apr-11",designation_joined_at:"Managing Director",official_email:"NitinSinghRawat@spp.com",address_for_communication:"Vill URK Puram,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"SIS018",employee_name:"Pavan Sigh",employee_middle_name_name:"Khushal Singh Rawat",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"14-Mar-74",date_of_joining:"1-Apr-11",designation_joined_at:"Managing Director",official_email:"RaviPawar@spp.com",address_for_communication:"H. No. 2-7-2,Vill URK Puram, Post Pathatekkali, VIA Pundi (RS) Dist Srikakulam, State AP, Pin 532218",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"SIS020",employee_name:"Shrinivas Kumar Khajuria",employee_middle_name_name:"Mangalsingh Rajpurohit",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"30-Mar-52",date_of_joining:"11-Oct-10",designation_joined_at:"General Manager",official_email:"NageswaraNaik@spp.com",address_for_communication:"39,17B/12, Brindaban Society, Thane (W) - 400 601",parent_ids:"SIS042",role_ids:"General Manager",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"E00013",employee_name:"Dilip G Mahajan",employee_middle_name_name:"Koopchand Gusain",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"12-May-68",date_of_joining:"1-Sep-96",designation_joined_at:"Vice President",official_email:"GopalGunakaraRao@spp.com",address_for_communication:"Flat no. C-504,B-705, Vasant Prakash CHS Off JP Road, Seven Bungalows, Andheri (W) - 400 061",parent_ids:"SES005",role_ids:"Vice President",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"E00034",employee_name:"Mitesh Devidas",employee_middle_name_name:"K.K. Mani",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"25-Apr-67",date_of_joining:"24-Nov-99",designation_joined_at:"Vice President",official_email:"AnkitKumar@spp.com",address_for_communication:"I 503,Flat no. C-504, Anand Heritage, Anand Park, Kandarpada, Dahisar (W) - 400 068",parent_ids:"SAG005",role_ids:"Vice President",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"E00039",employee_name:"Bharat Phatak ",employee_middle_name_name:"Purna Chandra Pati",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"9-Dec-46",date_of_joining:"1-Sep-98",designation_joined_at:"General Manager",official_email:"GayaVilasShrirang@stti.com",address_for_communication:"C702 ,Kalbhat Wadi, Tamtalow Papdy vasai Dist Thane",parent_ids:"SAG005",role_ids:"General Manager",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"E00058",employee_name:"Pramod K Ahluwalia",employee_middle_name_name:"Madhukar Acharekar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"14-Jul-56",date_of_joining:"30-Dec-03",designation_joined_at:"Associate Vice President",official_email:"VivekSingh@sag.com",address_for_communication:"AT Aamshet Kond,Daulat Nagar,Nutan Nagar Zopadpatti, Gali No 17, S V Road, Borivali East, Near Police Chowky, Mumbai - 400066",parent_ids:"SAG005",role_ids:"Associate Vice President",group_master_ids:"",band:"Top Management",department:"Management"},
	{employee_code:"E00338",employee_name:"Sangaru L Gopalkrishnan",employee_middle_name_name:"",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"18-Aug-50",date_of_joining:"1-Dec-07",designation_joined_at:"General Manager",official_email:"KuttappanPatil@spp.com",address_for_communication:"XIII188,C702 ,Regency Bldg. Agarwal Township, Kauls Heritage, Babola, Vasai West,401206",parent_ids:"SAG005",role_ids:"General Manager",group_master_ids:"",band:"Top Management",department:"Marine Sales"},
	{employee_code:"E00350",employee_name:"Cpt. Sachin Parkash",employee_middle_name_name:"Nandan",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"16-Dec-53",date_of_joining:"12-Jan-08",designation_joined_at:"General Manager",official_email:"BalajiPereira@spp.com",address_for_communication:"C-104,XIII188, Holi Ghati, Holi Mohalla, Karnal (Haryana) 132001",parent_ids:"SAG005",role_ids:"General Manager",group_master_ids:"",band:"Top Management",department:"Marine Services"},
	{employee_code:"E00636",employee_name:"Amar Paul",employee_middle_name_name:"Dewaji Kasar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"8-Jul-64",date_of_joining:"24-May-11",designation_joined_at:"Vice President",official_email:"M.Sasindran@spp.com",address_for_communication:"EMP 53/602,I 503, Munthri Tranquil off Kanakpura Road, Gubbalala, Bangalore",parent_ids:"SAG005",role_ids:"Vice President",group_master_ids:"",band:"Top Management",department:"Operations"},
	{employee_code:"E00641",employee_name:"Jitesh Thorat",employee_middle_name_name:"Madhusudhan Chaterjee",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"20-Jan-67",date_of_joining:"7-Jun-11",designation_joined_at:"General Manager",official_email:"RoopchandGusain@spp.com",address_for_communication:"08 Gomati Naval Park,C-104, Kamal Park, Near Mangatram Petrol Pump, LBS Marg, Bhandup (W), Mumbai - 400 078",parent_ids:"SAG005",role_ids:"General Manager",group_master_ids:"",band:"Top Management",department:"Operations"},
	{employee_code:"E00725",employee_name:"Amit Khurana",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"24-Jul-75",date_of_joining:"15-Dec-11",designation_joined_at:"General Manager",official_email:"S.Kuppuswamy@spp.com",address_for_communication:"17B/12,08 Gomati Naval Park, Material organization LBS Marg, Ghatkopar (W), Mumbai, 400086.",parent_ids:"SAG005",role_ids:"General Manager",group_master_ids:"",band:"Top Management",department:"Operations"},
	{employee_code:"E00915",employee_name:"Anupam Sapat",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"17-Aug-76",date_of_joining:"1-Jul-14",designation_joined_at:"Vice President",official_email:"SureshKumbhar@spp.com",address_for_communication:"F- 602,EMP 53/602,Sector 2B,Phase 5,Thakur Village,Kandivali(E),Mumbai - 400101",parent_ids:"SAG006",role_ids:"Vice President",group_master_ids:"",band:"Top Management",department:"Production"},
	{employee_code:"STT013",employee_name:"Pavan Sigh",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"18-Apr-78",date_of_joining:"1-Apr-11",designation_joined_at:"Managing Director",official_email:"PavanDewajiKasar@stti.com",address_for_communication:"7/D,B-304,Ghanshyam Palace,Virar (East)-401305",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"SCM"},
	{employee_code:"STT014",employee_name:"Pritam Singh",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"14-Mar-74",date_of_joining:"1-Apr-11",designation_joined_at:"Managing Director",official_email:"NitinUttamraoMohod@stti.com",address_for_communication:"GF-2,7/D, Shri Haripark, Near Ankur Society, Naranpura, Ahmedabad - 13",parent_ids:"",role_ids:"Managing Director",group_master_ids:"",band:"Top Management",department:"Training"},
	{employee_code:"SAG007",employee_name:"Raymond Kalaskar",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"25-Oct-62",date_of_joining:"17-Aug-11",designation_joined_at:"Associate Vice President",official_email:"PritamSingh@ses.com",address_for_communication:"Kalbhat Wadi,AT Aamshet Kond, Post Dahiwad, Taluka Mahad, Dist Raigad",parent_ids:"SAG005",role_ids:"Associate Vice President",group_master_ids:"",band:"Senior Management",department:"Accounts & Finance"},
	{employee_code:"SAG049",employee_name:"Davinder Verma",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"3-May-47",date_of_joining:"18-Oct-12",designation_joined_at:"Chief Executive Officer",official_email:"MiteshDevidas@spp.com",address_for_communication:"A-1205,Kalbhat Wadi, Tamtalow Papdy vasai Dist Thane",parent_ids:"SAG005",role_ids:"Chief Executive Officer",group_master_ids:"",band:"Senior Management",department:"Industrial Sales"},
	{employee_code:"SAG065",employee_name:"Yashoda Mehta ",employee_middle_name_name:"Boddudu",status:"Active",gender:"",marital_status:"Unmarried",date_of_birth:"1-Feb-80",date_of_joining:"1-Apr-14",designation_joined_at:"Head",official_email:"JiteshThorat@spp.com",address_for_communication:"Matru Srinilayam,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"SAG005",role_ids:"Head",group_master_ids:"",band:"Senior Management",department:"Industrial Sales"},
	{employee_code:"SIS042",employee_name:"Kiran Athalye",employee_middle_name_name:"Shivcharan Singh Rawat",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"21-Aug-55",date_of_joining:"9-Apr-12",designation_joined_at:"President",official_email:"SharadDabre@sag.com",address_for_communication:"B-304,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"SAG005",role_ids:"President",group_master_ids:"",band:"Senior Management",department:"Human Resource"},
	{employee_code:"E00008",employee_name:"Nishchal C Date ",employee_middle_name_name:"Lt. P. Yerraiah",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"26-Sep-62",date_of_joining:"2-Jul-01",designation_joined_at:"Associate General Manager",official_email:"PravinGupta@spp.com",address_for_communication:"Vill URK Puram,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"SES005",role_ids:"Associate General Manager",group_master_ids:"",band:"Senior Management",department:"Human Resource"},
	{employee_code:"E00016",employee_name:"Prakash Wadekar ",employee_middle_name_name:"Dhondu Ligam",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"28-Oct-73",date_of_joining:"17-Aug-04",designation_joined_at:"Zonal Manager",official_email:"SubirDandavate@spp.com",address_for_communication:"B-11,F- 602, Seawood, Gorai Shivshambho CHS Ltd, Gorai III, Borivli (W), Mumbai - 400 092",parent_ids:"SES005",role_ids:"Zonal Manager",group_master_ids:"",band:"Senior Management",department:"Industrial Services (Roserve)"},
	{employee_code:"E00035",employee_name:"Nawab S Rawat ",employee_middle_name_name:"Juria Badatya",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"7-Jul-56",date_of_joining:"1-Apr-96",designation_joined_at:"Senior Manager",official_email:"ManojKowale@spp.com",address_for_communication:"H. No. 2-7-2,A/101, Dhiraj Apt. Sudeep CHS Society, Achole Road, Nalasopara (E), Thane - 401209",parent_ids:"E00058",role_ids:"Senior Manager",group_master_ids:"",band:"Senior Management",department:"Operations"},
	{employee_code:"E00042",employee_name:"Satish Sangani ",employee_middle_name_name:"Rajendra Gupta",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"2-Nov-80",date_of_joining:"2-Jun-03",designation_joined_at:"Zonal Manager",official_email:"CamilaUmraoprasadAmrodiya@stti.com",address_for_communication:"H. No. 2-7-2,B-11, Avanti, Haridas Nagar, Shimpoli Road, Borivali (W), Mumbai - 400 092",parent_ids:"E00350",role_ids:"Zonal Manager",group_master_ids:"",band:"Senior Management",department:"Operations"},
	{employee_code:"E00045",employee_name:"R Ahmed ",employee_middle_name_name:"Sadanand Surve",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"14-Jan-79",date_of_joining:"22-Jul-02",designation_joined_at:"Senior Manager",official_email:"HimmatDilipThite@sag.com",address_for_communication:"B-102,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00034",role_ids:"Senior Manager",group_master_ids:"",band:"Senior Management",department:"Operations"},
	{employee_code:"E00048",employee_name:"Nitin Singh Rawat ",employee_middle_name_name:"Rajender",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"9-Aug-67",date_of_joining:"23-Jun-03",designation_joined_at:"Senior Manager",official_email:"ShahajiBarne@sag.com",address_for_communication:"66 - Bhidbhanjan Society,B-102, Bhoir Residency Near Sun Flower Bldg, Sai Nagar, Vasai Road, - 401202 Maharashtra",parent_ids:"E00058",role_ids:"Senior Manager",group_master_ids:"",band:"Senior Management",department:"Production"},
	{employee_code:"E00277",employee_name:"Ravi Pawar",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"1-Sep-82",date_of_joining:"18-Jun-07",designation_joined_at:"Senior Manager",official_email:"MoolsinghLigam@spp.com",address_for_communication:"4/410,66 - Bhidbhanjan Society, Behind Siddharth Township, Nana Varachha, Surat - 395006, Gujrat.",parent_ids:"E00034",role_ids:"Senior Manager",group_master_ids:"",band:"Senior Management",department:"Production"},
	{employee_code:"E00292",employee_name:"Nageswara Naik",employee_middle_name_name:"Laxman",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"5-May-76",date_of_joining:"1-Sep-07",designation_joined_at:"Regional Manager",official_email:"APatil@spp.com",address_for_communication:"GF-2,7/D, Shri Haripark, Near Ankur Society, Naranpura, Ahmedabad - 13",parent_ids:"E00641",role_ids:"Regional Manager",group_master_ids:"",band:"Senior Management",department:"Purchase"},
	{employee_code:"E00619",employee_name:"Peddinti Tere",employee_middle_name_name:"Vilas Shrirang",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"16-Jan-68",date_of_joining:"18-Apr-11",designation_joined_at:"Associate General Manager",official_email:"AzhaguRao@spp.com",address_for_communication:"H. No. 2-7-2,Vill URK Puram, Post Pathatekkali, VIA Pundi (RS) Dist Srikakulam, State AP, Pin 532218",parent_ids:"E00636",role_ids:"Associate General Manager",group_master_ids:"",band:"Senior Management",department:"Purchase"},
	{employee_code:"E00938",employee_name:"Mohan Ayeer",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"6-Apr-80",date_of_joining:"15-Sep-14",designation_joined_at:"Senior Manager",official_email:"ShaktiMukundMohite@spp.com",address_for_communication:"66 - Bhidbhanjan Society,4/410, Prabhavinayak CHS, New Prabhadevi Road, Mumbai - 400 025",parent_ids:"E00636",role_ids:"Senior Manager",group_master_ids:"",band:"Senior Management",department:"SCM"},
	{employee_code:"STT005",employee_name:"Pritam Madhusudan Chatterjee",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"15-Sep-70",date_of_joining:"29-May-95",designation_joined_at:"Head",official_email:"PrakashMaran@spp.com",address_for_communication:"B-304,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"SAG006",role_ids:"Head",group_master_ids:"",band:"Senior Management",department:"Technical"},
	{employee_code:"SAG015",employee_name:"Sharad Dabre",employee_middle_name_name:"Ajit",status:"Separated",gender:"Male",marital_status:"Married",date_of_birth:"2-Jan-68",date_of_joining:"9-Jan-12",designation_joined_at:"Senior Project Manager",official_email:"NeerajLakshmikanthan@sis.com",address_for_communication:"No-431,Bhuigaon - Ekhad, (Alliluya House) Tal & Post Vasai (W), 401201",parent_ids:"SAG007",role_ids:"Senior Project Manager",group_master_ids:"",band:"Middle Management",department:"Accounts & Finance"},
	{employee_code:"SES014",employee_name:"Soumya S Manjrekar",employee_middle_name_name:"Peter Coelho",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"8-Aug-57",date_of_joining:"1-Jan-12",designation_joined_at:"Manager",official_email:"PritamSingh@stti.com",address_for_communication:"A-203,1/53, MHB, Colony, Near Tata Receiving Station, Borivali (E), Mumbai - 400 066",parent_ids:"SES005",role_ids:"Manager",group_master_ids:"",band:"Middle Management",department:"Accounts & Finance"},
	{employee_code:"SIS003",employee_name:"Bachan Chandra Swain",employee_middle_name_name:"Chintaman Date",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"21-Jun-83",date_of_joining:"20-Apr-09",designation_joined_at:"Manager",official_email:"YashodaMehta@sag.com",address_for_communication:"A-1205,A-203, Chandres Chhaya, P-1, Lodha Complex, Mira Road (E), Thane - 401107",parent_ids:"SIS042",role_ids:"Manager",group_master_ids:"",band:"Middle Management",department:"Accounts & Finance"},
	{employee_code:"SIS004",employee_name:"E D Bhattacharya",employee_middle_name_name:"Vijay Salunkhe",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"11-Apr-82",date_of_joining:"4-May-09",designation_joined_at:"Manager",official_email:"KiranAthalye@sis.com",address_for_communication:"Nestle House Unganbhat,A-1205, Mansarovar Tower, Neelkanth Heights, Pokharan Road No. 1, Thane (W),  ",parent_ids:"SAG005",role_ids:"Manager",group_master_ids:"",band:"Middle Management",department:"Administration"},
	{employee_code:"SIS059",employee_name:"Deepak Deshpande",employee_middle_name_name:"Sadashiv Patil",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"17-Jul-77",date_of_joining:"18-Dec-13",designation_joined_at:"Plant Manager",official_email:"EDBhattacharya@sis.com",address_for_communication:"Matru Srinilayam,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"SIS042",role_ids:"Plant Manager",group_master_ids:"",band:"Middle Management",department:"Civil"},
	{employee_code:"E00005",employee_name:"Shraddha Coelho ",employee_middle_name_name:"V.N. Prasad Babu",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"13-Mar-67",date_of_joining:"14-Mar-94",designation_joined_at:"Deputy Manager",official_email:"VineetBadatya@spp.com",address_for_communication:"29,606, Mangal Murthi, Agar Bazar, SK Bole Road, Dadar (W), Mumbai - 400 028",parent_ids:"SES005",role_ids:"Deputy Manager",group_master_ids:"",band:"Middle Management",department:"Design"},
	{employee_code:"E00007",employee_name:"Soumya S Manjrekar",employee_middle_name_name:"Santosh Sawant",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"8-Aug-57",date_of_joining:"14-Dec-93",designation_joined_at:"Manager",official_email:"GaneshPrasadPati@spp.com",address_for_communication:"Kalbhat Wadi,AT Aamshet Kond, Post Dahiwad, Taluka Mahad, Dist Raigad",parent_ids:"SES005",role_ids:"Manager",group_master_ids:"",band:"Middle Management",department:"Design"},
	{employee_code:"E00009",employee_name:"Kamna Vijay Salunke ",employee_middle_name_name:"C. Sasindran",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"15-Jun-73",date_of_joining:"3-Apr-00",designation_joined_at:"Manager",official_email:"ShirishSingal@spp.com",address_for_communication:"1/53,Kalbhat Wadi, Tamtalow Papdy vasai Dist Thane",parent_ids:"SES005",role_ids:"Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Sales"},
	{employee_code:"E00015",employee_name:"Santosh Joseph ",employee_middle_name_name:"Dhanaji Patil",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"22-Mar-79",date_of_joining:"1-Mar-04",designation_joined_at:"Area Sales Manager",official_email:"RosyRamarao@spp.com",address_for_communication:"A/2,GF-2,Shagun Flats,Kasturi Nagar Society,Behind Shreyas High School,Manjalpur,Vadodra-390004",parent_ids:"E00641",role_ids:"Area Sales Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Sales"},
	{employee_code:"E00038",employee_name:"Kaustubh Rajpurohit",employee_middle_name_name:"Paras Rai",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"10-Jan-59",date_of_joining:"1-Sep-98",designation_joined_at:"Area Technical Manager",official_email:"AnjaliCorreia@spp.com",address_for_communication:"39,Flat No. 3, New Prerna CHS, Fatherwadi, Vasai (E), Dist Thane",parent_ids:"E00269",role_ids:"Area Technical Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Sales"},
	{employee_code:"E00067",employee_name:"Basudeb Sudhagar ",employee_middle_name_name:"P.H. Laxminarayan",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"7-Jul-80",date_of_joining:"1-Jun-04",designation_joined_at:"Senior Technical Specialist",official_email:"AmitPohare@sag.com",address_for_communication:"AT Post Dugad,AT Post Pacchapur, Tel Bhiwandi, Dist Thane",parent_ids:"E00058",role_ids:"Senior Technical Specialist",group_master_ids:"",band:"Middle Management",department:"Industrial Sales"},
	{employee_code:"E00082",employee_name:"Rajan Nair",employee_middle_name_name:"Premchand Sharma",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"16-Jan-70",date_of_joining:"13-Sep-04",designation_joined_at:"Area Technical Manager",official_email:"MiliVijayFurtado@ses.com",address_for_communication:"Matru Srinilayam,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"E00269",role_ids:"Area Technical Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00146",employee_name:"Vineet Badatya ",employee_middle_name_name:"Vinod",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"9-Jul-76",date_of_joining:"1-Aug-05",designation_joined_at:"Area Technical Manager",official_email:"RD'Monte@spp.com",address_for_communication:"B-304,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"E00269",role_ids:"Area Technical Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00149",employee_name:"Achyut Kumar Rai ",employee_middle_name_name:"Dhaniram",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"10-May-74",date_of_joining:"2-Aug-05",designation_joined_at:"Senior Area Technical Manager",official_email:"AmolYadav@spp.com",address_for_communication:"H. No. 2-7-2,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00269",role_ids:"Senior Area Technical Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00161",employee_name:"Ganesh Prasad Pati ",employee_middle_name_name:"Mukund",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"22-Nov-76",date_of_joining:"1-Sep-05",designation_joined_at:"Senior Area Technical Manager",official_email:"VillintonRaoChodhari@spp.com",address_for_communication:"AT Aamshet Kond,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00269",role_ids:"Senior Area Technical Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00192",employee_name:"Pravin Gupta",employee_middle_name_name:"Balraj",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"29-Apr-69",date_of_joining:"28-Dec-05",designation_joined_at:"Area Administration Manager",official_email:"ShikhaRaghuvanshi@spp.com",address_for_communication:"36 Gauri Shankar Colony,116, Abhaygargh, Opp Air force central school no 1, Jodhpur - 342011",parent_ids:"E00641",role_ids:"Area Administration Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00241",employee_name:"Shirish Singal ",employee_middle_name_name:"Shantilal",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"27-Jan-84",date_of_joining:"1-Nov-06",designation_joined_at:"Assistant Manager",official_email:"ManjunathChavan@spp.com",address_for_communication:"GF-2,7/D, Shri Haripark, Near Ankur Society, Naranpura, Ahmedabad - 13",parent_ids:"SAG005",role_ids:"Assistant Manager",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00371",employee_name:"Gopal Gunakara Rao",employee_middle_name_name:"Vasant",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"1-Mar-73",date_of_joining:"10-Mar-08",designation_joined_at:"Senior Area Engineer",official_email:"GaneshPatil@spp.com",address_for_communication:"Vill URK Puram,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"E00269",role_ids:"Senior Area Engineer",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00378",employee_name:"Rosy Ramarao",employee_middle_name_name:"Sebestian",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"5-Oct-75",date_of_joining:"10-Mar-08",designation_joined_at:"Senior Area Engineer",official_email:"ArunKamble@spp.com",address_for_communication:"H. No. 2-7-2,Vill URK Puram, Post Pathatekkali, VIA Pundi (RS) Dist Srikakulam, State AP, Pin 532218",parent_ids:"E00269",role_ids:"Senior Area Engineer",group_master_ids:"",band:"Middle Management",department:"Industrial Services"},
	{employee_code:"E00550",employee_name:"Subir Dandavate",employee_middle_name_name:"Rammurthy N.",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"11-Jun-79",date_of_joining:"6-Jul-10",designation_joined_at:"Area Sales Manager",official_email:"MayaSSawant@spp.com",address_for_communication:"Matru Srinilayam,A/2, Flat no - 307, Lok Gaurav CHS, LBS Marg,Vikhroli(W), Mumbai - 400083",parent_ids:"E00641",role_ids:"Human Resource",group_master_ids:"",band:"Middle Management",department:"Human Resource"},
	{employee_code:"E00667",employee_name:"Sudhir Chatterjee",employee_middle_name_name:"Umraoprasad Amrodiya",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"8-Mar-68",date_of_joining:"12-Jul-11",designation_joined_at:"Area Sales Manager",official_email:"GBLigam@spp.com",address_for_communication:"Vill URK Puram,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"E00641",role_ids:"Area Sales Manager",group_master_ids:"",band:"Middle Management",department:"Marine Services"},
	{employee_code:"E00766",employee_name:"Rajkumar Sharma",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"UnMarried",date_of_birth:"28-Aug-85",date_of_joining:"9-Jul-12",designation_joined_at:"Area Sales Manager",official_email:"ShyamSSurve@spp.com",address_for_communication:"H. No. 2-7-2,Vill URK Puram, Post Pathatekkali, VIA Pundi (RS) Dist Srikakulam, State AP, Pin 532218",parent_ids:"E00641",role_ids:"Area Sales Manager",group_master_ids:"",band:"Middle Management",department:"Marine Services"},
	{employee_code:"E00770",employee_name:"Ankit Kumar",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"5-Jul-74",date_of_joining:"1-Aug-12",designation_joined_at:"Assistant Manager",official_email:"Cdr.Raut@spp.com",address_for_communication:"A/2,GF-2,Shagun Flats,Kasturi Nagar Society,Behind Shreyas High School,Manjalpur,Vadodra-390004",parent_ids:"E00725",role_ids:"Assistant Manager",group_master_ids:"",band:"Middle Management",department:"Operations"},
	{employee_code:"E00941",employee_name:"Manoj Kowale",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"27-Mar-80",date_of_joining:"16-Oct-14",designation_joined_at:"Area Technical Manager",official_email:"HarpreetDhillon@spp.com",address_for_communication:"7/D,B-304,Ghanshyam Palace,Virar (East)-401305",parent_ids:"E00269",role_ids:"Area Technical Manager",group_master_ids:"",band:"Middle Management",department:"Operations"},
	{employee_code:"E00953",employee_name:"Anjali Correia ",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"20-Apr-77",date_of_joining:"2-Dec-14",designation_joined_at:"Manager",official_email:"PritamMakwana@spp.com",address_for_communication:"39,Nestle House Unganbhat, Nandakhal P.O. Agashi,Virar (West),Tal. Vasai, Dist. Thane Mumbai – 401301",parent_ids:"E00058",role_ids:"Manager",group_master_ids:"",band:"Middle Management",department:"Sales"},
	{employee_code:"STT002",employee_name:"Gaya Vilas Shrirang",employee_middle_name_name:"",status:"",gender:"Female",marital_status:"Unmarried",date_of_birth:"23-Mar-85",date_of_joining:"1-Apr-10",designation_joined_at:"Assistant Manager",official_email:"TanujaPanigrahy@spp.com",address_for_communication:"Matru Srinilayam,A/2, Flat no - 307, Lok Gaurav CHS, LBS Marg,Vikhroli(W), Mumbai - 400083",parent_ids:"STT005",role_ids:"Assistant Manager",group_master_ids:"",band:"Middle Management",department:"Stores"},
	{employee_code:"STT011",employee_name:"Camila Umraoprasad Amrodiya",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"4-May-64",date_of_joining:"1-Apr-10",designation_joined_at:"Divisional Manager",official_email:"MoolsinghSankar@spp.com",address_for_communication:"227,29, Manish Society, Near Madha Colony, Katol Road, Nagpur ",parent_ids:"STT005",role_ids:"Divisional Manager",group_master_ids:"",band:"Middle Management",department:"Technical"},
	{employee_code:"SAG008",employee_name:"Himmat Dilip Thite",employee_middle_name_name:"Ajit",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"3-Nov-78",date_of_joining:"16-Aug-11",designation_joined_at:"Shift incharge",official_email:"PavanSigh@ses.com",address_for_communication:"2/8 Chemical Colony Durgapura Birlagram Nagda,Rahatani Nakhate Vasti, Mathura Colony, Kalewadi, Pimpri, Pune - 17",parent_ids:"SAG049",role_ids:"Shift incharge",group_master_ids:"",band:"Junior Management",department:"Accounts & Finance"},
	{employee_code:"SAG010",employee_name:"Shahaji Barne",employee_middle_name_name:"Vasant",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"30-Oct-69",date_of_joining:"3-Oct-11",designation_joined_at:"Executive",official_email:"SanjayBhattacharya@sis.com",address_for_communication:"GF-2,7/D, Shri Haripark, Near Ankur Society, Naranpura, Ahmedabad - 13",parent_ids:"SAG049",role_ids:"Executive",group_master_ids:"",band:"Junior Management",department:"Administration"},
	{employee_code:"SAG012",employee_name:"Navneet Bhujbal",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"18-Jan-86",date_of_joining:"4-Nov-11",designation_joined_at:"Technician",official_email:"SantoshNain@sis.com",address_for_communication:"Makholi Wadi,Umbraya Ganpati Chowk, Gawali Nagar, Bhosari, Pune - 39",parent_ids:"SAG049",role_ids:"Technician",group_master_ids:"",band:"Junior Management",department:"Administration"},
	{employee_code:"SAG018",employee_name:"Vivek Singh",employee_middle_name_name:"Vasant",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"2-Jul-86",date_of_joining:"4-Feb-12",designation_joined_at:"Shift incharge",official_email:"PritamSingh@sis.com",address_for_communication:"C/103,2/8 Chemical Colony Durgapura Birlagram Nagda, Dist - Ujjain (MP)",parent_ids:"SAG049",role_ids:"Shift incharge",group_master_ids:"",band:"Junior Management",department:"Administration"},
	{employee_code:"SAG021",employee_name:"Sunil More",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"4-Jan-84",date_of_joining:"1-Apr-12",designation_joined_at:"Office Assistant",official_email:"PavanSigh@sis.com",address_for_communication:"AT Aamshet Kond,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"SAG049",role_ids:"Office Assistant",group_master_ids:"",band:"Junior Management",department:"Administration"},
	{employee_code:"SAG036",employee_name:"Deval Tundurwar",employee_middle_name_name:"Ajit",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"26-Feb-75",date_of_joining:"16-Jul-12",designation_joined_at:"Shift Engineer",official_email:"ShrinivasKumarKhajuria@sis.com",address_for_communication:"At post - Ural ",parent_ids:"SAG049",role_ids:"Shift Engineer",group_master_ids:"",band:"Junior Management",department:"Administration"},
	{employee_code:"SAG045",employee_name:"Amit Pohare",employee_middle_name_name:"Vasant",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"17-Sep-74",date_of_joining:"23-Aug-12",designation_joined_at:"Shift Engineer",official_email:"DilipGMahajan@spp.com",address_for_communication:"Rahatani Nakhate Vasti,At post - Ural ",parent_ids:"SAG049",role_ids:"Shift Engineer",group_master_ids:"",band:"Junior Management",department:"Administration"},
	{employee_code:"SAG050",employee_name:"Nandkumar Sakore",employee_middle_name_name:"Ajit",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"16-Jul-87",date_of_joining:"1-Dec-12",designation_joined_at:"Supervisor",official_email:"BharatPhatak@spp.com",address_for_communication:"c/o P.B. Pasare,Sr.no.48/4, Nr. Bhaironath F. Mill, Ganesh Nagar, Wadgaon Sheri, Pune-411014",parent_ids:"SAG049",role_ids:"Supervisor",group_master_ids:"",band:"Junior Management",department:"Business Efficiency Group"},
	{employee_code:"SAG053",employee_name:"Hiren Hapani",employee_middle_name_name:"Vasant",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"15-Jan-86",date_of_joining:"8-Apr-13",designation_joined_at:"Senior Project Engineer",official_email:"PramodKAhluwalia@spp.com",address_for_communication:"Ground Floor,66 - Bhidbhanjan Society, Behind Siddharth Township, Nana Varachha, Surat - 395006, Gujrat.",parent_ids:"SAG049",role_ids:"Senior Project Engineer",group_master_ids:"",band:"Junior Management",department:"Commercial"},
	{employee_code:"SAG054",employee_name:"Vrushali Kumar Saroj",employee_middle_name_name:"Valerian",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"25-May-85",date_of_joining:"1-Jun-13",designation_joined_at:"Senior Project Engineer",official_email:"SangaruLGopalkrishnan@spp.com",address_for_communication:"Bhuigaon - Ekhad,Ground Floor, Tokarsi Patra Chawl No. 9/15, T.J. Road, Sewree, Mumbai - 400 015",parent_ids:"SAG049",role_ids:"Senior Project Engineer",group_master_ids:"",band:"Junior Management",department:"Design"},
	{employee_code:"SAG055",employee_name:"Deepak Singh Purva",employee_middle_name_name:"Blaise",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"11-Mar-80",date_of_joining:"7-Jun-13",designation_joined_at:"Engineer",official_email:"Cpt.SachinParkash@spp.com",address_for_communication:"CEN 171-2,Plot no. 06, near hingana naka, Behind Simran Auto spare Kalyan nagar & Hingana Road, Nagpur - 440016",parent_ids:"SAG049",role_ids:"Engineer",group_master_ids:"",band:"Junior Management",department:"Design"},
	{employee_code:"SAG060",employee_name:"Kaustav Kekare",employee_middle_name_name:"Ramjanam Yadav",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"1-Jun-86",date_of_joining:"1-Mar-14",designation_joined_at:"Engineer",official_email:"AmarPaul@spp.com",address_for_communication:"39,CEN 171-2, Near Urban Bank, Kodoli Housing colony, A/p-Kodoli, Tal-Panhala, Dist-Kolhapur - 416114",parent_ids:"SAG049",role_ids:"Engineer",group_master_ids:"",band:"Junior Management",department:"Design"},
	{employee_code:"SES002",employee_name:"Mili Vijay Furtado",employee_middle_name_name:"Parag",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"5-Sep-82",date_of_joining:"1-Dec-09",designation_joined_at:"Technician",official_email:"AmitKhurana@spp.com",address_for_communication:"A Wing 102,Makholi Wadi, Merces Devale Stop, Kau Bud, Taluka Vasai, Dist. Thane Pin - 401201",parent_ids:"E00034",role_ids:"Technician",group_master_ids:"",band:"Junior Management",department:"Design"},
	{employee_code:"SIS006",employee_name:"Ashok Chakraborty",employee_middle_name_name:"Govardhan Mahajan",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"20-Jul-83",date_of_joining:"24-Jul-09",designation_joined_at:"Senior Engineer",official_email:"NishchalCDate@spp.com",address_for_communication:"34/2/45,50/2, Rashbehari Ghosal Lane, PO Salkia, Dist- Howrah, Pin Code 711 106 (WB)",parent_ids:"SIS042",role_ids:"Senior Engineer",group_master_ids:"",band:"Junior Management",department:"Industrial Sales"},
	{employee_code:"SIS007",employee_name:"Pavan Yadav",employee_middle_name_name:"Joseph P John",status:"Separated",gender:"Male",marital_status:"Married",date_of_birth:"3-Mar-77",date_of_joining:"8-Aug-09",designation_joined_at:"Engineer",official_email:"PrakashWadekar@spp.com",address_for_communication:"Matru Srinilayam,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"SIS042",role_ids:"Engineer",group_master_ids:"",band:"Junior Management",department:"Industrial Sales"},
	{employee_code:"SIS008",employee_name:"Pritam Singh",employee_middle_name_name:"Vithal Wadekar",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"12-Apr-81",date_of_joining:"21-Oct-09",designation_joined_at:"Technician",official_email:"NawabSRawat@spp.com",address_for_communication:"B-705,A Wing 102, Gourav Residency, Mira Bhyander Road, Bear Kaneckiya Bungalow, Thane",parent_ids:"SIS042",role_ids:"Technician",group_master_ids:"",band:"Junior Management",department:"Industrial Sales"},
	{employee_code:"SIS010",employee_name:"Dilip Mestry",employee_middle_name_name:"Dhondu Ligam",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"18-Feb-59",date_of_joining:"14-Dec-09",designation_joined_at:"Executive",official_email:"RAhmed@spp.com",address_for_communication:"A/2,GF-2,Shagun Flats,Kasturi Nagar Society,Behind Shreyas High School,Manjalpur,Vadodra-390004",parent_ids:"SIS042",role_ids:"Executive",group_master_ids:"",band:"Junior Management",department:"Industrial Sales"},
	{employee_code:"SIS033",employee_name:"Ramasare Pagi",employee_middle_name_name:"Balkrishna Phatak",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"2-Apr-85",date_of_joining:"12-Sep-11",designation_joined_at:"Draughtsman",official_email:"PeddintiTere@spp.com",address_for_communication:"R No. - 239,Patilpada (Samtanagar), Near Ambika Kirana Stores, Bare Chawl, Room No. 3, Post Sandoz Baug, Ghodbunder Road, Thane (W) - 400 607",parent_ids:"SIS042",role_ids:"Draughtsman",group_master_ids:"",band:"Junior Management",department:"Industrial Sales"},
	{employee_code:"SIS037",employee_name:"Yogesh Singh Chehil",employee_middle_name_name:"Rameshchandra Sangani",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"30-Apr-80",date_of_joining:"14-Dec-11",designation_joined_at:"Engineer",official_email:"MohanAyeer@spp.com",address_for_communication:"B-304,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"SIS042",role_ids:"Engineer",group_master_ids:"",band:"Junior Management",department:"Industrial Sales"},
	{employee_code:"SIS038",employee_name:"Yogesh Patel",employee_middle_name_name:"Basheer Ahmed",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"21-Apr-80",date_of_joining:"5-Jan-12",designation_joined_at:"Incharge",official_email:"PritamMadhusudanChatterjee@stti.com",address_for_communication:"Matru Srinilayam,A/2, Flat no - 307, Lok Gaurav CHS, LBS Marg,Vikhroli(W), Mumbai - 400083",parent_ids:"SIS042",role_ids:"Incharge",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"SIS049",employee_name:"Megha Pal",employee_middle_name_name:"Narayan Patil",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"11-May-80",date_of_joining:"1-Dec-12",designation_joined_at:"Operator",official_email:"SoumyaSManjrekar@ses.com",address_for_communication:"39,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"SIS042",role_ids:"Operator",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"SIS058",employee_name:"Nikhilesh Pawar",employee_middle_name_name:"Omprakash Ahluwalia",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"7-Nov-83",date_of_joining:"6-Nov-13",designation_joined_at:"Helper",official_email:"BachanChandraSwain@sis.com",address_for_communication:"GF-2,7/D, Shri Haripark, Near Ankur Society, Naranpura, Ahmedabad - 13",parent_ids:"SIS042",role_ids:"Helper",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"SIS061",employee_name:"Rekha Kharat",employee_middle_name_name:"Augustin Pereira",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"24-May-86",date_of_joining:"20-May-14",designation_joined_at:"Draughtsman",official_email:"DeepakDeshpande@sis.com",address_for_communication:"Gurudev Niwas CHS,R No. - 239,Anand Nagar,Kopari Bridge near Shivsena Shakha, Thane(E) - 400603",parent_ids:"SIS009",role_ids:"Draughtsman",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"A00001",employee_name:"Kalpesh Coelho",employee_middle_name_name:"K. Arjunan",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"29-Oct-92",date_of_joining:"26-Aug-14",designation_joined_at:"Apprentice",official_email:"ShraddhaCoelho@spp.com",address_for_communication:"Rosy Villa,Dolbhat Wadi,Saloli,Vasai(West) Dist Thane Pin-401201",parent_ids:"E00636",role_ids:"Apprentice",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"A00002",employee_name:"R D'Monte",employee_middle_name_name:"Gajanan Patil",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"6-Dec-96",date_of_joining:"26-Aug-14",designation_joined_at:"Apprentice",official_email:"SoumyaSManjrekar@spp.com",address_for_communication:"116,Rosy Villa,Gass Mot Ali ,Nallasopara (West ) , 401203",parent_ids:"E00636",role_ids:"Apprentice",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"C00056",employee_name:"Amol Yadav",employee_middle_name_name:"Kuttappan",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"12-Aug-90",date_of_joining:"1-Nov-11",designation_joined_at:"Helper",official_email:"KamnaVijaySalunke@spp.com",address_for_communication:"A/2,GF-2,Shagun Flats,Kasturi Nagar Society,Behind Shreyas High School,Manjalpur,Vadodra-390004",parent_ids:"E00636",role_ids:"Helper",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"C00064",employee_name:"Villinton Rao Chodhari",employee_middle_name_name:"Ranbaji Kamble",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"10-Jul-87",date_of_joining:"29-Dec-09",designation_joined_at:"Technician",official_email:"SantoshJoseph@spp.com",address_for_communication:"B-705,B-705, Vasant Prakash CHS Off JP Road, Seven Bungalows, Andheri (W) - 400 061",parent_ids:"E00269",role_ids:"Technician",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"C00229",employee_name:"Shikha Raghuvanshi",employee_middle_name_name:"Ganesh Chakraborty",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"2-Oct-91",date_of_joining:"23-Jul-12",designation_joined_at:"Junior Executive",official_email:"KaustubhRajpurohit@spp.com",address_for_communication:"AT Aamshet Kond,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00034",role_ids:"Junior Executive",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"C00251",employee_name:"Sonali Reddy",employee_middle_name_name:"Tukaram Lad",status:"Active",gender:"Female",marital_status:"Unmarried",date_of_birth:"29-Jan-85",date_of_joining:"3-Jan-13",designation_joined_at:"Functional Assistant",official_email:"BasudebSudhagar@spp.com",address_for_communication:"Kalbhat Wadi,AT Aamshet Kond, Post Dahiwad, Taluka Mahad, Dist Raigad",parent_ids:"E00269",role_ids:"Functional Assistant",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"C00317",employee_name:"Manjunath Chavan",employee_middle_name_name:"Padinhare Veedu",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"7-Mar-88",date_of_joining:"21-Nov-13",designation_joined_at:"Executive",official_email:"RajanNair@spp.com",address_for_communication:"Vill URK Puram,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"E00034",role_ids:"Executive",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"E00006",employee_name:"Julie Henry Picardo ",employee_middle_name_name:"C. Desinghu",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"17-Nov-72",date_of_joining:"5-Mar-99",designation_joined_at:"Senior Executive",official_email:"AchyutKumarRai@spp.com",address_for_communication:"Sai Kamal Bldg,Kadeshwari Mandir Marg, St. Francis of Assisi Church Compound, Bandra (W), Mumbai - 400 050",parent_ids:"E00013",role_ids:"Senior Executive",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"E00019",employee_name:"F Temkar ",employee_middle_name_name:"Krishna Moorthy",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"16-May-83",date_of_joining:"9-May-03",designation_joined_at:"Draughtsman",official_email:"SudhirChatterjee@spp.com",address_for_communication:"Mahatma Jotiba Phule Nagar,227, Balmitra Sewa Mandal, Sundar Kamala Nagar, Bhaudaji Road, Sion (W), Mumbai, 400 022",parent_ids:"E00034",role_ids:"Draughtsman",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"E00020",employee_name:"Moolsingh Ligam ",employee_middle_name_name:"B. Kuppuswamy",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"20-Jan-73",date_of_joining:"1-Apr-04",designation_joined_at:"Office Assistant",official_email:"RajkumarSharma@spp.com",address_for_communication:"H. No. 2-7-2,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00636",role_ids:"Office Assistant",group_master_ids:"",band:"Junior Management",department:"Industrial Services"},
	{employee_code:"E00056",employee_name:"A Patil ",employee_middle_name_name:"Gajanan",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"31-Mar-81",date_of_joining:"4-Dec-03",designation_joined_at:"Engineer",official_email:"NavneetBhujbal@sag.com",address_for_communication:"Sangam C.H.S Ltd flat no A/304,Gurudev Niwas CHS, A-201, 2nd Floor, Pipeline Kalyan Road, Bhiwandi - 421302",parent_ids:"E00034",role_ids:"Engineer",group_master_ids:"",band:"Junior Management",department:"Industrial Services (Roserve)"},
	{employee_code:"E00060",employee_name:"Kuttappan Patil ",employee_middle_name_name:"Khashaba Pawar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"1-Jul-77",date_of_joining:"1-Apr-04",designation_joined_at:"Senior Technician",official_email:"SunilMore@sag.com",address_for_communication:"Village and PO Bason Patty Mawalsyoun,AT Post Dugad, Tal Bhiwandi, Dist Thane 421302",parent_ids:"E00034",role_ids:"Senior Technician",group_master_ids:"",band:"Junior Management",department:"Industrial Services (Roserve)"},
	{employee_code:"E00061",employee_name:"Balaji Pereira ",employee_middle_name_name:"Sapeshwar Naik",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"5-Jun-76",date_of_joining:"2-Apr-04",designation_joined_at:"Senior Engineer",official_email:"DevalTundurwar@sag.com",address_for_communication:"50/2,Kalbhat Wadi, Tamtalow Papdy vasai Dist Thane",parent_ids:"E00034",role_ids:"Senior Engineer",group_master_ids:"",band:"Junior Management",department:"Industrial Services (Roserve)"},
	{employee_code:"E00071",employee_name:"Ganesh Patil ",employee_middle_name_name:"Dayaram",status:"Active",gender:"Male",marital_status:"Unmarried",date_of_birth:"1-Apr-76",date_of_joining:"2-Dec-96",designation_joined_at:"Supervisor",official_email:"NandkumarSakore@sag.com",address_for_communication:"39/16,C/103, Lavdeep Apt, Near Rashmi Park, Waliv, Vasai (E)",parent_ids:"E00034",role_ids:"Supervisor",group_master_ids:"",band:"Junior Management",department:"Logistics"},
	{employee_code:"E00076",employee_name:"Sureshan Sureshkumar ",employee_middle_name_name:"P. Lakshun",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"1-Jun-62",date_of_joining:"1-Dec-00",designation_joined_at:"Engineer",official_email:"HirenHapani@sag.com",address_for_communication:"Plot no. 06,Sangam C.H.S Ltd flat no A/304,Suyog Nagar Bhabola-Chulna road,Vasai (W)",parent_ids:"E00034",role_ids:"Engineer",group_master_ids:"",band:"Junior Management",department:"Logistics"},
	{employee_code:"E00077",employee_name:"Arun Kamble ",employee_middle_name_name:"N. Veera Raghavaiah",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"5-Mar-72",date_of_joining:"20-Jan-03",designation_joined_at:"Service Engineer",official_email:"VrushaliKumarSaroj@sag.com",address_for_communication:"No-9,Room n0-9,Sai Darshan Chwal,Shirdi nagar,Virar road,Nallasopara",parent_ids:"E00725",role_ids:"Service Engineer",group_master_ids:"",band:"Junior Management",department:"Maintenance"},
	{employee_code:"E00078",employee_name:"D Chakraborty",employee_middle_name_name:"S. Venkanna",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"3-Feb-62",date_of_joining:"10-Mar-03",designation_joined_at:"Technician",official_email:"DeepakSinghPurva@sag.com",address_for_communication:"Umbraya Ganpati Chowk,Gosh Chawl, Room No. 1, Naradas Nagar, Pundavkunj, Bhandup (W), Mumbai - 400 078",parent_ids:"E00034",role_ids:"Technician",group_master_ids:"",band:"Junior Management",department:"Marine Sales"},
	{employee_code:"E00079",employee_name:"Shilpa Lad",employee_middle_name_name:"Ratneswar Choudhury",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"29-Oct-74",date_of_joining:"19-Aug-04",designation_joined_at:"Supervisor",official_email:"KaustavKekare@sag.com",address_for_communication:"Sr.no.48/4,39/16, New Bldg, SB Road, Dadar (E), Mumbai - 400 014",parent_ids:"E00034",role_ids:"Supervisor",group_master_ids:"",band:"Junior Management",department:"Marine Sales"},
	{employee_code:"E00085",employee_name:"Pradeep Prasad P ",employee_middle_name_name:"Lambert Dmello",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"18-May-84",date_of_joining:"3-Aug-04",designation_joined_at:"Service Engineer",official_email:"AshokChakraborty@sis.com",address_for_communication:"7/4,No-9,Malang road,Kadherpet,Vaniyambadi,Vellore,Tamil Nadu",parent_ids:"E00082",role_ids:"Service Engineer",group_master_ids:"",band:"Junior Management",department:"Marine Services"},
	{employee_code:"E00086",employee_name:"Gautamsingh Sankar ",employee_middle_name_name:"B. Shanker Rao",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"5-Apr-77",date_of_joining:"3-Aug-04",designation_joined_at:"Senior Service Engineer",official_email:"PavanYadav@sis.com",address_for_communication:"71/J Rly Qtrs ,No-431,old solur,Alankuppam (post),Vaniyambadi,Vellore,Tamil Nadu-635814",parent_ids:"E00082",role_ids:"Senior Service Engineer",group_master_ids:"",band:"Junior Management",department:"Marine Services"},
	{employee_code:"E00089",employee_name:"Maya S Sawant ",employee_middle_name_name:"Vipul",status:"Active",gender:"Female",marital_status:"Married",date_of_birth:"4-Dec-79",date_of_joining:"4-Oct-04",designation_joined_at:"Senior Executive",official_email:"PritamSingh1@sis.com",address_for_communication:"H. No. 2-7-2,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"SIS042",role_ids:"Senior Executive",group_master_ids:"",band:"Junior Management",department:"Marine Services"},
	{employee_code:"E00091",employee_name:"Azhagu Rao ",employee_middle_name_name:"Madhukar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"15-Jan-65",date_of_joining:"4-Oct-04",designation_joined_at:"Senior Service Engineer",official_email:"DilipMestry@sis.com",address_for_communication:"Village and PO Bason Patty Mawalsyoun,71/J Rly Qtrs , Marriplam(Post) Visakhapatnam-08",parent_ids:"E00269",role_ids:"Senior Service Engineer",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00094",employee_name:"M. Sasindran",employee_middle_name_name:"Paul Puthenangadi",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"30-May-83",date_of_joining:"1-Dec-04",designation_joined_at:"Area Service Engineer",official_email:"RamasarePagi@sis.com",address_for_communication:"39,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00082",role_ids:"Area Service Engineer",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00095",employee_name:"Roopchand Gusain",employee_middle_name_name:"Maruti",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"14-Jun-78",date_of_joining:"20-Dec-04",designation_joined_at:"Senior Technician",official_email:"YogeshSinghChehil@sis.com",address_for_communication:"125,Village and PO Bason Patty Mawalsyoun, Dist Pauri Gorwal Uttranchal",parent_ids:"E00034",role_ids:"Senior Technician",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00108",employee_name:"Harishchandra Patil",employee_middle_name_name:"Sharanapapa",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"2-Dec-74",date_of_joining:"2-May-05",designation_joined_at:"Senior Technician",official_email:"YogeshPatel@sis.com",address_for_communication:"AT Post Pacchapur,125, Pitruchhaya Pandurang Bhoir Road, Gaothan, Dahisar (W), Mumbai - 400 068",parent_ids:"E00034",role_ids:"Senior Technician",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00120",employee_name:"GB Ligam ",employee_middle_name_name:"Dilip Kumar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"29-Mar-75",date_of_joining:"1-Jul-05",designation_joined_at:"Executive",official_email:"MeghaPal@sis.com",address_for_communication:"7/D,B-304,Ghanshyam Palace,Virar (East)-401305",parent_ids:"E00636",role_ids:"Executive",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00138",employee_name:"Rama Moorthy M.",employee_middle_name_name:"Mahadev",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"7-Jun-76",date_of_joining:"1-Jul-05",designation_joined_at:"Senior Service Engineer",official_email:"NikhileshPawar@sis.com",address_for_communication:"125,Village and PO Bason Patty Mawalsyoun, Dist Pauri Gorwal Uttranchal",parent_ids:"E00082",role_ids:"Senior Service Engineer",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00141",employee_name:"S. Kuppuswamy",employee_middle_name_name:"Omprakash Khurana",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"9-Apr-83",date_of_joining:"7-Jul-05",designation_joined_at:"Senior Service Engineer",official_email:"RekhaKharat@sis.com",address_for_communication:"AT Post Pacchapur,125, Pitruchhaya Pandurang Bhoir Road, Gaothan, Dahisar (W), Mumbai - 400 068",parent_ids:"E00082",role_ids:"Senior Service Engineer",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00143",employee_name:"Parikshit Sabarisan ",employee_middle_name_name:"Mahadev",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"26-Sep-85",date_of_joining:"25-Jul-05",designation_joined_at:"Service Engineer",official_email:"KalpeshCoelho@spp.com",address_for_communication:"C/O G.S. Chilverwar 38,7/4, S.R.K. Nagar, Teacher's colony, Karamadai, Mettupalayam, 641104",parent_ids:"E00082",role_ids:"Service Engineer",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00221",employee_name:"Shyam S Surve ",employee_middle_name_name:"Harimohan",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"29-Mar-85",date_of_joining:"5-Jun-06",designation_joined_at:"Senior Executive",official_email:"SonaliReddy@spp.com",address_for_communication:"H. No. 2-7-2,Sai Kamal Bldg, Room No. 11, Fool Pada Road, Virar (E) Thane",parent_ids:"E00636",role_ids:"Senior Executive",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00269",employee_name:"Cdr. Raut",employee_middle_name_name:"Karan Singh",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"25-Feb-83",date_of_joining:"14-May-07",designation_joined_at:"Senior Technician",official_email:"JulieHenryPicardo@spp.com",address_for_communication:"Room n0-9,AT Post Pacchapur, Tel Bhiwandi, Dist Thane",parent_ids:"E00058",role_ids:"Senior Technician",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00271",employee_name:"Hitul Acharekar",employee_middle_name_name:"Fredrick Francis",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"10-Mar-80",date_of_joining:"24-May-07",designation_joined_at:"Senior Executive",official_email:"FTemkar@spp.com",address_for_communication:"A/101,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00636",role_ids:"Senior Executive",group_master_ids:"",band:"Junior Management",department:"Operations"},
	{employee_code:"E00372",employee_name:"Nilesh Rao",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"22-Jun-74",date_of_joining:"10-Mar-08",designation_joined_at:"Area Service Engineer",official_email:"SureshanSureshkumar@spp.com",address_for_communication:"AT Aamshet Kond,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"E00269",role_ids:"Area Service Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00396",employee_name:"BC Choudhury",employee_middle_name_name:"Ranganath Panigrahy",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"5-Oct-60",date_of_joining:"1-Jun-08",designation_joined_at:"Area Sales Executive",official_email:"DChakraborty@spp.com",address_for_communication:"GF-2,7/D, Shri Haripark, Near Ankur Society, Naranpura, Ahmedabad - 13",parent_ids:"E00013",role_ids:"Area Sales Executive",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00399",employee_name:"Sachin Sharma",employee_middle_name_name:"Laxman",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"20-Nov-74",date_of_joining:"9-Jun-08",designation_joined_at:"Area Service Engineer",official_email:"ShilpaLad@spp.com",address_for_communication:"Kalbhat Wadi,AT Aamshet Kond, Post Dahiwad, Taluka Mahad, Dist Raigad",parent_ids:"E00269",role_ids:"Area Service Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00491",employee_name:"Suzy D'mello",employee_middle_name_name:"Sukumara",status:"Active",gender:"Female",marital_status:"UnMarried",date_of_birth:"11-Jun-83",date_of_joining:"11-Aug-09",designation_joined_at:"Functional Assistant",official_email:"PradeepPrasadP@spp.com",address_for_communication:"C-104,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00350",role_ids:"Functional Assistant",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00541",employee_name:"Nandapapa Keshav Rao",employee_middle_name_name:"Kesarichand",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"10-Aug-76",date_of_joining:"19-May-10",designation_joined_at:"Area Service Engineer",official_email:"GautamsinghSankar@spp.com",address_for_communication:"Flat No. 3,Kalbhat Wadi, Tamtalow Papdy vasai Dist Thane",parent_ids:"E00269",role_ids:"Area Service Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00664",employee_name:"Suresh Kumbhar",employee_middle_name_name:"Uttamrao Mohod",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"1-Jun-73",date_of_joining:"1-Jul-11",designation_joined_at:"Senior Attendant",official_email:"HarishchandraPatil@spp.com",address_for_communication:"Kalbhat Wadi,AT Aamshet Kond, Post Dahiwad, Taluka Mahad, Dist Raigad",parent_ids:"E00350",role_ids:"Senior Attendant",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00720",employee_name:"Ravindra Shipurkar",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"Married",date_of_birth:"15-Nov-92",date_of_joining:"5-Nov-11",designation_joined_at:"Draughtsman",official_email:"RamaMoorthyM.@spp.com",address_for_communication:"Patilpada (Samtanagar),Mahatma Jotiba Phule Nagar, Near Priyadarshni, Sion Trambe Road, Chunabhatti",parent_ids:"E00058",role_ids:"Draughtsman",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00738",employee_name:"Ruchika Kalloli",employee_middle_name_name:"Shankar",status:"Active",gender:"Male",marital_status:"UnMarried",date_of_birth:"1-Jan-87",date_of_joining:"21-Feb-12",designation_joined_at:"Functional Assistant",official_email:"ParikshitSabarisan@spp.com",address_for_communication:"AT Aamshet Kond,C-104, Kamal Park, Near Mangatram Petrol Pump, LBS Marg, Bhandup (W), Mumbai - 400 078",parent_ids:"E00269",role_ids:"Functional Assistant",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00798",employee_name:"Shakti Mukund Mohite",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"3-Feb-85",date_of_joining:"1-Apr-12",designation_joined_at:"Operator",official_email:"HitulAcharekar@spp.com",address_for_communication:"Matru Srinilayam,Kalbhat Wadi, Tamtalow Papdy vasai Dist Thane",parent_ids:"E00350",role_ids:"Operator",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00809",employee_name:"Harpreet Dhillon",employee_middle_name_name:"",status:"",gender:"Female",marital_status:"Unmarried",date_of_birth:"27-Nov-88",date_of_joining:"11-Feb-13",designation_joined_at:"Executive Assistant",official_email:"NileshRao@spp.com",address_for_communication:"H. No. 2-7-2,Vill URK Puram, Post Pathatekkali, VIA Pundi (RS) Dist Srikakulam, State AP, Pin 532218",parent_ids:"SAG006",role_ids:"Executive Assistant",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00850",employee_name:"Pavan Gupta",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"30-Jun-92",date_of_joining:"26-Aug-13",designation_joined_at:"Area Sales Engineer",official_email:"BCChoudhury@spp.com",address_for_communication:"39,36 Gauri Shankar Colony,Near Saras Hotel,Bharatpur (Rajasthan), Pincode - 321001",parent_ids:"E00641",role_ids:"Area Sales Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00880",employee_name:"Pritam Makwana",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"UnMarried",date_of_birth:"24-Jan-91",date_of_joining:"4-Feb-14",designation_joined_at:"Junior Engineer",official_email:"SachinSharma@spp.com",address_for_communication:"Vill URK Puram,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"E00725",role_ids:"Junior Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00893",employee_name:"Dhananjay Singh",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"22-Jan-88",date_of_joining:"1-Apr-14",designation_joined_at:"Area Sales Engineer",official_email:"SuzyD'mello@spp.com",address_for_communication:"Matru Srinilayam,39, Dattamauli, Near Maruti mandir, A/p - Helwak, Tal - Pathan. District - Satara",parent_ids:"E00766",role_ids:"Area Sales Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00912",employee_name:"Nitin Francis",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"8-Nov-86",date_of_joining:"19-Jun-14",designation_joined_at:"Senior Analyst",official_email:"NandapapaKeshavRao@spp.com",address_for_communication:"Matru Srinilayam,A/2, Flat no - 307, Lok Gaurav CHS, LBS Marg,Vikhroli(W), Mumbai - 400083",parent_ids:"E00915",role_ids:"Senior Analyst",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00917",employee_name:"Swapnali Bist",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"UnMarried",date_of_birth:"11-Oct-91",date_of_joining:"1-Aug-14",designation_joined_at:"Junior Engineer",official_email:"RavindraShipurkar@spp.com",address_for_communication:"H. No. 2-7-2,H. No. 2-7-2, Street Hatti, Khadda , Yadgir, Gulburga - 585201 Karnataka",parent_ids:"E00725",role_ids:"Junior Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00926",employee_name:"Walter Patil",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"27-May-88",date_of_joining:"1-Sep-14",designation_joined_at:"Executive",official_email:"RuchikaKalloli@spp.com",address_for_communication:"Matru Srinilayam,A/2, Flat no - 307, Lok Gaurav CHS, LBS Marg,Vikhroli(W), Mumbai - 400083",parent_ids:"E00034",role_ids:"Executive",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00946",employee_name:"Trupti Bate",employee_middle_name_name:"",status:"",gender:"Female",marital_status:"Married",date_of_birth:"4-May-87",date_of_joining:"10-Nov-14",designation_joined_at:"Coordinator",official_email:"PavanGupta@spp.com",address_for_communication:"606,Daulat Nagar,Nutan Nagar Zopadpatti, Gali No 17, S V Road, Borivali East, Near Police Chowky, Mumbai - 400066",parent_ids:"E00641",role_ids:"Coordinator",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00955",employee_name:"Tanuja Panigrahy",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"20-Jul-82",date_of_joining:"15-Dec-14",designation_joined_at:"Area Sales Engineer",official_email:"DhananjaySingh@spp.com",address_for_communication:"B-304,Matru Srinilayam, Velamavari (Street), Bobbili, Vizianagaram (Dist) AP 535573",parent_ids:"E00641",role_ids:"Area Sales Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00957",employee_name:"Santosh Kundekar",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"15-Jan-83",date_of_joining:"11-Dec-14",designation_joined_at:"Purcahse Assistant",official_email:"NitinFrancis@spp.com",address_for_communication:"7/D,B-304,Ghanshyam Palace,Virar (East)-401305",parent_ids:"E00636",role_ids:"Purcahse Assistant",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00959",employee_name:"Prakash Maran",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Unmarried",date_of_birth:"7-May-87",date_of_joining:"22-Dec-14",designation_joined_at:"Area Sales Engineer",official_email:"SwapnaliBist@spp.com",address_for_communication:"7/D,B-304,Ghanshyam Palace,Virar (East)-401305",parent_ids:"E00766",role_ids:"Area Sales Engineer",group_master_ids:"",band:"Junior Management",department:"Production"},
	{employee_code:"E00965",employee_name:"F Shah",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"1-Jan-72",date_of_joining:"2-Jan-15",designation_joined_at:"Regional Manager",official_email:"WalterPatil@spp.com",address_for_communication:"A/2,GF-2,Shagun Flats,Kasturi Nagar Society,Behind Shreyas High School,Manjalpur,Vadodra-390004",parent_ids:"E00641",role_ids:"Regional Manager",group_master_ids:"",band:"Junior Management",department:"Purchase"},
	{employee_code:"E00966",employee_name:"Moolsingh Sankar ",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"4-May-83",date_of_joining:"2-Jan-15",designation_joined_at:"Senior Engineer",official_email:"TruptiBate@spp.com",address_for_communication:"Kadeshwari Mandir Marg,34/2/45,Bypass road,Veena travels backside,Ambur 635 802",parent_ids:"E00269",role_ids:"Senior Engineer",group_master_ids:"",band:"Junior Management",department:"Purchase"},
	{employee_code:"STT003",employee_name:"Pavan Dewaji Kasar",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"15-Aug-59",date_of_joining:"1-Apr-10",designation_joined_at:"Office Assistant",official_email:"SantoshKundekar@spp.com",address_for_communication:"Kalbhat Wadi,AT Aamshet Kond, Post Dahiwad, Taluka Mahad, Dist Raigad",parent_ids:"STT005",role_ids:"Office Assistant",group_master_ids:"",band:"Junior Management",department:"Quality Assurance"},
	{employee_code:"STT006",employee_name:"Nitin Uttamrao Mohod",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"UnMarried",date_of_birth:"1-Apr-56",date_of_joining:"1-Apr-10",designation_joined_at:"Supervisor",official_email:"FShah@spp.com",address_for_communication:"Gosh Chawl,c/o P.B. Pasare, Plot No. 123, Near Maruti Mandir, Gandhi Nagar, Nagpur - 440010",parent_ids:"STT005",role_ids:"Supervisor",group_master_ids:"",band:"Junior Management",department:"Services"},
	{employee_code:"STT018",employee_name:"Karan Sigh",employee_middle_name_name:"",status:"",gender:"Male",marital_status:"Married",date_of_birth:"10-Jul-81",date_of_joining:"18-Apr-11",designation_joined_at:"Junior Engineer",official_email:"KaranSigh@stti.com",address_for_communication:"H. No. 2-7-2,Vill URK Puram, Post Pathatekkali, VIA Pundi (RS) Dist Srikakulam, State AP, Pin 532218",parent_ids:"STT005",role_ids:"Junior Engineer",group_master_ids:"",band:"Junior Management",department:"Services"}
]

# @forms = [
# 	{
# 		model: "Document",
# 		title: "Fill Form - Document Creation",
# 		labels: {
# 			code: "Document Code",
# 			name: "Document Name",
# 			file: "Document",
# 			version_controlled: "Version Controlled?"
# 		},
# 		html: [
#       {type: "<div />", attributes: {class: "row"}, children:[
#         {type: "<div />", attributes: {class: "col-md-12"}, children: [

#           {type: "<div />", attributes: {class: "row"}, children: [
#             {type: "<div />", attributes: {class: "col-md-6"}, children: [
#               {type: "<div />", attributes: {class:"row"}, children: [
#                 {type: "<div />", attributes: {class:"form-group"}, children: [
#                   {type: "<label />", attributes: {class: "col-md-3 control-label no-padding-right", name: "labels[code]"}},
#                   {type: "<input />", attributes: {class: "col-md-7 placeholder-code", type: "text", name: "form[code]"}}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class: "col-md-6"}, children: [
#               {type: "<div />", attributes: {class:"row"}, children: [
#                 {type: "<div />", attributes: {class:"form-group"}, children: [
#                   {type: "<label />", attributes: {class: "col-md-3 control-label no-padding-right", name: "labels[name]"}},
#                   {type: "<input />", attributes: {class: "col-md-7 placeholder-name", type: "text", name: "form[name]"}}
#                 ]}
#               ]}
#             ]}
#           ]},

#           {type: "<div />", attributes: {class: "space-12"}},

#           {type: "<div />", attributes: {class: "row"}, children: [
#             {type: "<div />", attributes: {class: "col-md-6"}, children: [
#               {type: "<div />", attributes: {class:"row"}, children: [
#                 {type: "<div />", attributes: {class:"form-group"}, children: [
#                   {type: "<label />", attributes: {class: "col-md-3 control-label no-padding-right", name: "labels[file]"}},
#                   {type: "<div />", attributes: {class: "col-md-7 no-padding-right no-padding-left"}, children: [
#                     {type: "<input />", attributes: {class: "ace-file-input", type: "file", name: "files[file]"}}
#                   ]}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class: "col-md-6"}, children: [
#               {type: "<div />", attributes: {class:"row"}, children: [
#                 {type: "<div />", attributes: {class:"form-group"}, children: [
#                   {type: "<label />", attributes: {class: "col-md-3 control-label no-padding-right", name: "labels[version_controlled]"}},
#                   {type: "<div />", attributes: {class: "col-md-7 no-padding-right no-padding-left"}, children: [
#                     {type: "<label />", attributes: {}, children: [
#                       {type: "<input />", attributes: {class: "ace ace-switch ace-switch-6", type: "checkbox", name: "form[version_controlled]"}},
#                       {type: "<span />", attributes: {class: "lbl"}}
#                     ]}
#                   ]}
#                 ]}
#               ]}
#             ]}
#           ]}

#         ]}
#       ]}
#     ]
# 	},
# 	{
# 		model: "ManpowerPlanning",
# 		title: "Fill Form - ManpowerPlanning Creation",
# 		labels: {
# 			code: "Code",
# 			name: "Name",
# 			description: "Description",
# 			vacancy: "No. of Vacancy",
# 			location: "Location",
# 			role: "Role",
# 			band: "Band",
# 			department: "Department",
# 			nature: "Nature of Position",
# 			start_date: "Start Date",
# 			end_date: "End Date"
# 		},
# 		html: [
# 		 {type: "<div />", attributes: {class:"row"}, children:[
#         {type: "<div />", attributes: {class:"col-md-12"}, children:[

#           {type: "<div />", attributes: {class:"row"}, children:[
#             {type: "<div />", attributes: {class:"col-md-6"}, children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[code]"}}
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<input />", attributes: {class: "placeholder-code", type: "text", name: "form[code]", style:"width:100%"}}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class:"col-md-6"},children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[name]"}}
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<input />", attributes: {class: "placeholder-name", type: "text", name: "form[name]", style:"width:100%"}}
#                 ]}
#               ]}
#             ]}
#           ]},

#           {type: "<div />", attributes: {class: "space-12"}},

#           {type: "<div />", attributes: {class:"row"}, children:[
#             {type: "<div />", attributes: {class:"col-md-6"}, children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[description]"}}
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<input />", attributes: {class: "placeholder-description", type: "text", name: "form[description]", style:"width:100%"}}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class:"col-md-6"},children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[vacancy]"}}
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<input />", attributes: {class: "placeholder-vacancy", type: "text", name: "form[vacancy]", style:"width:100%"}}
#                 ]}
#               ]}
#             ]}
#           ]},

#           {type: "<div />", attributes: {class: "space-12"}},
          
#           {type: "<div />", attributes: {class:"row"}, children:[
#             {type: "<div />", attributes: {class:"col-md-6"}, children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[start_date]"}}
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<div />", attributes: {class:"input-group"}, children: [
#                     {type: "<input />", attributes: {class: "date-picker placeholder-start_date", type: "text", name: "form[start_date]", style:"width:100%"}},
#                     {type: "<span />", attributes: {class:"input-group-addon"}, children:[
#                       {type: "<i />", attributes: {class:"fa fa-calendar bigger-110"}}
#                     ]}

#                   ]}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class:"col-md-6"},children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[end_date]"}}
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<div />", attributes: {class:"input-group"}, children: [
#                     {type: "<input />", attributes: {class: "date-picker placeholder-end_date", type: "text", name: "form[end_date]", style:"width:100%"}},
#                     {type: "<span />", attributes: {class:"input-group-addon"}, children:[
#                       {type: "<i />", attributes: {class:"fa fa-calendar bigger-110"}}
#                     ]}

#                   ]}
#                 ]}
#               ]}
#             ]}
#           ]},

#           {type: "<div />", attributes: {class: "space-12"}},

#           {type: "<div />", attributes: {class:"row"}, children:[
#             {type: "<div />", attributes: {class:"col-md-6"}, children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[role]"}},
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<select />", attributes: {class: "chosen-select", name: "form[role]", model:"Role", modelValue:"_id"}}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class:"col-md-6"},children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[department]"}},
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<select />", attributes: {class: "chosen-select", name: "form[department]", model:"Department", modelValue:"_id"}}
#                 ]}
#               ]}
#             ]}
#           ]},

#           {type: "<div />", attributes: {class: "space-12"}},

#           {type: "<div />", attributes: {class:"row"}, children:[
#             {type: "<div />", attributes: {class:"col-md-6"}, children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[band]"}},
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<select />", attributes: {class: "chosen-select", name: "form[band]", model:"Band", modelValue:"_id"}}
#                 ]}
#               ]}
#             ]},
#             {type: "<div />", attributes: {class:"col-md-6"},children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[location]"}},
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<select />", attributes: {class: "chosen-select", name: "form[location]", model:"Location", modelValue:"_id"}}
#                 ]}
#               ]}
#             ]}
#           ]},


#           {type: "<div />", attributes: {class: "space-12"}},

#           {type: "<div />", attributes: {class: "row"}, children:[
#             {type: "<div />", attributes: {class:"col-md-6"},children:[
#               {type: "<div />", attributes: {class:"row"}, children:[
#                 {type: "<div />", attributes: {class:"col-md-2"}, children:[
#                   {type: "<label />", attributes: {class: "control-label no-padding-right", name: "labels[nature]"}},
#                 ]},
#                 {type: "<div />", attributes: {class:"col-md-9"}, children:[
#                   {type: "<select />", attributes: {class: "chosen-select", name: "form[nature]"}, children:[
#                     {type: "<option />", attributes: {value:"Hiring", html: "Hiring"}},
#                     {type: "<option />", attributes: {value:"Internal Transfer", html: "Internal Transfer"}},
#                     {type: "<option />", attributes: {value:"Promotion", html: "Promotion"}},
#                     {type: "<option />", attributes: {value:"Job Portal", html: "Job Portal"}},
#                     {type: "<option />", attributes: {value:"Recruiters", html: "Recruiters"}},
#                     {type: "<option />", attributes: {value:"Intranet", html: "Intranet"}},
#                   ]}
#                 ]}
#               ]}
#             ]}
#           ]},

#         ]}
#      ]}
# 		]
# 	}
# ]


# ---------------------------------------------------------------------------------------------------------------------------------


# Seeding Roles
puts ""
puts "Seeding Roles..."

i = 0
rolesLen = @roles.length
while i < rolesLen do
	@role = Role.create!(@roles[i])
	@role.save!
	i = i+1
end
puts "Roles Seeded!"
# ---------------------------------------------------------------------------------------------------------------------------------


# Seeding BandMaster
puts ""
puts "Seeding Bands..."

i = 0
bandLen = @bands.length
while i < bandLen do
	@band = Band.create!(@bands[i])
	@band.save!
	i = i+1
end
puts "Bands Seeded!"
# ---------------------------------------------------------------------------------------------------------------------------------


# Seeding GroupMaster
puts ""
puts "Seeding Departments..."

i = 0
departmentLen = @departments.length
while i < departmentLen do
	@department = Department.create!(@departments[i])
	@department.save!
	i=i+1
end
puts "Departments Seeded!"
# ---------------------------------------------------------------------------------------------------------------------------------


# Seeding Users
puts ""
puts "Seeding Users..."

i = 0
userLen = @users.length
while i < userLen do
	

	# @users[i][:official_email] = @users[i][:official_email].downcase
	# @users[i][:gender] = if @users[i][:gender] == "Male" then "M" elsif @users[i][:gender] == "Female" then "F" else "O" end
	# @users[i][:date_of_birth] = if @users[i][:date_of_birth].blank? then "" else @users[i][:date_of_birth].to_date end
	# @users[i][:date_of_joining] = if @users[i][:date_of_joining].blank? then "" else @users[i][:date_of_joining].to_date end
	@users[i][:parent_ids] = if @users[i][:parent_ids] == "" then [] else [if !Employee.where(:code => @users[i][:parent_ids].to_s).first.nil? then Employee.where(:code => @users[i][:parent_ids].to_s).first.id.to_s end] end
	# @users[i][:parent_ids] = [(Employee.where(:code => @users[i][:parent_ids].to_s).last._id.to_s rescue '')]
	# @users[i][:role_ids] = [(Role.where(:name => @users[i][:role_ids].to_s).first.id rescue '')]
	# @users[i][:band_master_ids] = @users[i][:band].to_s.split(',').map{|i| Band.where(:name => i).first.id}
	bandGrp = @users[i][:band].to_s.split(',').map{|i| Band.where(:name => i).first}
	deptGrp = @users[i][:department].to_s.split(',').map{|i| Department.where(:name => i).first}
	roles = @users[i][:role_ids].to_s.split(',').map{|i| Role.where(:name => i).first}
	# @users[i][:group_master_ids] = bandGrp.concat(deptGrp)
	
	# @users[i].delete :band
	# @users[i].delete :department

	thisEmp = {}
	thisEmp[:code] = @users[i][:employee_code]
	thisEmp[:name] = @users[i][:employee_name]
	thisEmp[:email] = @users[i][:official_email].downcase

	thisEmp[:managers] = @users[i][:parent_ids]

	thisEmp[:role] = roles
	thisEmp[:department] = deptGrp
	thisEmp[:band] = bandGrp

	@em = Employee.create!(thisEmp)
	@em.save!
	i=i+1
end
puts "Users Seeded!"
# ---------------------------------------------------------------------------------------------------------------------------------


# Seeding Forms in Generic
# puts ""
# puts "Seeding Forms..."

# i = 0
# formLen = @forms.length
# while i < formLen do
# 	@form = Generic.create!(@forms[i])
# 	@form.save!
# 	i=i+1
# end
# puts "Forms Seeded!"
# ---------------------------------------------------------------------------------------------------------------------------------


puts ""
puts "Finished Seeding!"
puts ""
###################################################################################################################################