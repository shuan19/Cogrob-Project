(define (problem fried_salmon_sushi-problem)
 (:domain fried_salmon_sushi-domain)
 (:objects
   rice_ingredient_box fish_ingredient_box nori_ingredient_box plate_rack stove cutting_board customer - location
 )
 (:init (at_ plate_rack) (has_plate plate_rack) (has_pot plate_rack) (has_rice rice_ingredient_box) (has_fish fish_ingredient_box) (has_nori nori_ingredient_box) (can_cook stove) (can_chop cutting_board) (has_customer customer) (distance1 rice_ingredient_box stove) (distance1 stove rice_ingredient_box) (distance2 rice_ingredient_box plate_rack) (distance2 plate_rack rice_ingredient_box) (distance3 plate_rack stove) (distance3 stove plate_rack) (distance4 plate_rack nori_ingredient_box) (distance4 nori_ingredient_box plate_rack) (distance5 plate_rack cutting_board) (distance5 cutting_board plate_rack) (distance6 stove fish_ingredient_box) (distance6 fish_ingredient_box stove) (distance7 stove cutting_board) (distance7 cutting_board stove) (distance8 fish_ingredient_box cutting_board) (distance8 cutting_board fish_ingredient_box) (distance9 cutting_board nori_ingredient_box) (distance9 nori_ingredient_box cutting_board) (distance10 nori_ingredient_box customer) (distance10 customer nori_ingredient_box) (distance11 cutting_board customer) (distance11 customer cutting_board) (distance12 stove customer) (distance12 customer stove) (= (total-cost) 0))
 (:goal (and (at_ customer) (served)))
 (:metric minimize (total-cost))
)
