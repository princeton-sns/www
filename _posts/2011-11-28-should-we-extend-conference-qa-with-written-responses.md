---
title: "Should We Extend Conference Q&A With Written Responses?"
authors:
  - wlloyd
categories:
  - Conferences
tags:
  - COPS
  - "Q&A"
  - SOSP
layout: post
---

The CS community recently discussed extending the Q&A session that occurs after
each talk at a conference into a more formal written Q&A.  More specifically,
this was raised during the business meeting at SOSP and the proposal was to
publish the results in SIGOPS OSR.  The idea was this written extension to Q&A
could really get to the bottom of the issues raised, and it wouldn’t let
speakers avoid questions by saying, “Let’s take that offline.”  There was some
push back against this with arguments like “most questions are just
misunderstandings” and “that will add a lot of pointless work for
speakers/authors.”

In this post I’ll examine the questions asked at the end of my SOSP talk on
COPS.  We’ll look at a summary of each of the questions asked and my written
response, and then hopefully we’ll be able to conclude if a written Q&A is a
good idea or not.  The full transcript of each question with comments and
clarification added in square brackets is toggable with the transcript links.


## Question 1

⇓ Transcript

Question Summary:  The question could be interpreted two ways, so we’ll look at
both.

Interpretation A: “What happens if a client is partitioned from the datacenter
they are accessing?” (Note: Much of the feedback and questions after the talk
were questions like A, so I think this is what Hussam meant.)

Written Answer: The clients of our system are the web servers collocated in the
datacenter with the storage cluster, so they won’t be partitioned.  What you
are really asking about are not the direct clients of the storage system, but
the human who is a client of a web browser who is a client of a web server who
is a client of the storage system.  Our system doesn’t provide consistency
directly for those clients three levels away, but we think it’s an important
and interesting problem, and we’re actively thinking about it.

Interpretation B: “What happens if a datacenter that is replicating data you
depend on is partitioned?” (This is what I interpreted Hussam to mean at the
time.)

Written Answer: No operations will ever block, but your new put operations
won’t show up in other datacenters until their dependencies have shown up in
that datacenter.  So there is no blocking, but this comes at the cost of not
guaranteeing your updates show up everywhere immediately.

## Question 2

⇓ Transcript

Question Summary: What are the differences between snapshot isolation and
causal+ consistency?

Question Answer: Causal+ consistency deals with single key put operations and
single or multi key get operations.  Snapshot isolation is stronger that
causal+ because it deals with general transactions that can include many
different put and get operations.  In addition, snapshot isolation ensures
there are never conflicting transactions in the system (avoids write-write
conflicts). While causal+ doesn’t have the notion of a transaction, but does
allow and then resolves conflicting writes to the same key (embraces single key
write-write conflicts).

## Question 3

⇓ Transcript

Question Summary:  Can you compare COPS and Walter? (Walter was the system
described in the previous talk, one of whose authors asked this question.)

Question Answer: The two systems provide complementary approaches.  COPS
guarantees successful low latency operations at the cost of not providing
general transactions.  Walter guarantees conflict-free general transaction at
the cost of allowing transactions to abort and (sometimes) having to do
wide-area locking via two phase commit, which is directly incompatible with low
latency.

## Question 4

⇓ Transcript

Question Summary: Why not use vector clocks instead of explicit dependencies to
capture causality?

Written Answer: We use explicit dependencies because they are compatible with
distributed verification, whereas vector clocks are not. They would need a
centralized serialization point in each datacenter to ensure that updates from
other datacenters are applied in the correct causal order.

## Question 5

⇓ Transcript

Question Summary: How do you deal with different types of failures?

Written Answer: That’s not where our innovation is, so we just used existing
techniques to deal with failures (currently, chain replication).



## Discussion

In reviewing the questions, it seem pretty clear that almost all questions stem
from confusion surrounding parts of the system that were gone over quickly or
skipped in the talk.  These are good questions to have immediately after a
talk, other people in the audience are probably confused about the same things.
However, the questions only make sense with the context from either the talk or
the paper and almost all of them would be clarified by reading the paper.

So let’s break down the potential audience for the extended answers:

1. OSR readers who didn’t see or don’t remember the talk and didn’t read the
   paper.  The questions and answer wouldn’t make any sense to these people.

2. OSR readers who saw the talk, didn’t read the paper, and remember the talk
   over a month later.  Based on how much I remember from talks I saw a month ago,
   I don’t think this will be a very populous group.

3. OSR readers who read the paper. The paper should cover everything that was
   asked about, so the extra written answers should be unnecessary.  (E.g.,
   Section 2/Fig 1 answer question 1, Related Work answers question 3)

4. People who watched the talk on youtube.  This audience is relatively large,
   the video of the talk has 224 view after being up for about a week.  They
   have exactly the same context as IRL audience members, and I know they have
   some of the same questions.  For instance, Todd Hoff, who wrote a post about
   COPS on his high scalability blog, also thought of question 5: why not use
   vector clocks?  Given I misinterpreted the question at the time, it’s good to
   have a correct answer here!

So while the audience for written answers in OSR would be tiny, I think there
is an audience for more detailed answers to questions: youtube viewers!  I’m
now all for written answers to questions, but I think that a blog, like this,
is the appropriate venue for publishing them and not OSR!
