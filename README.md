                                                                      PARAMETERIZED ALU 

This repository contains a modular, coverage-driven testbench architecture in SystemVerilog for functional verification of parameterized ALU.

                                                           System verilog testbench Architechure 

<img width="777" height="328" alt="image" src="https://github.com/user-attachments/assets/91fe6faf-118b-42ea-ad0d-80ccde928558" />

                                                              Breakdown of the Architechure 

1️⃣ Program : 
      It’s where your test sequences start.
      Controls the overall simulation.

2️⃣ Environment
      Contains all verification components needed to test the DUT.

The main components:

1. Agent (or multiple agents, if the DUT has multiple interfaces).

2. Scoreboard

Environment integrates these components, configures them, and controls their interactions.

3️⃣ Agent
      Responsible for driving and monitoring transactions on a particular interface of the DUT.

1. Generator: Creates randomized or directed stimulus (transactions).

2. BFM (Bus Functional Model): Converts transactions into pin-level signals to drive the DUT. Also called Driver.

3. Monitor: Observes DUT outputs and converts them into transactions.

4. Coverage: Collects coverage information (functional coverage, code coverage).

Communication between these components is often done using mailboxes.

4️⃣ Scoreboard
        Receives the transactions (from Monitor) and checks DUT correctness.
        Compares expected vs actual results and reports mismatches.

5️⃣ Mailbox
        Used for communication between testbench components.
There are three mailbox in this design - 
       1. Generator to BFM 
       2. Monitor to coverage 
       3. Monitor to scoreboard 

6️⃣ Interface
       A SystemVerilog construct used to bundle related signals.
       Testbench components (like BFM and Monitor) interact with the DUT through these interfaces.

