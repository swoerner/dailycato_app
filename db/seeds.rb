require 'http'
BusinessHour.destroy_all
Deal.destroy_all
Restaurant.destroy_all
User.destroy_all
USER = User.create!(email: "stefan.wörner@web.de", password: "123123", first_name: "Stefan", last_name: "Wörner")

r1 = Restaurant.create!(rating: 4, name: "Russtrôt Café-Bistro", location: "Zimmerstraße 56", cuisine: "russisch", user: USER, photos: ["https://s3-media1.fl.yelpcdn.com/bphoto/DzHBR_A60NkuLzI0R6cYew/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/Sq9aILOTNHFL3mNsdV-gkg/o.jpg", "https://s3-media4.fl.yelpcdn.com/bphoto/iAbhtIbeEoFFN19rr8Zbiw/o.jpg"])
sleep(2)

r2 = Restaurant.create!(rating: 5, name: "Bäckerei Steinecke", location: "Charlottenstraße 16-17", cuisine: "bakery", user: USER, photos: ["https://s3-media2.fl.yelpcdn.com/bphoto/ZEd5drx2fvTQHYKJNpl9WA/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/Jww432ydtRi8JkkDxZjKPg/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/jzrF6DurY2OjoxWmJa9RVg/o.jpg"])
sleep(2)

r3 = Restaurant.create!(rating: 3.5, name: "Super iBerico", location: "Zimmerstraße 56", cuisine: "spanish", user: USER, photos: ["https://s3-media2.fl.yelpcdn.com/bphoto/fUYDQyRA8WUU3PWF1qcdxg/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/QjW7qy2nagBsmIcebzAlMA/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/vaAKqczIL9ol_B9m3QJxcw/o.jpg"])
sleep(2)

r4 = Restaurant.create!(rating: 4.5, name: "Ishin", location: "Charlottenstraße 16", cuisine: "Japanese", user: USER, photos: ["https://s3-media2.fl.yelpcdn.com/bphoto/Zj7S8Z0y969-21BU4uZJvg/o.jpg", "https://s3-media2.fl.yelpcdn.com/bphoto/QeNa_KMQPMlOJ7H_Soy9bw/o.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/CsAse2i7vafHIKwfZXSl8w/o.jpg"])
sleep(2)

r5 = Restaurant.create!(rating: 3.5, name: "Soupkultur", location: "Markgrafenstraße 22", cuisine: "suppe", user: USER, photos: ["https://s3-media1.fl.yelpcdn.com/bphoto/o2bPhG2O3jwkkDAxGSQ72w/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/Ssjytt2u2tdzuYa9_W0XNQ/o.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/4h7MzltoSM5QbeKIvO-SuA/o.jpg"])
sleep(2)

r6 = Restaurant.create!(rating: 4.5, name: "Chupenga", location: "Charlottenstrasse 4", cuisine: "mexican", user: USER, photos: ["https://fastly.4sqi.net/img/general/200x200/3710308_BZMlyKoEjsVAOWYW0pHfCnLUbxtWKPg_B0yG5gPwOQQ.jpg", "https://fastly.4sqi.net/img/general/200x200/412684171_EPuU5fLNd4tkQVZMqpc8EvOY7J6ybCxg-XCliBEkBCQ.jpg", "https://fastly.4sqi.net/img/general/200x200/109275_epHAQPVDxkiLlHhgAaA7u_pKVoHHJuboxsttYK-7FT4.jpg"])
sleep(2)

r7 = Restaurant.create!(rating: 3.5, name: "Naht Long", location: "Lindenstraße 29A", cuisine: "Chinese", user: USER, photos: ["https://media-cdn.tripadvisor.com/media/photo-s/0f/75/4e/90/nhat-long.jpg", "https://s3-media3.fl.yelpcdn.com/bphoto/TskTLLQzRwCHb6BntB5UmQ/o.jpg", "https://media-cdn.tripadvisor.com/media/photo-s/08/93/46/86/sushi-boat.jpg"])
sleep(2)

r8 = Restaurant.create!(rating: 5.0, name: "BurgermeisterMediterranian", location: "Skalitzer Str. 136", cuisine: "Burger", user: USER, photos: ["https://i.pinimg.com/originals/25/69/31/256931740454b190fbc92a146ab1a0fa.jpg", "https://berlin-ick-liebe-dir.de/wp-content/uploads/2014/10/Berlin-Burgermeister1.jpg", "https://berlinfoodstories.com/wp-content/uploads/2016/01/Burgermeister-Berlin-Cheeseburger-1000x350.jpg"])
sleep(2)

