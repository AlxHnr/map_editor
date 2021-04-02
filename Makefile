P_NAME	= map_editor

CFLAGS  = -Wall -O2 -I. `sdl-config --cflags`
LDFLAGS = `sdl-config --libs` -lSDL_image -lSDL_gfx
OBJECTS = obj/main.o obj/map.o

#main game
$(P_NAME)/$(P_NAME): obj $(OBJECTS) $(P_NAME)
	$(CC) $(CFLAGS) $(OBJECTS) $(LDFLAGS) -o $(P_NAME)/$(P_NAME)

#objects
obj/%.o: %.c
	$(CC) $(CFLAGS) -c $<
	mv *.o obj

#for develop and test run
run: $(P_NAME)/$(P_NAME)
	cd $(P_NAME) && ./$(P_NAME)

#additional stuff
$(P_NAME):
	mkdir $(P_NAME)

obj:
	mkdir obj

clean:
	- rm -rf $(P_NAME) obj

release: $(P_NAME)/$(P_NAME)
	- strip --strip-all $(P_NAME)/$(P_NAME)
	- upx --ultra-brute $(P_NAME)/$(P_NAME)
	zip -9 -r $(P_NAME).zip $(P_NAME)
