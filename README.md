# PaversRE

A framework for depicting structure inside regular languages.

## Concepts.

Regular language is a class of language. And a language is a set of strings of symbols that can be defined by some way. Thus a regular language is a set of strings of symbols that can be defined by regular expression and/or finite automaton.

There are three kinds of finite automata, Deterministic Finite Automata (DFA), Nondeterministic Finite Automata (NFA), and Nondeterministic Finite Automata with epsilon transition (ε-NFA). Impressively, the expressive power of these three Finite Automata is exactly the same, the language they all can express is exaclty regular language.

Moreover these three kinds of Finite Automata is equivalent to Regular Expression in terms of expressive power. Therefore there exist transitions between all these four things. And those transitions were revealed in this framework as well.

## Definition

### Deterministic Finite Automata (DFA)

A Deterministic Finite Automaton consists of:

1. A finite set of states, denoted as Q.

2. A finite set of input symbols.

3. A transition function that takes as arguments a state and an input symbol and returns a state. 

4. A start state, one of state in Q.

5. A set of final or accepting states F, which is subset of Q.


### Nondeterministic Finite Automata (NFA)

A Nondeterministic Finite Automaton consists of:

1. A finite set of states, denoted as Q.

2. A finite set of input symbols.

3. A transition function that takes as arguments a state and an input symbol and returns a subset of Q. 

4. A start state, one of state in Q.

5. A set of final or accepting states F, which is subset of Q.


### Nondeterministic Finite Automata with epsilon transition (ε-NFA)

A Nondeterministic Finite Automata with epsilon transition (ε-NFA) is NFA with epislon transition, which consists of:

1. A finite set of states, denoted as Q.

2. A finite set of input symbols.

3. A transition function that takes as arguments a state and an input symbol or no input symbol and returns a subset of Q. In other words, a transition function in ε-NFA is enrich a transition function in NFA with allowing return a subset of Q without consuming any input.

4. A start state, one of state in Q.

5. A set of final or accepting states F, which is subset of Q.


### Regular Expression

Regular expression is an inductive construction.

The basic part consists of:

1. The constant ε and ∅ are regular expression, denoting the languages {ε} and ∅, respecitively. That is, `L(ε) = {ε}` and `L(∅) = ∅`.

2. If a is any symbol, then a is a regular expression, denoting the language {a}. That is `L(a) = {a}`.

3. A variable representing a language, such as L.


The inductive part consists of:

1. If E and F are regular expression, then E + F is a regular expression, denoting the union of L(E) and L(F). That is `L(E+F) = L(E) ⋃ L(F)`.

2. If E and F are regular expression, then EF is a regular expression, denoting the concatenation of L(E) and L(F). That is `L(EF) = L(E)L(F)`.

3. If E is regular expression, then E* is a regular expression, denoting the closure of L(E) and L(F). That is `L(E*) = L(E)*`.

4. If E is regular expression, then (E) is a regular expression, denoting the same language of E. That is `L((E)) = L(E)`.


## Inside the Code

Inside this framework, I use swift to model those definitions and isomorphic relations among them.


## Notice

The above definition is from [Introduction to Automata Theory, Languages, and Computation (3rd Edition)](https://www.amazon.com/Introduction-Automata-Theory-Languages-Computation/dp/B009NGAL1A/ref=sr_1_6?ie=UTF8&qid=1532403827&sr=8-6&keywords=introduction+to+automata+theory%2C+languages%2C+and+computation)