r9 = Restaurant.create!(rating: 5.0, name: "Westberlin", location: "Friedrichstraße 215", cuisine: "Cafe", user: USER, photos: ["https://s3-media4.fl.yelpcdn.com/bphoto/ZIKwbLPIhLnlwdTvuxeewg/o.jpg", "https://www.stilinberlin.de/wp/wp-content/uploads/2014/01/stilinberlin-westberlin-8342-905x603.jpg", "http://www.westberlin-bar-shop.de/assets/images/cafe-westberlin-friedrichstrasse-berlin-front.jpg"])
sleep(2)

# r10 = Restaurant.create!(rating: 3.0, name: "Westberlin", location: "Friedrichstraße 215", cuisine: "Cafe", user: USER, photos: ["https://s3-media4.fl.yelpcdn.com/bphoto/ZIKwbLPIhLnlwdTvuxeewg/o.jpg", "https://www.stilinberlin.de/wp/wp-content/uploads/2014/01/stilinberlin-westberlin-8342-905x603.jpg", "http://www.westberlin-bar-shop.de/assets/images/cafe-westberlin-friedrichstrasse-berlin-front.jpg"])
# sleep(2)


Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r1)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r1)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r1)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r2)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r2)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r2)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r3)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r3)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r3)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r4)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r4)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r4)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r5)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r5)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r5)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r6)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r6)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r6)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r7)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r7)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r7)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r8)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r8)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r8)

Review.create!(name: "Leon M.", rating: 4 , time_created: "29.2.2016", text: "Sehr schönes Café. Ich hatte eine Quiche mit Feta Käse und Salat und außerdem einen Kaffee. Die Bedienung war sehr freundlich und ich habe nicht lange auf mein Essen warten müssen.", restaurant: r9)
Review.create!(name: "Chrstine S.", rating: 5, time_created: "9.4.2017", text: "Wie immer super lecker am sonnigen Sonntag Morgen.  Man sollte früh kommen um einen sichere Platz zu bekommen. Vegetarisches Frühstück mit extra Croissant und Omelett.", restaurant: r9)
Review.create!(name: "Michael H.", rating: 3, time_created: "12.10.2017", text: "Wiedermal ist ein Café im Prenzlauer Berg zur Gastro-Maschine geworden. Gut gestartet,schönes Ambiente und gut gelegen. Und nun? Ein schnelles Abfertigen, kein aufrichtiger Dank für Trinkgeld, wortloses Hinstellen der Getränke. Ich verzichte in Zukunft auf solche Läden und gehe lieber in authentische Cafés im Wedding.", restaurant: r9)


BusinessHour.create!(day: "monday", closed_time: "11:00", open_time:"18::00", restaurant: r1)
BusinessHour.create!(day: "tuesday", closed_time: "11:00", open_time:"18:00", restaurant: r1)
BusinessHour.create!(day: "wednesday", closed_time: "11:00", open_time:"18:00", restaurant: r1)
BusinessHour.create!(day: "thrusday", closed_time: "11:00", open_time:"18:00", restaurant: r1)
BusinessHour.create!(day: "friday", closed_time: "11:00", open_time:"18:00", restaurant: r1)
BusinessHour.create!(day: "saturday", closed_time: "12:00", open_time:"17:00", restaurant: r1)
BusinessHour.create!(day: "sunday", closed_time: "12:00", open_time:"16:00", restaurant: r1)

BusinessHour.create!(day: "monday", closed_time: "06:30", open_time:"18:00", restaurant: r2)
BusinessHour.create!(day: "tuesday", closed_time: "06:30", open_time:"18:00", restaurant: r2)
BusinessHour.create!(day: "wednesday", closed_time: "06:30", open_time:"18:00", restaurant: r2)
BusinessHour.create!(day: "thrusday", closed_time: "06:30", open_time:"18:00", restaurant: r2)
BusinessHour.create!(day: "friday", closed_time: "06:30", open_time:"18:00", restaurant: r2)
BusinessHour.create!(day: "saturday", closed_time: "07:00", open_time:"17:00", restaurant: r2)
BusinessHour.create!(day: "sunday", closed_time: "07:00", open_time:"16:00", restaurant: r2)

BusinessHour.create!(day: "monday", closed_time: "08:00", open_time:"19:00", restaurant: r3)
BusinessHour.create!(day: "tuesday", closed_time: "08:00", open_time:"19:00", restaurant: r3)
BusinessHour.create!(day: "wednesday", closed_time: "08:00", open_time:"19:00", restaurant: r3)
BusinessHour.create!(day: "thrusday", closed_time: "08:00", open_time:"19:00", restaurant: r3)
BusinessHour.create!(day: "friday", closed_time: "08:00", open_time:"19:00", restaurant: r3)
BusinessHour.create!(day: "saturday", closed_time: "10:00", open_time:"17:00", restaurant: r3)
BusinessHour.create!(day: "sunday", closed_time: "10:00", open_time:"16:00", restaurant: r3)

