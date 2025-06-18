------------------------------ MODULE elevator ------------------------------

EXTENDS Naturals, TLC

CONSTANTS Floors 

ASSUME Floors = 5

VARIABLES currFloor, elevatorCall, direction

Directions == {"up", "down", "idle"}

ValidFloor(f) == f \in 1..Floors

Init ==
    /\ currFloor \in 1..Floors
    /\ elevatorCall = 0 \* No one has called the elevator
    /\ direction = "idle"

CallElevator(f) ==
    /\ ValidFloor(f)
    /\ elevatorCall' = f
    /\ UNCHANGED currFloor
    /\ UNCHANGED direction

MoveElevator ==
    /\ elevatorCall # 0
    /\ IF elevatorCall > currFloor THEN direction' = "up"
       ELSE IF elevatorCall < currFloor THEN direction' = "down"
       ELSE direction' = "idle"
    /\ UNCHANGED << currFloor, elevatorCall >>

Next ==
    \/ \E f \in 1..Floors: CallElevator(f)
    \/ MoveElevator
    


=============================================================================
\* Modification History
\* Last modified Wed Jun 18 15:51:21 WIB 2025 by Marcellius
\* Created Wed Jun 18 15:19:26 WIB 2025 by Marcellius
