---- MODULE MC ----
EXTENDS elevator, TLC

\* CONSTANT definitions @modelParameterConstants:0Floors
const_17502353851825000 == 
5
----

\* INIT definition @modelBehaviorNoSpec:0
init_17502353851826000 ==
FALSE/\currFloor = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_17502353851827000 ==
FALSE/\currFloor' = currFloor
----
=============================================================================
\* Modification History
\* Created Wed Jun 18 15:29:45 WIB 2025 by Marcellius
