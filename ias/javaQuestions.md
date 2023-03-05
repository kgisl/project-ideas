
# tl;dr 

`means : end :: abstraction : polymorphism`. 

Here's an analogy:  If `Moksha (liberation)` is the supreme goal of `Life`,  spirituality is the `means` to achieve it. Similarly if `Polymorphism` is the supreme goal of `OOD/OOP`, abstraction is the _means_ to achieve it. 

A good `object-oriented design (OOD)` provides for effective abstraction (a _concept_ enabled by encapsulation, inheritance, composition, aggregation, association) that enables powerful types of polymorphism (_behaviour_). 

# What is difference between isA,  hasA relationship? 

   - A car has four wheels (**hasA** relationship)
	    - wheel is a member of a car 
		  - Encapsulation  (implies composition)
  - A butterfly is a type of insect (**isA** relationship)
	  - insect is "super-class" and butterfly is "sub-class"
		  - Inheritance  (implies sub-typing)
		  - `extends` is the keyword

## What about `usesA` relationship?  

_tl;dr_ http://kov.ai/interfaceWhy 

  - Let's consider a `Bajaj Pulsar` (_sub-class_)
    - It `hasA` engine (encapsulation, _composition_)
    - It `isA` type of a Bike (inheritance, _super-class_)
  
  Now, let's say you want to make it autonomous vehicle. And `BMW` offers a `LidarBike` technology which can drive any vehicle automatically. And it can be fitted on to any other non-BMW bike as well. 
  - So we now have a `Bajaj Pulsar Auto` which `implements` `LidarBike` interface  
    - `implements` is the keyword
      - `Bajaj Pulsar Auto` `isA` bike and `usesA` an automatic behavior
	    - equivalent of multiple inheritance (available only in C++) but avoids the `deadly diamond problem`

Ultimately, `isA` (overriding, overloading) and `usesA` relationships are abstractions that result in various types of polymorphism (_static_, _dynamic_). 

If you have grokked _everything_ until this point, please read this as well https://bit.ly/oopThis  and https://j.mp/interfaceThis

## Why static attributes and methods?

 - A class needs to know how many run-time objects are available at any point in time. A static integer counter object (*usually* private) is made available in the class scope, so it is neither file scope or global scope. A public static method then makes the value of the private static counter available for other objects to consume. 

	- **Can you access a non-static variable in the static context?**  
Another tricky Java question from Java fundamentals. No, you can not access a non-static variable from the static context in Java. If you try, it will give compile time error. This is actually a common problem beginner in Java face when they try to access instance variable inside the main method. Because main is static in Java, and instance variables are non-static, you can not access instance variable inside main. See, [why you can not access a non-static variable from static method](http://javarevisited.blogspot.sg/2012/02/why-non-static-variable-cannot-be.html) to learn more about this tricky Java questions.

## What is an Abstract Class and Abstract Method in Java? When Should I use it? Tutorial Attached 

[https://crunchify.com/what-is-an-abstract-class-and-abstract-method-in-java-when-should-i-use-it/](https://crunchify.com/what-is-an-abstract-class-and-abstract-method-in-java-when-should-i-use-it/)

## What is interface class in Java? 
[https://crunchify.com/what-is-an-interface-in-java-how-its-used-java-tutorial-example-attached/](https://crunchify.com/what-is-an-interface-in-java-how-its-used-java-tutorial-example-attached/)

---

## The PetSpeak Series
![knuth](https://i.imgur.com/65gX68p.jpg) 

[http://j.mp/petSpeak1](http://j.mp/petSpeak1)  
[http://j.mp/petSpeak2](http://j.mp/petSpeak2)  
[http://j.mp/petSpeak3](http://j.mp/petSpeak3)  
[http://j.mp/petSpeak4](http://j.mp/petSpeak4) - advanced, so be brave and go ahead!

Practice Interfaces 
- https://j.mp/petSpeak21
- https://j.mp/petSpeak22
- https://bit.ly/petSpeak23
- https://bit.ly/petSpeak24



## Final HR round

- Practice speaking about yourself in 30 seconds. Be confident, specific and say something distinct about yourself. 
- Know the projects that you have put into your biodata and the concepts behind them 
- Be keen to know what platforms / projects that you will be asked to work after your training is done. Express your keenness to work on those kinds of projects as soon as you are done with the training period 

 - Research about the company and its products
 - About the company and potential competitors 
 - Know the fundamentals of CoreJava if they are a JavaShop. Know why Java is superior to other languages. 
	 - If they are into Micro Services, get down to the fundamental concepts of what makes Micro services work. 
	 - If you are not able to fully grasp it, it is best not to talk about it at all


 