BusinessHour.create!(day: "monday", closed_time: "11:30", open_time:"22:00", restaurant: r4)
BusinessHour.create!(day: "tuesday", closed_time: "11:30", open_time:"22:00", restaurant: r4)
BusinessHour.create!(day: "wednesday", closed_time: "11:30", open_time:"22:00", restaurant: r4)
BusinessHour.create!(day: "thrusday", closed_time: "11:30", open_time:"22:00", restaurant: r4)
BusinessHour.create!(day: "friday", closed_time: "11:30", open_time:"22:00", restaurant: r4)
BusinessHour.create!(day: "saturday", closed_time: "12:30", open_time:"22:00", restaurant: r4)
BusinessHour.create!(day: "sunday", closed_time: "11:00", open_time:"16:00", restaurant: r4)

BusinessHour.create!(day: "monday", closed_time: "11:30", open_time:"15:30", restaurant: r5)
BusinessHour.create!(day: "tuesday", closed_time: "11:30", open_time:"15:30", restaurant: r5)
BusinessHour.create!(day: "wednesday", closed_time: "11:30", open_time:"15:30", restaurant: r5)
BusinessHour.create!(day: "thrusday", closed_time: "11:30", open_time:"15:30", restaurant: r5)
BusinessHour.create!(day: "friday", closed_time: "11:30", open_time:"15:30", restaurant: r5)
BusinessHour.create!(day: "saturday", closed_time: "11:30", open_time:"15:30", restaurant: r5)
BusinessHour.create!(day: "sunday", closed_time: "11:30", open_time:"15:30", restaurant: r5)

BusinessHour.create!(day: "monday", closed_time: "11:30", open_time:"20:00", restaurant: r6)
BusinessHour.create!(day: "tuesday", closed_time: "11:30", open_time:"20:00", restaurant: r6)
BusinessHour.create!(day: "wednesday", closed_time: "11:30", open_time:"20:00", restaurant: r6)
BusinessHour.create!(day: "thrusday", closed_time: "11:30", open_time:"20:00", restaurant: r6)
BusinessHour.create!(day: "friday", closed_time: "11:30", open_time:"20:00", restaurant: r6)
BusinessHour.create!(day: "saturday", closed_time: "11:30", open_time:"20:00", restaurant: r6)
BusinessHour.create!(day: "sunday", closed_time: "11:30", open_time:"15:30", restaurant: r6)

BusinessHour.create!(day: "monday", closed_time: "11:30", open_time:"22:00", restaurant: r7)
BusinessHour.create!(day: "tuesday", closed_time: "11:30", open_time:"22:00", restaurant: r7)
BusinessHour.create!(day: "wednesday", closed_time: "11:30", open_time:"22:00", restaurant: r7)
BusinessHour.create!(day: "thrusday", closed_time: "11:30", open_time:"22:00", restaurant: r7)
BusinessHour.create!(day: "friday", closed_time: "11:30", open_time:"22:00", restaurant: r7)
BusinessHour.create!(day: "saturday", closed_time: "12:30", open_time:"22:00", restaurant: r7)
BusinessHour.create!(day: "sunday", closed_time: "11:00", open_time:"16:00", restaurant: r7)

BusinessHour.create!(day: "monday", closed_time: "11:30", open_time:"22:00", restaurant: r8)
BusinessHour.create!(day: "tuesday", closed_time: "11:30", open_time:"22:00", restaurant: r8)
BusinessHour.create!(day: "wednesday", closed_time: "11:30", open_time:"22:00", restaurant: r8)
BusinessHour.create!(day: "thrusday", closed_time: "11:30", open_time:"22:00", restaurant: r8)
BusinessHour.create!(day: "friday", closed_time: "11:30", open_time:"22:00", restaurant: r8)
BusinessHour.create!(day: "saturday", closed_time: "12:30", open_time:"22:00", restaurant: r8)
BusinessHour.create!(day: "sunday", closed_time: "11:00", open_time:"16:00", restaurant: r8)

BusinessHour.create!(day: "monday", closed_time: "08:00", open_time:"19:00", restaurant: r9)
BusinessHour.create!(day: "tuesday", closed_time: "08:00", open_time:"19:00", restaurant: r9)
BusinessHour.create!(day: "wednesday", closed_time: "08:00", open_time:"19:00", restaurant: r9)
BusinessHour.create!(day: "thrusday", closed_time: "08:00", open_time:"19:00", restaurant: r9)
BusinessHour.create!(day: "friday", closed_time: "08:00", open_time:"19:00", restaurant: r9)
BusinessHour.create!(day: "saturday", closed_time: "10:00", open_time:"17:00", restaurant: r9)
BusinessHour.create!(day: "sunday", closed_time: "10:00", open_time:"16:00", restaurant: r9)


