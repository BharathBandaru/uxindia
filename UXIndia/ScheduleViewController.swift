//
//  SecondViewController.swift
//  conference

//  Created by Bharath Bandaru on 22/08/16.
//  Copyright © 2016 ux. All rights reserved.
//

import UIKit
import SystemConfiguration
import Social

class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var portrait: UIInterfaceOrientationMask = []
    @IBOutlet weak var myHeader: CustomHeaderCell!

    @IBOutlet weak var view20: UIView!
    @IBOutlet weak var floatTwitter: UIButton!
    @IBOutlet weak var myHeadView: UIView!
    @IBOutlet weak var uxtableview: UITableView!
    
    var submatters = ["","Bapu Kaladhar is a Strategic Design Thinker and Information Architect. He is most interested in incubating new business models that deliver social impact,","Mr. Jayesh Ranjan is the Secretary, Information Technology, Electronics & Communications Department, Government of Telangana..","Jay Peters is the Managing Director of PARK USA, a world leading design & innovation management consulting firm, and Managing Director of Grow USA, a world leading professional education provider in Design","","Satish Ramachandran is the Global head of design at Nutanix where he is dedicated to applying design to reimagine enterprise computing.","Jan Baan ​ is a Dutch entrepreneur and venture capitalist, known as the founder of the Baan Company, a software company providing​ ​ Enterprise Resource","","The Digital Product Design field has been going through an identity crisis for almost 20 years. It's about time we try to make sense of it.","","What has brought accolades to YUJ Designs is the way Prasadd drives user research, interaction design and visual design with equal zest and excellence.","Dheeraj Batra is a serial entrepreneur leveraging human centered design (HCD) to build high-impact ventures. Currently, he is the Founder and CEO of Propel Labs, a Design and Innovation consultancy. Propel","Jeremy has over 20 years of experience in design, particularly around human interactions and user experience, fostering collaborative",""]
    //var roomsnos = ["ROOM : Aura 2","ROOM : Harmony","ROOM : Aura 2"]
    var breaks = ["9:00 am","10:00 am","11:00 am"]
    let imageName = ["registration","kb.jpg","jayesh_ranjan_uxindia","Jay_Peter_uxidia","Discussion","satish_uxindia","jan_uxindia","Discussion","Marcelo_Paiva_uxindia","Music","prasad_uxindia","dheeraj_uxindia","Jeremy_Yuille_uxindia","Close"]
    //var colorcodes : [UInt] = [0x43ACD4,0xDA2265,0x5BC7AF]
    var noofrows : [Int] = [1,1,1,4,1,20,9,1]
    var noofrows1 : [Int] = [1,1,1,5,1,4,1,1]
    var timings = ["8:00 AM - 8:30 AM","8:30 AM - 9:30 AM","9:30 AM - 10:00 AM","10:00 AM - 10:30 AM","10:45 AM - 11:45 AM","11:45 AM - 12:15 PM","12:15 PM - 12:45 PM","13:45 PM - 14:45 PM","14:45 PM - 15:05 PM","15:05 PM - 15:35 PM","15:50 PM - 16:20 PM","16:20 PM - 16:50 PM","16:50 PM - 17:20 PM","18:30 PM"]
    var imagenames = ["","BAPU KALADHAR","JAYESH RANJAN","JAY PETERS", "","SATISH RAMACHANDRAN","JAN BAAN","","MARCELO PAIVA","","PRASADD BARTAKKE","DHEERAJ BATRA","JEREMY YUILLE",""]
    var headings = ["REGISTRATIONS","Opening Remarks","IT Secretary, Telangana State","Managing & Leading Design Impact","DESIGN STARTUP","Reimagining Enterprise computing using Design","Genesis of UX in Hyderabad","INDUSTRY ACADEMIA FUSION","Impacting Organizations through proper Design practices education.","Program","There is gap the design community needs to bridge; pretty fast!","Talk","Talk","CLOSING REMARKS"]
    var section3colorcodes : [UInt] = [0x6699ff,0x99cc33,0xff6633,0xff66cc]
    
    
    
    var filteredArray = [String]()
    var headings1 = ["REGISTRATIONS","Opening Remarks","WOMEN IN DESIGN","","UX Clinic","","","CLOSING REMARKS"]
    var section3headings = ["Introduction to Journey Mapping workshop","SCOPING A DESIGN CHALLENGE (FAST FORWARD)","Personas Building","Infographics, Semiotics and Creative Visualization"]
    var section5headings = ["Driving UX in an insurance company","Design, Develop and SURVIVE","Creating delightful human experiences | Social Centered design approach to impact people & Communities","Driving Design Thinking in Enterprise Products","Standing Strong: Leading Business By Design","Impact of Inclusive Design - beyond disabilities","Assistive Technology and UX","Change by Design – A Woman-Centric Way of Driving the Design Culture","Building a great UX team: The hiring experience","Design Thinking - Getting From There to Here","","The Design Sprint - Transforming Constraints into Catalysts for Creativity and Innovation","Using UX to design user led furniture","Data Visualization Aiding Not Just Super Heroes","","Design Intervention- How the industry evolved with it?","Design as Social Capital","Designing for Humans - Responsibly","","Mentor Meet"]
    var section6headings = ["UX VISIONARY","A Case of Strategic Design","Improving overall experience of an Enterprise Platform by Evidence and Research based design","Designers - Think Rural!","UX MASTERY","Progressive Web Applications - What to keep in mind","","UX ESSENTIALS","UX ESSENTIALS"]
    var timings1 = ["8:00 AM - 9:00 AM","9:00 AM - 9:30 AM","9:30 AM - 10:00 AM","10:30 AM - 13:00 PM","10:30 AM - 13:00 PM","14:00 PM - 16:30 PM","16:45 PM - 18:15 PM","18:30 PM"]
    var imagename1 = ["registration","kb","Discussion","","Clinic","","","Close"]
    var section3imagesname1 = ["Jeremy_Yuille_uxindia","lakshman_uxindia","kevin_uxindia","Mainak"]
    var section5imagesname1 = ["kevin_uxindia","Naveen_Magmain_uxindia","Prashanth_Shanmugam_uxindia","madhuri_uxindia","Aditi_Agarwal_uxindia","Srinivasu_Chakravartula_uxindia","Chandni_Rajendran_uxindia","Prachi_Sakhardande_uxindia","Pradeep_Joseph_uxindia","mario_uxindia","ranjeet_uxindia","Niharika_Manchanda_uxindia","Kranti_M_uxindia","Balakrishna_Chamola_uxindia","narender_uxindia","Neha_Modgil_uxindia","Kshitiz_Anand_uxindia","sirajuddin_uxindia","sridhar_uxindia","Discussion"]
    var section6imagesname1 = ["Discussion","Srinivas_Chinta_uxindia","Abinaya_Palaniappan_uxindia","Muzayun_uxindia","Discussion","narender_uxindia","shyam_uxindia","Discussion","Discussion"]
    
    var imagenames1 = ["","BAPU KALADHAR","","","","","",""]
    var section3imagesnames1 = ["JEREMY YUILLE","Lakshman Pachineela","KEVIN BOEZENNEC","Mainak Ghosh"]
    var section5imagesnames1 = ["KEVIN BOEZENNEC","NAVEEN MAGMAIN","PRASHANTH SHANMUGAM","Madhuri Kolhatkar","ADITI AGARWAL","SRINIVASU CHAKRAVARTULA","CHANDNI RAJENDRAN","Prachi Sakhardande","PRADEEP JOSEPH","Mario Van der Meulen","Ranjeet Tayi","NIHARIKA MACHANDA","KRANTI M","BALAKRISHNA CHOMLA","Narender Gangapuri","Neha Modgil","KSHITIZ ANAND","Sirajuddin Mustafa","S. Sridhar Murthy Mudrika",""]
    var section5colorcodes : [UInt] = [0x6699ff,0x99cc33,0xff6633,0xff66cc,0x6699ff,0x99cc33,0xff6633,0xff66cc,0x6699ff,0x99cc33,0xff6633,0xff66cc,0x6699ff,0x99cc33,0xff6633,0xff66cc,0x6699ff,0x99cc33,0xff6633,0xff66cc]
    
    var section6imagesnames1 = ["","Srinivas Chinta","Abinaya Palaniappan","Muzayun Mukhtar","","Rahul Rout","SHYAM DURISETI","",""]
    var section6colorcodes  : [UInt] = [0x6699ff,0x99cc33,0xff6633,0x6699ff,0x99cc33,0xff6633,0x6699ff,0x99cc33,0xff6633]
    
    var submatters1 = ["","Bapu Kaladhar is a Strategic Design Thinker and Information Architect. He is most interested in incubating new business models that deliver social impact","","","BOARD ROOM","","","DAY CLOSES"]
    var section3submatters1 = ["Join Jeremy Yuille from Meld Studios for a hands-on introduction to customer journey mapping. Learn about customer experience design","In this workshop, you’ll get introduced and have hands-on experience with some problem-finding methods of the design strategy practices.","I joined Aegon, an insurance company, last February to take a regional UX management role. As my role is regional (Asia) I'm ","Our environment, systems and operations are flooded with information. Innumerable data points generate data, these are meant for"]
    var section5submatters1 = ["I practice User Experience design to solve solutions to complex problems.As an athletic individual, I understand the concept of working hard through the obstacles and challenges that lay ahead to achieve the goals I have set for myself.\n","Inspired by the power of interfaces design and driven to improve the user experience. Strong on new ideas and an advocate of user centric designs.","Embracing social-centered design means believing that all problems, even the seemingly intractable ones like poverty, gender equality, and clean water, are solvable. Moreover, it means believing that the people who face those problems every day are the ones who hold the key to their answer.","A design thought leader with 30 years of experience as a usability practitioner and design manager,","Hi! My name is Aditi Agarwal. I work as Creative Director with Singsys. I am an User Interface Designer . Having 5 years experience in design industry under my belt","Srinivasu Chakravarthula – studied in the area of Computer Science and digital accessibility and is certified in ‘assistive technologies","Chandni Rajendran is a graduate student of Interaction Design at IDC School of Design, IIT Bombay, class of 2017. Her research","Prachi Sakhardande heads a Product Experience group for a Product Engineering division of TATA Consultancy Services. Her team is ","Mr. Pradeep Joseph is leading the Bosch UX Studio in Bangalore, India. Mr. Joseph has over 18 years of experience in the area","Mario is a creative who’s able to see what others are saying. A versatile, ambidextrous designer able to think strategically and execute ","Ranjeet Tayi is a passionate product User Experience designer & design thinker with over 13 years of experience designing world class","Niharika Manchanda is a User Experience Design Specialist for SAP Labs for Asia Pacific and Japan, where she drives the user ","A serial entrepreneur in the design space with 15+ years. See www.uxdesignlabs.com and www.furlenco.com for work done. A design mentor at Google","I’m a User Experience(UX) professional with 15 years combined experience in UX Solution Architecting, Information Visualization ","Narender has 18+ years of experience in Design with an ability to envision futuristic products with delighted customer experience.","Design is all-pervasive and omnipresent. We may ignore it but cannot live without it. The impact of design in the Indian Diaspora has just started showing up. Industry has become more sensitive towards their consumers.. ","Kshitiz is a passionate designer, educator and public speaker. His approach is firmly grounded in applying the principles of ","Siraj is a human experience designer at heart, been a founder & co-founder of startups","","",""]
    var section6submatters1 = ["","In 2013, I worked for a Hyderabad-based E-Commerce site that specialises in selling project kits for Engineering Students.","Designing Interaction patterns are often considered as a bad reputation, reason being they are considered to be quick","Muzayun Mukhtar is passionate about technological interventions in complex social problems","UX Ladder","By now, you’ve probably heard that Progressive Web Apps are the future of all mankind. They’ll bring world peace, end hunger, save the rainbows and unicorns, bring balance to the force, and a whole lot more","Mr. Duriseti is a customer experience manager at Citrix Systems Inc. He's worked with enterprises","UX Ladder","UX Ladder"]
    
    //    var roomsnos1 = ["ROOM : Harmony","ROOM : Aura 2","ROOM : Aura 2"]
    
    var timings2 = ["8:00 AM - 9:00 AM","9:00 AM - 9:30 AM","9:30 AM - 10:00 AM","10:20 AM - 13:00 PM","10:20 AM - 13:00 PM","14:00 PM - 16:30 PM","16:30 PM - 17:00 PM","17:00 PM - 18:00 PM"]
    var headings2 = ["REGISTRATIONS","Design Leadership, a career path for brave souls","Decisions for impact","","UX Clinic","","UX Clinic","VOTE OF THANKS"]
    var section3heading2 = ["The Value of Design","Early validation techniques for impact across the design lifecycle","Rapid Prototyping Mobile Apps","Design is too important to be left to designers","Design is too important to be left to designers"]
    var section5heading2 = ["Leadership Track","Building UX Design Systems","Design Leadership, a career path for brave souls","Personas - How to create and use them in your design projects"]
    var submatters2 = ["","Director of User Experience Design with 20 years of creative leadership gained in Europe","Steve Fadden works as a user researcher with Analytics User Experience at Salesforce. He also serves as a lecturer at the School of Information","","BOARD ROOM","","BOARD ROOM",""]
    let section3submatters2 = ["Often the value that design can bring to the business or marketplace is hard to prove. While there is no scientific formula, there are indeed ways to prove how design can deliver more impact.","Designers in rapid development environments must make many decisions in short periods of time. How can designers ","This session is the perfect introduction to rapid prototyping your ideas from day one. You will learn how to use the right tools and skills to go ","Design thinking is a core process in Fidelity's overall User Centred-Design (UCD) approach.","Typically undertaken pre-strategy, this highly collaborative process transforms difficult challenges in to opportunities for design. "]
    let section5submatters2 = ["Dheeraj Batra is a serial entrepreneur leveraging human centered design (HCD) to build high-impact ventures. Currently","UX design systems are increasingly critical to how organizations drive UX in their applications. UX design systems are","How to put together a results-oriented strategy,How to create a design team inside a corporation","This workshop will provide a primer on creating and using Personas. It will help you understand the value of creating personas even"]
    //var roomsnos2 = ["ROOM : Harmony","ROOM : Aura 2","ROOM : Aura 2"]
    let imageName2 = ["registration","Pablo_Sanchez_Martin_uxindia","Steve_Faden_uxindia","","Clinic","","Clinic","Close"]
    let section3imageName2 = ["Jay_Peter_uxidia","Steve_Faden_uxindia","Marcelo_Paiva_uxindia","robert_uxindia","stuart_uxindia"]
    let section5imageName2 = ["dheeraj_uxindia","shaun_uxindia","Pablo_Sanchez_Martin_uxindia","madhuri_uxindia"]
    
    
    var imagenames2 = ["","Pablo Sanchez Martin","STEVE FADDEN","","","","",""]
    let section3imagenames2 = ["JAY PETERS","STEVE FADDEN","MARCELO PAIVA","Robert Newham","Stuart Trevithick"]
    let section5imagenames2 = ["DHEERAJ BATRA","Shaun Wortis","Pablo Sanchez Martin","Madhuri Kolhatkar"]
    var section3colorcodes1 : [UInt] = [0x6699ff,0x99cc33,0xff6633,0xff66cc,0xff66cc]
    var section5colorcodes1 : [UInt] = [0x6699ff,0x99cc33,0xff6633,0xff66cc]
    @IBOutlet weak var view22: UIView!
    @IBOutlet weak var but22: UIButton!
    @IBOutlet weak var but21: UIButton!
    @IBOutlet weak var view21: UIView!
    var valueToPass : String?
    var valueToPass3 : String?
    var valueToPass2 : String?
    var valueToPass1 : String?
    @IBOutlet weak var datalabel: UILabel!
    @IBOutlet weak var but20: UIButton!
    @IBAction func Act22(_ sender: AnyObject) {
        datalabel.text="Workshops"
        view20.backgroundColor=UIColor.clear
        view21.backgroundColor=UIColor.clear
        view22.backgroundColor=UIColorFromRGB(0xFF5A00)
        uxtableview.reloadData()
        
    }
    @IBAction func Act21(_ sender: AnyObject) {
        datalabel.text="UX Interaction Day"
        view20.backgroundColor=UIColor.clear
        view22.backgroundColor=UIColor.clear
        view21.backgroundColor=UIColorFromRGB(0xFF5A00)
        uxtableview.reloadData()
        
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.layoutIfNeeded()
        uxtableview.reloadData()
        floatTwitter.clipsToBounds=true
        floatTwitter.layer.cornerRadius=floatTwitter.frame.size.height/2
        floatTwitter.layer.shadowColor = UIColor.black.cgColor
        floatTwitter.layer.shadowOpacity = 0.5
        floatTwitter.layer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        floatTwitter.layer.shadowRadius = 2
        floatTwitter.layer.masksToBounds = true
        floatTwitter.contentEdgeInsets = UIEdgeInsetsMake(5,5,5,5)


        filteredArray.append("BAPU KALADHAR")
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ScheduleViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ScheduleViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        datalabel.text="Conference Day"
        uxtableview.rowHeight = UITableViewAutomaticDimension
        uxtableview.estimatedRowHeight = 140
        uxtableview.delegate = self
        uxtableview.dataSource = self
        
        
    }
    func isConnectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        return (isReachable && !needsConnection)
    }


    

    
    override func viewDidAppear(_ animated: Bool) {
        uxtableview.reloadData()
        
    }
    func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                uxtableview.reloadData()
                if view20.backgroundColor != UIColor.clear{
                    view20.backgroundColor=UIColor.clear
                    view21.backgroundColor=UIColorFromRGB(0xFF5A00)
                    datalabel.text="UX Interaction Day"
                    
                }
                else{
                    view21.backgroundColor=UIColor.clear
                    view22.backgroundColor=UIColorFromRGB(0xFF5A00)
                    datalabel.text="Workshops"
                    
                }
            case UISwipeGestureRecognizerDirection.left:
                uxtableview.reloadData()
                if view20.backgroundColor == UIColor.clear{
                    if view22.backgroundColor != UIColor.clear{
                        view22.backgroundColor=UIColor.clear
                        view21.backgroundColor=UIColorFromRGB(0xFF5A00)
                        datalabel.text="UX Interaction Day"
                        
                    }
                    else{
                        view21.backgroundColor=UIColor.clear
                        view20.backgroundColor=UIColorFromRGB(0xFF5A00)
                        datalabel.text="Conference Day"
                        
                    }
                }
            default:
                break
            }
        }
    }
    @IBAction func Act20(_ sender: AnyObject) {
        datalabel.text="Conference Day"
        view21.backgroundColor=UIColor.clear
        view22.backgroundColor=UIColor.clear
        view20.backgroundColor=UIColorFromRGB(0xFF5A00)
        uxtableview.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        
        //        if imagenames[(indexPath as NSIndexPath).section]  == ""
        //        {
        //            return nil
        //        }
        //    else if imagenames1[(indexPath as NSIndexPath).section] != "" || section3imagesnames1[(indexPath as NSIndexPath).row] != "" || section5imagesnames1[(indexPath as NSIndexPath).row] != "" || section6imagesnames1[(indexPath as NSIndexPath).row] != ""{
        //                      return indexPath
        //                }
        //        else if imagenames2[(indexPath as NSIndexPath).section] != "" || section3imagenames2[(indexPath as NSIndexPath).row] != "" || section5imagenames2[(indexPath as NSIndexPath).row] != ""{
        //            return indexPath
        //        }
        //        else{
        return indexPath
        //        }
    }
    
    // MARK: - Table view data source
    
    @IBAction func floatButAction(_ sender: AnyObject) {
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // 1
        // Return the number of sections.
        if view20.backgroundColor != UIColor.clear{
            return timings.count
        }
        else if view21.backgroundColor != UIColor.clear{
            return timings1.count
        }
        else{
            return noofrows1.count
        }
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        if view20.backgroundColor != UIColor.clear{
            return 1
        }
        else if view21.backgroundColor != UIColor.clear{
            return noofrows[section]
        }
        else{
            return noofrows1[section]
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        if view20.backgroundColor != UIColor.clear{
            if timings[section] == "10:00 AM - 10:30 AM"
            {
                print("one")
                return 40.0
            }
            else if timings[section] == "12:15 PM - 12:45 PM"{
                print("two")
                
                return 40.0
                
            }
            else if timings[section] == "14:45 PM - 15:05 PM" {
                print("three")
                
                return 40.0
            }
            else {
                print("zero")
                
                return 0
            }
        }
        else if view21.backgroundColor != UIColor.clear{
            if timings1[section] == "9:30 AM - 10:00 AM"
            {
                print("one")
                return 40.0
            }
            else if timings1[section] == "10:30 AM - 13:00 PM"{
                print("two")
                
                return 40.0
                
            }
            else if timings1[section] == "14:00 PM - 16:30 PM" {
                print("three")
                
                return 40.0
            }
            else {
                print("zero")
                
                return 0
            }
            
        }
        else{
            if timings2[section] == "9:30 AM - 10:00 AM"
            {
                print("one")
                return 40.0
            }
            else if timings2[section] == "10:20 AM - 13:00 PM"{
                print("two")
                
                return 40.0
                
            }
            else if timings2[section] == "14:00 PM - 16:30 PM" {
                print("three")
                
                return 40.0
            }
            else {
                print("zero")
                
                return 0
            }
            
        }
    }


    func didChangeSearchText(_ searchText: String) {
        // Filter the data array and get only those countries that match the search text.
        filteredArray = imagenames.filter({ (country) -> Bool in
            let countryText: NSString = country as NSString
            print("here")
            
            return (countryText.range(of: searchText, options: NSString.CompareOptions.caseInsensitive).location) != NSNotFound
        })
        
        // Reload the tableview.
        uxtableview.reloadData()
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MatterTableViewCell
        tableView.estimatedRowHeight = 100.0;
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // 3
        // Configure the cell...
        if view20.backgroundColor != UIColor.clear{
            print("but 20")
            
            cell.heading?.text = headings[(indexPath as NSIndexPath).section].capitalized
            cell.matter?.text = submatters[(indexPath as NSIndexPath).section]
            //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
            cell.imgv.image = UIImage(named: imageName[(indexPath as NSIndexPath).section])
            cell.imgname?.text = imagenames[(indexPath as NSIndexPath).section]
            
        }
            /*
             cell.matter?.text = submatters[(indexPath as NSIndexPath).section]
             //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
             cell.imgname?.text = imagenames[(indexPath as NSIndexPath).section]
             
             cell.imgv.image = UIImage(named: imageName[(indexPath as NSIndexPath).section])
             cell.heading?.text = headings[(indexPath as NSIndexPath).section]
             
             
             */
            
            // cell.colorbar.backgroundColor = UIColorFromRGB(colorcodes[(indexPath as NSIndexPath).row])
            /*
             if but20.backgroundColor != UIColor.clear{
             print("but 20")
             
             switch ((indexPath as NSIndexPath).section) {
             case 0:
             cell.heading?.text = headings[(indexPath as NSIndexPath).row]
             cell.matter?.text = submatters[(indexPath as NSIndexPath).row]
             cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).row]
             cell.imgv.image = UIImage(named: imageName[(indexPath as NSIndexPath).row])
             cell.imgname?.text = imagenames[(indexPath as NSIndexPath).row]
             cell.colorbar.backgroundColor = UIColorFromRGB(colorcodes[(indexPath as NSIndexPath).row])
             
             case 1:
             cell.heading?.text = headings[(indexPath as NSIndexPath).row]
             cell.matter?.text = submatters[(indexPath as NSIndexPath).row]
             cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).row]
             cell.imgv.image = UIImage(named: imageName[(indexPath as NSIndexPath).row])
             cell.imgname?.text = imagenames[(indexPath as NSIndexPath).row]
             cell.colorbar.backgroundColor = UIColorFromRGB(colorcodes[(indexPath as NSIndexPath).row])
             
             
             case 2:
             cell.heading?.text = headings[(indexPath as NSIndexPath).row]
             cell.matter?.text = submatters[(indexPath as NSIndexPath).row]
             cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).row]
             cell.imgv.image = UIImage(named: imageName[(indexPath as NSIndexPath).row])
             cell.imgname?.text = imagenames[(indexPath as NSIndexPath).row]
             cell.colorbar.backgroundColor = UIColorFromRGB(colorcodes[(indexPath as NSIndexPath).row])
             
             
             //return sectionHeaderView
             default:
             cell.textLabel?.text = "Other"
             }
             }*/
        else if view21.backgroundColor != UIColor.clear{
            print("view 21")
            switch ((indexPath as NSIndexPath).section) {
            case 3 :
                cell.heading?.text = section3headings[(indexPath as NSIndexPath).row].capitalized
                cell.matter?.text = section3submatters1[(indexPath as NSIndexPath).row]
                //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                cell.colorbar.backgroundColor = UIColorFromRGB(section3colorcodes[(indexPath as NSIndexPath).row])
                cell.imgv.image = UIImage(named: section3imagesname1[(indexPath as NSIndexPath).row])
                cell.imgname?.text = section3imagesnames1[(indexPath as NSIndexPath).row]
                break
            case 5:
                cell.heading?.text = section5headings[(indexPath as NSIndexPath).row].capitalized
                cell.matter?.text = section5submatters1[(indexPath as NSIndexPath).row]
                cell.colorbar.backgroundColor = UIColorFromRGB(section5colorcodes[(indexPath as NSIndexPath).row])
                //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                cell.imgv.image = UIImage(named: section5imagesname1[(indexPath as NSIndexPath).row])
                cell.imgname?.text = section5imagesnames1[(indexPath as NSIndexPath).row]
                break
            case 6:
                cell.heading?.text = section6headings[(indexPath as NSIndexPath).row].capitalized
                cell.matter?.text = section6submatters1[(indexPath as NSIndexPath).row]
                //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                cell.colorbar.backgroundColor = UIColorFromRGB(section6colorcodes[(indexPath as NSIndexPath).row])
                
                cell.imgv.image = UIImage(named: section6imagesname1[(indexPath as NSIndexPath).row])
                cell.imgname?.text = section6imagesnames1[(indexPath as NSIndexPath).row]
                break
            default :
                cell.heading?.text = headings1[(indexPath as NSIndexPath).section].capitalized
                cell.matter?.text = submatters1[(indexPath as NSIndexPath).section]
                //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                cell.imgv.image = UIImage(named: imagename1[(indexPath as NSIndexPath).section])
                cell.imgname?.text = imagenames1[(indexPath as NSIndexPath).section]
                break
            }
            
        }
        else{
            if view22.backgroundColor != UIColor.clear{
                print("view 22")
                switch ((indexPath as NSIndexPath).section) {
                case 3 :
                    cell.heading?.text = section3heading2[(indexPath as NSIndexPath).row]
                    cell.matter?.text = section3submatters2[(indexPath as NSIndexPath).row]
                    //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                    cell.colorbar.backgroundColor = UIColorFromRGB(section3colorcodes1[(indexPath as NSIndexPath).row])
                    cell.imgv.image = UIImage(named: section3imageName2[(indexPath as NSIndexPath).row])
                    cell.imgname?.text = section3imagenames2[(indexPath as NSIndexPath).row]
                    break
                case 5:
                    cell.heading?.text = section5heading2[(indexPath as NSIndexPath).row]
                    cell.matter?.text = section5submatters2[(indexPath as NSIndexPath).row]
                    //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                    cell.colorbar.backgroundColor = UIColorFromRGB(section5colorcodes1[(indexPath as NSIndexPath).row])
                    
                    cell.imgv.image = UIImage(named: section5imageName2[(indexPath as NSIndexPath).row])
                    cell.imgname?.text = section5imagenames2[(indexPath as NSIndexPath).row]
                    break
                default :
                    cell.heading?.text = headings2[(indexPath as NSIndexPath).section]
                    cell.matter?.text = submatters2[(indexPath as NSIndexPath).section]
                    //cell.roomno?.text = roomsnos[(indexPath as NSIndexPath).section]
                    cell.imgv.image = UIImage(named: imageName2[(indexPath as NSIndexPath).section])
                    cell.imgname?.text = imagenames2[(indexPath as NSIndexPath).section]
                    break
                }
                
                
            }
        }
        
        return cell
    }
    /*
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     // retrieve selected cell & fruit
     
     if let indexPath = uxtableview.indexPathForSelectedRow {
     
     
     let detailViewController = segue.destination as! DetailViewController
     print("matter",submatters1[indexPath.row])
     detailViewController.matter.text = submatters[(indexPath as NSIndexPath).row]
     }
     }*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow!
        let cell = tableView.cellForRow(at: indexPath) as! MatterTableViewCell
        valueToPass = cell.imgname.text
        if cell.imgname.text == "" {
            valueToPass3 = cell.heading.text
        }
        valueToPass1 = cell.heading.text
        //valueToPass2 = cell.matter.text
        
        tableView.deselectRow(at: indexPath, animated: true)
        if valueToPass != ""{
        performSegue(withIdentifier: "details", sender: cell)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("here")
        if segue.identifier == "details" {
            let backItem = UIBarButtonItem()
            backItem.title = "Back"
            navigationItem.backBarButtonItem = backItem
            
            //Note that, originally, destinationViewController is of Type UIViewController and has to be casted as myViewController instead since that's the ViewController we trying to go to.
            let destinationVC = segue.destination as! DetailViewController
            
            destinationVC.store = valueToPass!
            destinationVC.store2 = valueToPass1!
            //destinationVC.store3 = valueToPass2!
            
            
        }
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! CustomHeaderCell
        headerCell.backgroundColor = UIColorFromRGB(0xFF5A00)
        if view20.backgroundColor != UIColor.clear{
            headerCell.headerLabel.text = timings[section];
        }
        else if view21.backgroundColor != UIColor.clear{
            headerCell.headerLabel.text = timings1[section];
            
        }
        else{
            headerCell.headerLabel.text = timings2[section];
            
        }
        
        /*switch (section) {
         case 0:
         headerCell.headerLabel.text = timings[section];
         //return sectionHeaderView
         case 1:
         headerCell.headerLabel.text = timings[section];
         //return sectionHeaderView
         case 2:
         headerCell.headerLabel.text = timings[section];
         //return sectionHeaderView
         default:
         headerCell.headerLabel.text = "";
         }*/
        
        return headerCell
    }
    func tweet()
    {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter){
            let twitterController:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterController.setInitialText("@uxindiaconf " )
            self.present(twitterController, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Twitter Account", message: "Please login to your Twitter account.", preferredStyle: .alert)
            self.present(alertController, animated: true, completion:nil)
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            alertController.addAction(OKAction)
        }
        
        
    }
    @IBAction func tweetAction(_ sender: AnyObject) {
        if isConnectedToNetwork() == true {
            tweet()
            
        } else {
            print("Internet connection FAILED")
            let alertController = UIAlertController(title: "Error", message: "No internet connection", preferredStyle: .alert)
            self.present(alertController, animated: true, completion:nil)
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            alertController.addAction(OKAction)
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 35))
        
        
        footerView.backgroundColor = UIColorFromRGB(0x4D3291)
        
        let version = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        version.font = version.font.withSize(15)
        version.textColor = UIColor.white
        version.center = CGPoint(x: footerView.bounds.size.width - 50, y: 20)
        version.translatesAutoresizingMaskIntoConstraints = true
        footerView.addSubview(version)
        let version1 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        version1.font = version.font.withSize(15)
        version1.textColor = UIColor.white
        version1.center = CGPoint(x :110, y: 20)
        version1.translatesAutoresizingMaskIntoConstraints = true
        footerView.addSubview(version1)
        
        
        //        let footerView1 = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
        //
        //
        //        footerView1.backgroundColor = UIColorFromRGB(0x4D3291)
        //
        //        let version2 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        //        version2.font = version2.font.withSize(15)
        //        version2.textColor = UIColor.white
        //        version2.center = CGPoint(x: footerView1.bounds.size.width - 50, y: 20)
        //        version2.translatesAutoresizingMaskIntoConstraints = true
        //        footerView1.addSubview(version2)
        //        let version3 = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        //        version3.font = version.font.withSize(15)
        //        version3.textColor = UIColor.white
        //        version3.center = CGPoint(x :110, y: 20)
        //        version3.translatesAutoresizingMaskIntoConstraints = true
        //        footerView1.addSubview(version3)
        
        if view20.backgroundColor != UIColor.clear{
            print("20if")
            if timings[section] == "10:00 AM - 10:30 AM"
            {
                version.text = "10:30 AM - 10:45 AM";
                version1.text = "COFFEE BREAK"
                
            }
            else if timings[section] == "12:15 PM - 12:45 PM"{
                print("two")
                version.text = "12:45 PM - 13:45 PM";
                version1.text = "LUNCH BREAK";
                
                
            }
            else if timings[section] == "14:45 PM - 15:05 PM" {
                print("three")
                version.text = "15:35 PM - 15:50 PM";
                version1.text = "COFFEE BREAK"
                
                
            }
            else {
                print("zero")
                
            }
            
        }
        else if view21.backgroundColor != UIColor.clear{
            print("21if")
            
            if timings1[section] == "9:30 AM - 10:00 AM"
            {
                version.text = "10:00 AM - 10:30 AM";
                version1.text = "COFFEE BREAK"
                
            }
            else if timings1[section] == "10:30 AM - 13:00 PM"{
                print("two2")
                version.text = "13:00 PM - 14:00 PM";
                version1.text = "LUNCH BREAK";
                
                
            }
            else if timings1[section] == "14:00 PM - 16:30 PM" {
                print("three3")
                version.text = "16:30 PM - 16:45 PM";
                version1.text = "COFFEE BREAK"
            }
            else{
                
            }
        }
        else  if view22.backgroundColor != UIColor.clear{
            if  timings2[section] == "9:30 AM - 10:00 AM"
            {
                version.text = "10:00 AM - 10:20 AM";
                version1.text = "COFFEE BREAK"
                
            }
            else if timings2[section] == "10:20 AM - 13:00 PM"
            {
                print("two")
                version.text = "13:00 PM - 14:00 PM";
                version1.text = "LUNCH BREAK";
            }
            else if timings2[section] == "14:00 PM - 16:30 PM"
            {
                print("three")
                version.text = "16:30 PM - 17:00 PM";
                version1.text = "COFFEE BREAK"
            }
            else {
                print("zero")
                
            }
        }
        
        return footerView
        
    }

    
}











