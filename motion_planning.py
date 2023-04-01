from unified_planning.shortcuts import *
from unified_planning.model.metrics import *
from unified_planning.io import PDDLWriter

# For some reason we get a warning that Optimal Fast Downward can't solve this type of problem (it can),
# we'll just ignore the warning:
import warnings
warnings.simplefilter("ignore", UserWarning)

import unified_planning as up

def Get_Total_Cost(plan, mac):
    total_cost = 0
    for a in plan.actions:
        total_cost += mac[a.action]._content.payload
    return total_cost

def main():
    pot = UserType("pot")
    plate = UserType("plate")
    board = UserType("board")
    ingredient = UserType("ingredient")
    location = UserType("location")

    # Creating predicates
    At = Fluent("At", BoolType(), loc=location)
    On = Fluent("On", BoolType(), ing=ingredient, pla=plate)
    Placed_in = Fluent("Placed_in", BoolType(), ing=ingredient, pot=pot)
    Placed_on = Fluent("Placed_on", BoolType(), ing=ingredient, boa=board)
    Processed = Fluent("Processed", BoolType(), ing=ingredient)
    Distance3 = Fluent("Distance3", BoolType(), l_from=location,l_to=location)
    Distance5 = Fluent("Distance5", BoolType(), l_from=location,l_to=location)
    Distance6 = Fluent("Distance6", BoolType(), l_from=location,l_to=location)
    Distance7 = Fluent("Distance7", BoolType(), l_from=location,l_to=location)
    Distance8 = Fluent("Distance8", BoolType(), l_from=location,l_to=location)