Deal.create!(name: "Businesslunch", description: "Spinat-Käse-Suppe", food_type: "russian", price: 3.90, restaurant: r1)
Deal.create!(name: "Blinis", description: "gefüllt mit Kürbis-Gemuse-Füllung", food_type: "russian", price: 4.50, restaurant: r1)
Deal.create!(name: "Gemischter Salat", description: "mit gebratenem Lachs", food_type: "russian", price: 8.50, restaurant: r1)

Deal.create!(name: "Kartoffelsuppe", description: "mit Bockwurstscheiben", food_type: "german", price: 3.30, restaurant: r2)
Deal.create!(name: "Rührei-Frühstück", description: "mit knusprigem Ofenfrischen und Salatbeilage", food_type: "german", price: 3.95, restaurant: r2)

Deal.create!(name: "Gazpacho", description: "Spanische kalte Gemüsesuppe, dazu Picos oder Brot", food_type: "spanish", price: 3.90, restaurant: r3)
Deal.create!(name: "Boquerones en Aceite", description: "Sardellen in Oliven-Öl dazu Picos oder Brot", food_type: "spanish", price: 5.50, restaurant: r3)
Deal.create!(name: "Tapas-Teller", description: "Gemischter Tapas-Teller mit Serrano, Salami dazu Oliven und Picos", food_type: "spanish", price: 5.50, restaurant: r3)
Deal.create!(name: "Iberischer Tapas-Teller", description: "mit diversen Käse-Sorten, Marmelade, Obst, Picos oder Brot", food_type: "spanish", price: 8.50, restaurant: r3)
Deal.create!(name: "Bolo de Arroz", description: "Reis-Muffin, zahl 2 und nimm 3", food_type: "spanish", price: 2.60, restaurant: r3)
Deal.create!(name: "Kaffeezeit", description: "Cappucino und ein Stück Torte", food_type: "spanish", price: 3.00, restaurant:r3)

Deal.create!(name: "Take Menue", description: "8 Nigiri und 6 Maki", food_type: "japanese", price: 9.80, restaurant: r4)
Deal.create!(name: "Ume Menue", description: "5 Nigiri und 6 Maki", food_type: "japanese", price: 6.50, restaurant: r4)
Deal.create!(name: "Matsu Menue", description: "12 Nigiri und 6 Maki", food_type: "japanese", price: 17.00, restaurant: r4)

Deal.create!(name: "Brokkolicremesuppe", description: "mit gerösteten Mandeln und frischen Kräutern", food_type: "modern european" , price: 3.50, restaurant: r5)
Deal.create!(name: "Vegane Karottensuppe", description: "mit Ingwer, Sojamilch und karamellisierter roter Bete", food_type: "modern european" , price: 3.50, restaurant: r5)
Deal.create!(name: "Bunte Gemüsesuppe", description: "mit Wiener Würstchen, Croûtons und Petersilie", food_type: "modern european" , price: 4.50, restaurant: r5)
Deal.create!(name: "Buchweizen-Hackfleischtopf", description: "mit Paprika und Koriander", food_type: "modern european" , price: 4.00, restaurant: r5)
Deal.create!(name: "Thailändische grüne Currysuppe", description: "mit geflügelstreifen, asiatischem Gemüse und Koriander", food_type: "modern european" , price: 4, restaurant: r5)

Deal.create!(name: "Burrito", description: "pick your base, mains, sides and salsas and add our homemade extras", food_type: "mexican" , price: 8.50, restaurant: r6)
Deal.create!(name: "Tacos", description: "pick your base, mains, sides and salsas and add our homemade extras", food_type: "mexican" , price: 8.50, restaurant: r6)
Deal.create!(name: "Salad", description: "pick your base, mains, sides and salsas and add our homemade extras", food_type: "mexican" , price: 7.50, restaurant: r6)

# Deal.create!(name: "", description: "", food_type: "", price: , restaurant:)
# Deal.create!(name: "", description: "", food_type: "", price: , restaurant:)
# Deal.create!(name: "", description: "", food_type: "", price: , restaurant:)

API_KEY = ENV["YELP_API"]

# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path

REVIEWS = "/reviews"

DEFAULT_BUSINESS_ID = "yelp-san-francisco"
DEFAULT_TERM = "dinner"
DEFAULT_LOCATION = "San Francisco, CA"
SEARCH_LIMIT = 5


