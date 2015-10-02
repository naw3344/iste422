HelloWorld: HelloWorld.class
	echo Main-Class: oata.HelloWorld>myManifest
	jar cfm build/jar/HelloWorld.jar myManifest -C build/classes .

HelloWorld.class: src/oata/HelloWorld.java
	javac -sourcepath src -d build/classes src/oata/HelloWorld.java

clean:
	rm myManifest
	rm build/jar/HelloWorld.jar
	rm -r build/classes/oata
