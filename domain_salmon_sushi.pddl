(define (domain salmon_sushi-domain)
 (:requirements :strips :typing :negative-preconditions :action-costs)
 (:types location)
 (:predicates (at_ ?loc - location) (has_plate ?loc - location) (plate_in_hand) (fish_in_hand) (placed_in) (has_pot ?loc - location) (pot_in_hand) (cooked) (chopped) (has_rice ?loc - location) (has_fish ?loc - location) (has_nori ?loc - location) (rice_in_plate) (fish_in_plate) (nori_in_plate) (can_cook ?loc - location) (can_chop ?loc - location) (has_customer ?loc - location) (served) (distance1 ?l_from - location ?l_to - location) (distance2 ?l_from - location ?l_to - location) (distance3 ?l_from - location ?l_to - location) (distance4 ?l_from - location ?l_to - location) (distance5 ?l_from - location ?l_to - location) (distance6 ?l_from - location ?l_to - location) (distance7 ?l_from - location ?l_to - location) (distance8 ?l_from - location ?l_to - location) (distance9 ?l_from - location ?l_to - location) (distance10 ?l_from - location ?l_to - location) (distance11 ?l_from - location ?l_to - location) (distance12 ?l_from - location ?l_to - location))
 (:functions (total-cost))
 (:action take_pot
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (has_pot ?loc) (not (pot_in_hand)) (not (plate_in_hand)))
  :effect (and (pot_in_hand) (increase (total-cost) 0)))
 (:action take_plate
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (has_plate ?loc) (not (plate_in_hand)) (not (pot_in_hand)))
  :effect (and (plate_in_hand) (increase (total-cost) 0)))
 (:action collect_rice
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (has_rice ?loc) (pot_in_hand) (not (plate_in_hand)) (not (cooked)) (not (placed_in)))
  :effect (and (placed_in) (increase (total-cost) 0)))
 (:action cook_rice
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (can_cook ?loc) (placed_in) (pot_in_hand) (not (plate_in_hand)))
  :effect (and (cooked) (not (pot_in_hand)) (increase (total-cost) 0)))
 (:action collect_fish
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (has_fish ?loc) (not (plate_in_hand)) (not (pot_in_hand)) (not (chopped)) (not (fish_in_hand)))
  :effect (and (fish_in_hand) (increase (total-cost) 0)))
 (:action chop_fish
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (can_chop ?loc) (not (plate_in_hand)) (not (pot_in_hand)) (fish_in_hand))
  :effect (and (chopped) (increase (total-cost) 0)))
 (:action collect_processed_rice
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (can_cook ?loc) (plate_in_hand) (not (pot_in_hand)) (cooked) (not (rice_in_plate)))
  :effect (and (rice_in_plate) (increase (total-cost) 0)))
 (:action collect_processed_fish
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (can_chop ?loc) (plate_in_hand) (not (pot_in_hand)) (chopped) (not (fish_in_plate)))
  :effect (and (fish_in_plate) (increase (total-cost) 0)))
 (:action collect_nori
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (has_nori ?loc) (plate_in_hand) (not (pot_in_hand)) (not (nori_in_plate)))
  :effect (and (nori_in_plate) (increase (total-cost) 0)))
 (:action serve
  :parameters ( ?loc - location)
  :precondition (and (at_ ?loc) (has_customer ?loc) (rice_in_plate) (fish_in_plate) (nori_in_plate) (not (served)))
  :effect (and (served) (increase (total-cost) 0)))
 (:action travel_distance_1
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance1 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 37849)))
 (:action travel_distance_2
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance2 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 28849)))
 (:action travel_distance_3
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance3 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 20566)))
 (:action travel_distance_4
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance4 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 33849)))
 (:action travel_distance_5
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance5 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 22566)))
 (:action travel_distance_6
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance6 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 22566)))
 (:action travel_distance_7
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance7 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 26566)))
 (:action travel_distance_8
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance8 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 19560)))
 (:action travel_distance_9
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance9 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 34849)))
 (:action travel_distance_10
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance10 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 41849)))
 (:action travel_distance_11
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance11 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 58130)))
 (:action travel_distance_12
  :parameters ( ?l_from - location ?l_to - location)
  :precondition (and (at_ ?l_from) (not (at_ ?l_to)) (distance12 ?l_from ?l_to))
  :effect (and (not (at_ ?l_from)) (at_ ?l_to) (increase (total-cost) 77410)))
)
