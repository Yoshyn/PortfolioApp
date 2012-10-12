# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Deleting all pictures"
Picture.delete_all
puts "Creating testing pictures"

abc = ActiveRecord::Base.connection
["sye_avatar|avatar.jpg", "[M1]Auto Concession|autoconcessionjsf.png", "[M1]Logiteck Struts|logiteckstruts.png", "[M1]Logiteck Swing|logiteckswing.png", "[CPP]Aumiis|aumiis.png"].each do |data| 
  legend, url = data.chomp.split("|")
  abc.execute("INSERT INTO pictures (legend,url,created_at,updated_at) VALUES ('#{legend}', '#{url}', Date(),Date())")
end 

puts "Deleting all profile (Only one logicaly)"
Profile.delete_all
puts "Creating Profile"
Profile.create(:name => "Antoine", :firstname => "Sylvestre", :login => "foo", :password => "foo", :location => "Paris,France",
               :email => "mail@mail.mail", :title => "Hi. I'm Sylvestre, Welcome on my Portfolio",
               :description => "I'm a 23 years old student. Currently, I'm in 2nd year of a Computer Master Degree at Orleans (MIAGE).\n
                                Passionate about programming, I like to scroll on the web and view blogs related to new technologies. I also strongly appreciate teaching computer science which I had the opportunity to do thanks to tutoring and mentoring in IUT.\n
                                I'm quite curious and like to learn the use of technologies when I have the time (Ardino modules, Ruby on Rails development, ...).\n
                                Personally hightly interested by ethical issues of data ownership, I set up my own server and hosts various services on this site (svn, file manager, wiki...)", 
               :hobby => "I like hikking mountains and reading news magazines. I also learn Argentine Tango and participate every year in the IT challenge at the University of Orleans (IUT)",
               :git_link => "https://github.com/Yoshyn",
               :twitter_link => "https://twitter.com/naremy")

puts "Deleting all projects"
Project.delete_all
puts "Creating Projects"
Project.create(:title => "Aumiis : A C++ utility library", :technologies => "C++", :website => "http://88.167.124.51/wiki/doku.php?id=aumiis", :status => 'In Progress',
               :description => "The project's goal is to develop with some students a library in C + + to make them learning how to handle Eclipse (CDT plugin), reviewing the concepts of database (pointers, coplien, templates ...) and making an introduction to the standard library (STL).")
Project.create(:title => "AutoConcession (M1: academic)", :technologies => "JAVA/JSF/RMI", :website => "", :status => 'Finish',
               :description => "Goal: managing a distributed system of cars vendors\n
                                Each dealership has a list of cars and each of these cars can be ordered in another dealership. Two issues were raised:\n
                                How to know the other dealerships and to connect them?\n
                                How to be sure that a car will not be sold ordered by two people in the same time? (synchronization)?")
Project.create(:title => "Logiteck (M1: academic)", :technologies => "JAVA/Struts 1/Swing", :website => "http://88.167.124.51/wiki/doku.php?id=aumiis", :status => 'Finish',
               :description => "The purpose was to understand the use of MVC, the importance of documentation (doxygen) and the use of Eclipse and its plugins. A graphical interface had to be done in Swing and another in Struts. Of course, both had to be consistent and the use of a database was banned (using Java serialization)")

puts "Deleting all Educations"
Education.delete_all
puts "Creating Educations"
Education.create(:school => "Master MIAGE", :website => "http://orleans.miage.fr/programme/", :location => 'Orleans', :keywords => "Management SI/Projet, IHM, Securite reseaux, Architectures Applicatives Reparties, SEO",
               :description => "Le Master de methodes informatiques appliquees a la gestion des entreprises (MIAGE) est un diplome universitaire francais de niveau Bac+5, alliant une double competence en informatique et en gestion, destine a former des cadres d'entreprise experts en ingenierie et management des systemes d'information. Source : Wikipedia")
Education.create(:school => "Licence Informatique MIAGE", :website => "http://orleans.miage.fr/programme/", :location => 'Orleans', :keywords => "Systemes d'information, Bases de Donnees, Reseaux",
               :description => "Methodes informatiques appliquees a la gestion des entreprises.")
               
puts "Deleting all Experiences"
Experience.delete_all
puts "Creating Educations"
Experience.create(:compagny => "Sopra Group", :website => "http://www.sopragroup.com/", :position => "Stagiaire", :keywords => "Organisation d'une entreprise, Relation client, Travail en equipe",
                :description => "-> Redaction de specifications fonctionnelles/techniques afin de developper un outil de tests sur Oracle BRM (Billing and Revenue Management).\n
                -> Mise en place d'une grammaire en PERL/ksh pour cet outil.\n
                -> Conception de scenarios de tests (unitaires/fonctionnels).")
Experience.create(:compagny => "Universite d'Orleans", :website => "http://www.univ-orleans.fr/", :position => "Tuteur informatique", :keywords => "Pedagogie, Esprit de synthese, Contacts Relationnels",
                :description => "Cours de soutien en algorithmie pour les etudiants de premiere annee de faculte.")