def search(term, location) # for ids
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: term,
    location: location,
    limit: SEARCH_LIMIT
  }

  response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
  response.parse
  array_of_ids = []

  response.parse["businesses"].each do |business|
    array_of_ids << business["id"]
  end
  array_of_ids
end

def search_restaurants_details(array_of_ids)
  array_of_ids.each do |id|
    url = "#{API_HOST}#{BUSINESS_PATH}#{id}"

    response = HTTP.auth("Bearer #{API_KEY}").get(url)

    price_category = response.parse["price"].length if response.parse["price"]
    r = Restaurant.create!(
      name: response.parse["name"],
      phone_number: response.parse["phone"],
      rating: response.parse["rating"],
      user: USER,
      cuisine: response.parse["categories"][0]["title"],
      location: response.parse["location"]["address1"],
      zip_code: response.parse["location"]["zip_code"],
      photo: response.parse["image_url"],
      photos: response.parse["photos"],
      price_category: price_category,
      )
    p "Created restaurant #{r.name}"
    p " #{r.cuisine}"
    if response.parse["hours"] && r
      days = %w(monday tuesday wednesday thursday friday saturday sunday)
      response.parse["hours"].first['open'].each do |hour|
        day = days[hour['day']]
        BusinessHour.create!(closed_time: hour['end'], open_time: hour['start'], restaurant: r, day: day)
      end
    end

    url = "#{API_HOST}#{BUSINESS_PATH}#{id}#{REVIEWS}"
    response = HTTP.auth("Bearer #{API_KEY}").get(url)
    if response.parse["reviews"]
      response.parse["reviews"].each do |review|
        rv = Review.create!(
         restaurant_id: r.id,
         rating: review["rating"].to_i,
         text: review["text"],
         time_created: review["time_created"],
         name: review["user"]["name"]
         )
        puts "created review #{rv}"
      end
    end
    sleep(2)
  end
end



id_array = search('restaurant', 'Berlin')
results = search_restaurants_details(search('restaurant', 'Berlin'))


Deal.create!(name: "Hackbraten", description: "mit Kartoffeln und Sauerkraut", food_type: "german", price: 14.50, restaurant: Restaurant.where(cuisine: "German").sample)
Deal.create!(name: "Rinderrouladen", description: "2 Rinderrouladen nach Hausfrauenart mit Rotkohl und Klößen", food_type: "german", price: 13.50, restaurant: Restaurant.where(cuisine: "German").sample)
Deal.create!(name: "Hirschragout", description: "mit Pilzen, Kartoffelkroketten und Preiselbeersahne", food_type: "german", price: 13.90, restaurant: Restaurant.where(cuisine: "German").sample)
Deal.create!(name: "Leberkäse", description: "mit Bratkartoffeln und Spiegelei", food_type: "german", price: 11.90, restaurant: Restaurant.where(cuisine: "German").sample)


Deal.create!(name: "Schnitzel", description: "mit Pommes Frites und Preiselbeeren", food_type: "schnitzel", price: 6.50, restaurant: Restaurant.where(cuisine: "Schnitzel").sample)
Deal.create!(name: "Jägerschnitzel", description: "in Pilzrahmsauce und Kroketten", food_type: "schnitzel", price: 6.50, restaurant: Restaurant.where(cuisine: "Schnitzel").sample)
Deal.create!(name: "Zigeunerschnitzel", description: "mit Pommes Frites", food_type: "schnitzel" , price: 6.50, restaurant: Restaurant.where(cuisine: "Schnitzel").sample)
Deal.create!(name: "Pommes Schranke", description: "Pommes Frites mit Mayonaise und Ketchup", food_type: "schnitzel", price: 6.50, restaurant: Restaurant.where(cuisine: "Schnitzel").sample)


Deal.create!(name: "Sake Menue", description: "7 Nigiri (Salmon) und 6 Maki (Salmon)", food_type: "japanese", price: 9.00, restaurant: Restaurant.where(cuisine: "Japanese").sample)
Deal.create!(name: "Maguro Menue", description: "7 Nigiri (Tuna) und 6 Maki (Tuna)", food_type: "japanese", price: 12.00, restaurant: Restaurant.where(cuisine: "Japanese").sample)
Deal.create!(name: "Mix Menue", description: "4 Nigiri (Salmon), 3 Nigiri (Tuna), 3 Maki (Salmon) und 3 Maki (Tuna)", food_type: "japanese", price: 14.50, restaurant: Restaurant.where(cuisine: "Japanese").sample)
Deal.create!(name: "Manguro Sashimi", description: "Raw Tuna", food_type: "japanese", price: 9.20, restaurant: Restaurant.where(cuisine: "Japanese").sample)


