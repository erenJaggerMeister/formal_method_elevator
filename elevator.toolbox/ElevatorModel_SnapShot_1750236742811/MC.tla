---- MODULE MC ----
EXTENDS elevator, TLC

\* CONSTANT definitions @modelParameterConstants:0Floors
const_175023674178549000 == 
5
----

\* INIT definition @modelBehaviorNoSpec:0
init_175023674178550000 ==
FALSE/\currFloor = 0
----
\* NEXT definition @modelBehaviorNoSpec:0
next_175023674178551000 ==
FALSE/\currFloor' = currFloor
----
=============================================================================
\* Modification History
\* Created Wed Jun 18 15:52:21 WIB 2025 by Marcellius
