---- MODULE MC ----
EXTENDS elevator, TLC

\* CONSTANT definitions @modelParameterConstants:0Floors
const_175023545552114000 == 
5
----

\* INIT definition @modelBehaviorNoSpec:0
init_175023545552215000 ==
FALSE/\currFloor = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_175023545552216000 ==
FALSE/\currFloor' = currFloor
----
=============================================================================
\* Modification History
\* Created Wed Jun 18 15:30:55 WIB 2025 by Marcellius