Deal.create!(name: "Sate Ayam", description: "Gegrillte Hänchenspieße in Erdnusssoße, serviert mit Reis und Acar", food_type: "indonesian", price: 8.50, restaurant: Restaurant.where(cuisine: "Indonesian").sample)
Deal.create!(name: "Sate Kambing", description: "Gegrillte Lammspieße in Erdnusssoße oder Sojasoße, serviert mit Reis und Acar", food_type: "indonesian", price: 8.50, restaurant: Restaurant.where(cuisine: "Indonesian").sample)
Deal.create!(name: "Bakso", description: "Hausgemachte Nudelsuppe mit Rindfleischklößchen und Lauchzwiebel", food_type: "indonesian", price: 7.50, restaurant: Restaurant.where(cuisine: "Indonesian").sample)
Deal.create!(name: "Nasi Goreng Kambing", description: "Gebratener Eierreis mit Lammfleisch, Gurke und Tomate", food_type: "indonesian", price: 7.50, restaurant: Restaurant.where(cuisine: "Indonesian").sample)


Deal.create!(name: "Udon-Kräuterseitling-Suppe", description: "Udon-Nudeln, Kräuterseitling, Kaserschoten, Cherrytomaten, Ingwer, Zwiebeln, Dill, Ananas, Sesamöl, Tofu", food_type: "vietnamese", price: 7.90, restaurant: Restaurant.where(cuisine: "Vietnamese").sample)
Deal.create!(name: "Bun Nam Bo", description: "Entenbrust mit Nudeln", food_type: "vietnamese", price: 8.90, restaurant: Restaurant.where(cuisine: "Vietnamese").sample)
Deal.create!(name: "Pho soja", description: "Vietnamesische Reisbandnudeln aromatisiert, Sesam, frischem Sprossen-Krautsalat, Kräuter, Sellerie, Sesam, Erdnüssen und einem Soja-Schalotten-Dressing", food_type: "vietnamese", price: 9.90, restaurant: Restaurant.where(cuisine: "Vietnamese").sample)
Deal.create!(name: "Duck Rolls / Goi Cuon Vit", description: "2 summer rolls filled with rice noodles, duck filet, fermented cabbage, salad & fresh herbs", food_type: "vietnamese", price: 4.20, restaurant: Restaurant.where(cuisine: "Vietnamese").sample)

Deal.create!(name: "Seetangsalat", description: "mit Sojasprossen und Sesam, leicht süßlich", food_type: "chinese", price: 4.90, restaurant: Restaurant.where(cuisine: "Chinese").sample)
Deal.create!(name: "Eierreis, Eiernudeln, gebraten", description: "mit gegrilltem Schweinefleisch und Gemüse", food_type: "chinese", price: 6.90, restaurant: Restaurant.where(cuisine: "Chinese").sample)
Deal.create!(name: "Rotes Curry Huhn", description: "gebratene Hühnerbrust mit rotem Curry und Gemüse (enthält Milch und Kokosmilch)", food_type: "chinese", price: 9.20, restaurant: Restaurant.where(cuisine: "Chinese").sample)
Deal.create!(name: "Rotbarschfilet nach Bauernart", description: "mit Gemüse und Knoblauch in scharfer Suppe", food_type: "chinese", price: 11.80, restaurant: Restaurant.where(cuisine: "Chinese").sample)


Deal.create!(name: "All American", description: "Circa 140g Rindfleisch mit Tomaten, Zwiebeln, Eisbergsalat, Gewürzgurken, Ketchup und Mayonnaise", food_type: "burger", price: 5.20, restaurant: Restaurant.where(cuisine: "Burger").sample)
Deal.create!(name: "Double Happiness", description: "240g Rindfleisch mit Tomaten, Zwiebeln, Eisbergsalat, Gewürzgurken, Ketchup und Mayonnaise", food_type: "burger", price: 7.50, restaurant: Restaurant.where(cuisine: "Burger").sample)
Deal.create!(name: "Cheese Burger", description: "Circa 140g Rindfleisch mit Cheddar, Tomaten, Zwiebeln, Eisbergsalat, Gewürzgurken, Ketchup und Mayonnaise", food_type: "burger", price: 6.00, restaurant: Restaurant.where(cuisine: "Burger").sample)
Deal.create!(name: "Beef & Bacon", description: "Circa 140g Rindfleisch mit knusprigen Baconscheiben, Tomaten, Zwiebeln, Eisbergsalat, Gewürzgurken, Ketchup und Mayonnaise", food_type: "burger", price: 6.00, restaurant: Restaurant.where(cuisine: "Burger").sample)
Deal.create!(name: "Cheese Cake Bacon Burger", description: "Circa 420g Rindfleisch mit Cheddar, Bacon, Tomaten, Zwiebeln, Eisbergsalat, Gewürzgurken, Ketchup und Mayonnaise", food_type: "burger", price: 10.50, restaurant: Restaurant.where(cuisine: "Burger").sample)


