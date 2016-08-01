MathPedia
==============

<img src="http://d13iam57dikkc8.cloudfront.net/assets/logo-8dd182218aa08462ba3fb42dbb1d291a.png" alt="MathPedia Logo" width="210" align="right" />
**[MathPedia][1]** is an online platform for hosting & joining Mathematics competitions (think [Codeforces][2] for Mathematical Olympiads).

Originally built at [Vietnam Hackathon 2014][3] as a community-crafted library of practice problems, it is later pivoted into a Codeforces-like site, with a **specific solution** for grading **written proofs**.

The project has been abandoned since 2015. Nevertheless, it had taught me a lot of lessons.

**Table of Contents**

- [The Story](#the-story)
- [The Challenges](#the-challenges)
- [The Features](#the-features)
- [Technical details](#technical-details)
- [Failure and Lessons](#failure-and-lessons)


## The Story

By late-summer 2014, in an effort to help students better prepared for future Olympiads, me and my friends planned to select, revise and re-organize all the problems from [Mathscope][4], Vietnam's largest forum in Mathematical Olympiad.

Instead of compiling a heavy book, we decided to build a Wikipedia-like site, where registered members can continuously contribute to the wealth of the site. The vision is a library that covers various topics in Mathematics, each with 7 carefully crafted problems: _hints_, _illustrated solution_ and _lessons learned_, organized into a self-learning path. We named it **MathPedia**.

With the idea further developed, we shared it on Mathscope to get early adopters, planning to take Hackathon 2014 as a chance to build the site. It was optimistic then, with 70 registrants (including 3 famous teachers), and many supports.

Nevertheless, [our hack][5] was a big failure, being commented as having no real innovation, badly designed and aimed at the wrong problem: _"Nobody wants to sit at the computer and learn in a book way. The problem of online learning is the lack of motivation, you have to get your users sit down and learn. The current design isn't so interesting."_. 

As we thought the feedback makes sense, and the site is reported for being too slow, we decided to pivoted and solve the **Problem of Motivation** instead. However, as schoolyear approached, I have to work mostly on my own: **re-design the site**, **being full-stack** and **optimize the performance**.

So I stepped back and secretly building the site (in the dark =))).

## The Challenges

Believing **self-proof** is the key motivator that drives every community, I decided to pivot MathPedia into a **competitive platform** with a **strong honor system**. Moreover, if each contested problem is carefully crafted and organized, the archive can also be used as a library. 

Sounds similar to Codeforces? Not at all:

1. How to grade written solutions, they aren't I/O problems?
2. Since no one is paid, what are the incentives for contributing quality problems?
3. What is a strong honor system, exactly? How do we rank users?

_Challenge #1_: Peer-grading system. But: **How to mobilize people into graders? How to avoid grading errors?**

_Challenge #2_: Community-recognition. But is it enough?

_Challenge #3_: A combination of elo-based scoring and contributions money.

Here is the overall plan:

1. Each registered user is assigned with a **default elo-score**, and a **default amount of mCoins** (virtual money).
2. If contributing, either by being an author (submit a problem) or being a grader (grade solutions), **mCoins increases**.
3. If joining a competition, you have to spend your virtual money, **mCoins decreases**.
4. By joining a competition, your **elo-score may increase or decrease**, similar to the **elo-ranking for multiplayer games**.
5. You are recognized with **Titles** based on your **elo-score** (similar to Codeforces).
6. Each problem have to be **approved in quality** before its author can earn mCoins. **Approved problems** will then be considered for **future contests**.
7. All gradings will be **public for error-reports**, which is solved by the **intervention of moderators**.

In summary, MathPedia looks like an economy, where you have to provide goods (quality problems) or services (grading solutions) in order to earn money (mCoins). On the other side, you have to spend money in order to get knowledge (joining contests) and be socially recognized (if you're good). Moreover, the Government (moderators) is in charge of ensuring goods' quality (approving problems) and solving conflicts (errors in grading).

## The Features

1. Managing USERs and ROLEs
2. Sharing, approving and publishing PROBLEMs
3. Submitting, grading and error-resolving SOLUTIONs
4. Hosting and joining CONTESTs
5. ELO-based ranking algorithm
6. A customized TITLEs system and RANKINGs table

_Feature #1 and #2_: These features are finished. Others are abandoned.

_Feature #4 and #6_: Due to a specific reason, we'll only have _"one-topic"_ competitions. In other words, we provide _"Combinatorics Round 6"_ or _"Algebra Round 10"_ only, not a _"Maths Round 12" competition_. Therefore:

- Rankings table are divided into sub-fields: **Algebra**, **Combinatorics**, **Geometry** and **Number Theory**.
- A user can have many titles: **Combinatorics Grandmaster**, **Algebra Specialist**, etc.


## Technical Details

1. **Back-end**: Ruby on Rails framework. Learnt at [Rails Tutorial][6].
2. **Elo-based ranking algorithm**: Planned to use [this gem][7].
3. **Front-end**: HTML, CSS & jQuery. Copy and edited the source code of [Laravel-Tricks][8].
4. **Editor**: Inspired by [Medium][9]. Used [this gem][10].
5. **Hosting**: Puma web-server + Cedar-14. Refered to [Heroku DevCenter][11].
6. **Database**: PosgreSQL. Refered to [this blog][12].
7. **Caching**: Memcachier. Learn basic techniques at [Rails 4.1 Performance][13].
8. **Static assets**: Amazon S3 for storing, Cloudfront for serving. Refered to [this blog][14].
9. **Developer tools**: NewRelic for performance, PaperTrail for logging, CodeClimate for clean code.

[The original domain](http://www.mathpedia.vn/) was bought by one of the early adopters, which is now expired.

## Failure and Lessons



**Thanks for Reading!**


[1]: http://mathpedia.herokuapp.com/
[2]: http://codeforces.com/
[3]: http://hackathonvietnam2014hcmc.devpost.com/
[4]: http://mathscope.org/
[5]: http://hackathonvietnam2014hcmc.devpost.com/submissions/25683-mathpedia
[6]: http://rails-4-0.railstutorial.org/book
[7]: https://github.com/mxhold/elo_rating
[8]: http://laravel-tricks.com/
[9]: https://medium.com/
[10]: https://github.com/yabwe/medium-editor
[11]: https://devcenter.heroku.com/
[12]: http://linuxrails.blogspot.com.au/2012/06/postgresql-setup-for-rails-development.html
[13]: https://www.pluralsight.com/courses/rails-4-1-performance-fundamentals
[14]: http://www.ubazu.com/2014/02/25/configure-ruby-rails-paperclip-amazon-s3-cloudfront-images-files/
