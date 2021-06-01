go:- grasp(Make),
write('your '),
write(Make),
write(' Order is ready for sell'),
nl,
undo.

input(Question) :-
write('Would you want a '),
write(Question),
write('? '),
read(Output),
nl,
((Output == yes ; Output == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

verify(Order) :-
(yes(Order)
 ->
  true ;
   (no(Order)
	 ->
	  fail ;
		input(Order))).
		
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.

/*---------------- Hypothesis -----------------*/
grasp(asos) :- asos, !.
grasp(lenova) :- lenova, !.
grasp(apple) :- apple, !.
grasp(hp) :- hp, !.
grasp(acer) :- acer, !.
grasp(empty_basket).

/*-------------------- Asos Brand --------------------*/
asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_4),
verify(rom_500GB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_4),
verify(rom_500GB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_4),
verify(rom_1TB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_4),
verify(rom_1TB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_8),
verify(rom_500GB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_8),
verify(rom_500GB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_8),
verify(rom_1TB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(silver_color),
verify(ram_8),
verify(rom_1TB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_4),
verify(rom_500GB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_4),
verify(rom_500GB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_4),
verify(rom_1TB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_4),
verify(rom_1TB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_8),
verify(rom_500GB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_8),
verify(rom_500GB),
verify(ssd_slot_No).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_8),
verify(rom_1TB),
verify(ssd_slot_Yes).

asos :-
verify(laptop),
verify(asos),
verify(maron_color),
verify(ram_8),
verify(rom_1TB),
verify(ssd_slot_No).

/*--------------------- Lenova Brand ---------------------*/
lenova :-
verify(laptop),
verify(lenova),
verify(black_color),
verify(big_screen),
verify(core_i5).

lenova :-
verify(laptop),
verify(lenova),
verify(black_color),
verify(big_screen),
verify(core_i7).

lenova :-
verify(laptop),
verify(lenova),
verify(black_color),
verify(small_screen),
verify(core_i5).

lenova :-
verify(laptop),
verify(lenova),
verify(black_color),
verify(small_screen),
verify(core_i7).

lenova :-
verify(laptop),
verify(lenova),
verify(grey_color),
verify(big_screen),
verify(core_i5).

lenova :-
verify(laptop),
verify(lenova),
verify(grey_color),
verify(big_screen),
verify(core_i7).

lenova :-
verify(laptop),
verify(lenova),
verify(grey_color),
verify(small_screen),
verify(core_i5).

lenova :-
verify(laptop),
verify(lenova),
verify(grey_color),
verify(small_screen),
verify(core_i7).

/*----------------------- Apple Brand ---------------------*/
apple :-
verify(laptop),
verify(macbook),
verify(white_color),
verify(large_screen),
verify(gen_7th).

apple :-
verify(laptop),
verify(macbook),
verify(white_color),
verify(large_screen),
verify(gen_8th).

apple :-
verify(laptop),
verify(macbook),
verify(white_color),
verify(mini_screen),
verify(gen_7th).

apple :-
verify(laptop),
verify(macbook),
verify(white_color),
verify(mini_screen),
verify(gen_8th).

apple :-
verify(laptop),
verify(macbook),
verify(pink_color),
verify(large_screen),
verify(gen_7th).

apple :-
verify(laptop),
verify(macbook),
verify(pink_color),
verify(large_screen),
verify(gen_8th).

apple :-
verify(laptop),
verify(macbook),
verify(pink_color),
verify(mini_screen),
verify(gen_7th).

apple :-
verify(laptop),
verify(macbook),
verify(pink_color),
verify(mini_screen),
verify(gen_8th).

/*------------------------- HP Brand -----------------------*/
hp :-
verify(laptop),
verify(hp),
verify(white_color),
verify(ram_4),
verify(inch_14).

hp :-
verify(laptop),
verify(hp),
verify(white_color),
verify(ram_4),
verify(inch_15_6).

hp :-
verify(laptop),
verify(hp),
verify(white_color),
verify(ram_8),
verify(inch_14).

hp :-
verify(laptop),
verify(hp),
verify(white_color),
verify(ram_8),
verify(inch_15_6).

hp :-
verify(laptop),
verify(hp),
verify(black_color),
verify(ram_4),
verify(inch_14).

hp :-
verify(laptop),
verify(hp),
verify(black_color),
verify(ram_4),
verify(inch_15_6).

hp :-
verify(laptop),
verify(hp),
verify(black_color),
verify(ram_8),
verify(inch_14).

hp :-
verify(laptop),
verify(hp),
verify(black_color),
verify(ram_8),
verify(inch_15_6).

/*----------------------- Acer Brand -----------------------*/
acer :-
verify(laptop),
verify(acer),
verify(silver_color),
verify(rom_500GB),
verify(amd_radeon_graphics).

acer :-
verify(laptop),
verify(acer),
verify(silver_color),
verify(rom_500GB),
verify(intel_hd_Graphics).

acer :-
verify(laptop),
verify(acer),
verify(silver_color),
verify(rom_1TB),
verify(amd_radeon_graphics).

acer :-
verify(laptop),
verify(acer),
verify(silver_color),
verify(rom_1TB),
verify(intel_hd_Graphics).

acer :-
verify(laptop),
verify(acer),
verify(black_color),
verify(rom_500GB),
verify(amd_radeon_graphics).

acer :-
verify(laptop),
verify(acer),
verify(black_color),
verify(rom_500GB),
verify(intel_hd_Graphics).

acer :-
verify(laptop),
verify(acer),
verify(black_color),
verify(rom_1TB),
verify(amd_radeon_graphics).

acer :-
verify(laptop),
verify(acer),
verify(black_color),
verify(rom_1TB),
verify(intel_hd_Graphics).