Deal.create!(name: "Grünkohl", description: "mit Pinkel uhd Petersilienkartoffel", food_type: "wine bars", price: 12.50, restaurant: Restaurant.where(cuisine: "Wine Bars").sample)
Deal.create!(name: "Rotondi gef.", description: "mit Maronen & Birnen auf Gorgonzola Spinat Spiegel mit Birnenspalten", food_type: "wine bars", price: 12.50, restaurant: Restaurant.where(cuisine: "Wine Bars").sample)
Deal.create!(name: "Cansoncelli gef.", description: "mit Waldpilzen & Trüffel auf Champignon Speck Sauce", food_type: "wine bars", price: 12.50, restaurant: Restaurant.where(cuisine: "Wine Bars").sample)
Deal.create!(name: "Pasta Caprese", description: "mit frischem Basilikum und Pesto", food_type: "wine bars", price: 10.50, restaurant: Restaurant.where(cuisine: "Wine Bars").sample)
Deal.create!(name: "Chiligarnelen", description: "mit Strauchtomaten und Grapefruitfilets", food_type: "wine bars", price: 15.50, restaurant: Restaurant.where(cuisine: "Wine Bars").sample)

Deal.create!(name: "Suppe des Tages", description: "wechselndes Angebot", food_type: "barbeque", price: 8.00, restaurant: Restaurant.where(cuisine: "Barbeque").sample)
Deal.create!(name: "Spare Ribs", description: "vom Havelländer Apfelschwein mit Barbecuesauce", food_type: "barbeque", price: 16.00, restaurant: Restaurant.where(cuisine: "Barbeque").sample)
Deal.create!(name: "Krosser Bauch", description: "vom Thüringer Duroc Schwein (24 Std. gegart) mit Hopfen-Malz-Sauce", food_type: "barbeque", price: 16.00, restaurant: Restaurant.where(cuisine: "Barbeque").sample)


Deal.create!(name: "Drehspieß Kebap", description: "im Fladenbrot mit grünem Salat, Rotkraut, Weißkraut, Zwiebeln, Tomaten und Sauce nach Wahl", food_type: "food stands", price: 5.00, restaurant: Restaurant.where(cuisine: "Food Stands").sample)
Deal.create!(name: "Drehspieß Dürüm", description: "mit grünem Salat, Rotkraut, Weißkraut, Zwiebeln, Tomaten und Sauce nach Wahl", food_type: "food stands", price: 6.00, restaurant: Restaurant.where(cuisine: "Food Stands").sample)
Deal.create!(name: "Lahmacun Spezial", description: "mit Drehspieß, Tzatziki und Salat", food_type: "food stands", price: 7.00, restaurant: Restaurant.where(cuisine: "Food Stands").sample)



# Deal.create!(name: "Weekly Menue Special", description: "3 Gänge Ihrer Wahl", food_type: "international", price: 12.50, restaurant: Restaurant.where(cuisine: "International").sample)
# Deal.create!(name: "North Africa", description: "Shakshuka, Eier im Tomatensugo, Paprika, Kirchererbsen und Koriander", food_type: "international", price: 10.50, restaurant: Restaurant.where(cuisine: "International").sample)
# Deal.create!(name: "Mexican Style", description: "Quesedilla, Zwiebeln, schwarze Bohnen, Cheddar, Sauerrahm, bunter Blattspinat", food_type: "international", price: 13.00, restaurant: Restaurant.where(cuisine: "International").sample)
# Deal.create!(name: "The Rising Sun", description: "Okonomiyaki, Spitzkohl gebraten im Teig, Ei, Frühlingszwiebeln Nori, Wasabi-Mayo, Teriyaki und Sesam", food_type: "international", price: 12.50, restaurant: Restaurant.where(cuisine: "International").sample)
# Deal.create!(name: "Lumber Jack", description: "French Toast, Rührei, Bacon (vegan oder Fleisch) und Ahornsirup", food_type: "international", price: 11.00, restaurant: Restaurant.where(cuisine: "International").sample)
# Deal.create!(name: "Morning After", description: "Omelett mit Pilzen, Spinat und Tomaten", food_type: "international", price: 11.00, restaurant: Restaurant.where(cuisine: "International").sample)

# Deal.create!(name: "Hamburger", description: "mit hausgemachter Burgersoße", food_type: "fast food", price: 3.60, restaurant: Restaurant.where(cuisine: "Fast Food").sample)
# Deal.create!(name: "Cheese Burger", description: "mit Käse, Gewürzgurken und hausgemachter Burgersoße", food_type: "fast food", price: 3.90, restaurant: Restaurant.where(cuisine: "Fast Food").sample)
# Deal.create!(name: "Chilie-Cheeseburger", description: "mit Käse, Jalapeños und hausgemachter Burgersoße", food_type: "fast food", price: 4.20, restaurant: Restaurant.where(cuisine: "Fast Food").sample)
# Deal.create!(name: "Cheese Fries", description: "Pommes mit Käser überbacken", food_type: "fast food", price: 3.10, restaurant: Restaurant.where(cuisine: "Fast Food").sample)
# Deal.create!(name: "Fries", description: "hausgemachte Pommes Frittes", food_type: "fast food", price: 2.40, restaurant: Restaurant.where(cuisine: "Fast Food").sample)

# Deal.create!(name: "Spaghetti Carbonara", description: "mit Speck in Käsesahnesauce", food_type: "italian", price: 4.00, restaurant: Restaurant.where(cuisine: "Mediterranean").sample)
# Deal.create!(name: "Spaghetti Bolognese", description: "mit Fleischbällchen und Tomatensauce", food_type: "italian", price: 4.50, restaurant: Restaurant.where(cuisine: "Mediterranean").sample)
# Deal.create!(name: "Spaghetti Caprese", description: "mit Knoblauch und Tomate", food_type: "italian", price: 4.50, restaurant: Restaurant.where(cuisine: "Mediterranean").sample)
# Deal.create!(name: "Pizza Hawaii", description: "mit Schinken und Ananas", food_type: "italian", price: 4.00, restaurant: Restaurant.where(cuisine: "Mediterranean").sample)
# Deal.create!(name: "Pizza Frutti de Mare", description: "mit Scampis und Meeresfrüchten", food_type: "italian", price: 4.00, restaurant: Restaurant.where(cuisine: "Mediterranean").sample)
# Deal.create!(name: "Pizza Mageritha", description: "mit Käse und Tomatensauce", food_type: "italian", price: 4.00, restaurant: Restaurant.where(cuisine: "Mediterranean").sample)

# Deal.create!(name: "Bruschette Classic", description: "mit Tomaten, Zwiebeln, Oliven undfrischem Parmesan überbacken", food_type: "cafes", price: 4.80, restaurant: Restaurant.where(cuisine: "Cafes").sample)
# Deal.create!(name: "Hausgemachte Kuchen", description: "Apfel-, Käse-, Käse-Kirsch- oder Russischer Zupfkuchen", food_type: "cafes", price: 2.90, restaurant: Restaurant.where(cuisine: "Cafes").sample)
# Deal.create!(name: "Club Sandwiches", description: "mit Putenbrust & Cocktailsoße", food_type: "cafes", price: 8.10, restaurant: Restaurant.where(cuisine: "Cafes").sample)

# Deal.create!(name: "Französisches Frühstück", description: "Milchkaffee, 1 Croissant, Butter, Nutella oder Marmelade oder Honig", food_type: "breakfast & brunch", price: 5.80, restaurant: Restaurant.where(cuisine: "Breakfast & Brunch").sample)
# Deal.create!(name: "Bretonisches Frühstück", description: "Heiße Schokolade mit Sahne, 1 Croissant, Butter, Marmelade oder Honig oder Nutella", food_type: "breakfast & brunch", price: 5.80, restaurant: Restaurant.where(cuisine: "Breakfast & Brunch").sample)
# Deal.create!(name: "Gemischtes Frühstück", description: "1 Brötchen, 1 Scheibe Vollkornbrot, 1 Mehrkornbrötchen, Butter, Käse, Schinken, Salami, 1 Ei, frisches Obst", food_type: "breakfast & brunch", price: 8.30, restaurant: Restaurant.where(cuisine: "Breakfast & Brunch").sample)
# Deal.create!(name: "Lachsfrühstück für Zwei", description: "Norwegischer Lachs, Butter, Kaviar, Meerettich und Toast", food_type: "breakfast & brunch", price: 8.30, restaurant: Restaurant.where(cuisine: "Breakfast & Brunch").sample)
# Deal.create!(name: "Käsefrühstück", description: "1 Brötchen, 1 Scheibe Vollkornbrot, 1 Mehrkornbrötchen, Butter, 5 Sorten Käse, 1 Ei, frisches Obst", food_type: "breakfast & brunch", price: 8.30, restaurant: Restaurant.where(cuisine: "Breakfast & Brunch").sample)
# Deal.create!(name: "Aroma Plus", description: "2 Brötchen, 1 Grapefruit, Butter, Käse & Marmelade", food_type: "breakfast & brunch", price: 8.30, restaurant: Restaurant.where(cuisine: "Breakfast & Brunch").sample)
