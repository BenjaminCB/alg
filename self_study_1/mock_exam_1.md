# Question 1
## 1.1
$lg(2^n)=nlg(2)$ and is the fastest growing, thus b
## 1.2
$lg(2^n)=nlg(2)$ and is the fastest growing, thus b and d
## 1.3
$n^3$ is the fastest growing term, thus b, e
## 1.4
a, d
# Question 2
## 2.1
$f(n)=n^4=\Omega(n^{log_2(1)+\gamma})$ for $\gamma<4$, therefore c is correct
## 2.2
c and d should be correct
## 2.3
a, $f(n)=n^{1.9}=O(n^{log_3(9)-\gamma})$ we can choose a constant $<0.1$ and can solve with case 1 so b is also correct
## 2.4
$\Theta(n^2)$ so b, c, d
# Question 3
## 3.1
a should be correct
## 3.2
Should be c
## 3.3
a) Line 1 takes constant time. Line 2 Is O(n) line 3 is also O(n) line 4 is constant time. Line 5 is $O(n^2)$ and line 6 is constant. Thus $T(n)=c_1+O(n) \cdot O(n) + O(n) + O(n) \cdot c_2=2 \cdot O(n^2) + O(n)=O(n^2)$. This is also going to be the asymptotic running time.

b) First we fill n elements then $n-1$ then $n-2$ all the way down to $n-(n-2)=n-n+2$ which should be $O(n^2)$ then we pop $n^2$ times, thus a must be the answer.
# Question 4
## a
**Loop invariant:** At the beginning of each loop the subarray $[1..i-1]$ contains the fibonacci sequence except the first 1, and is therefore also offset by 1.

**Init:** the loop starts it $i=3$ thus we should have that $F=[1,2]$ which from line $2$ and line $3$ we can see that it does.

**Continuation:** On line $5$ we calculate the next fibonacci number since $i-2$ and $i-1$ are correct the new fibonacci number is also correct. Thus the subarray $[1..i]$ holds the fibonacci numbers, when we increment $i$ the loop invariant is upheld.

**Termination:** At the end $i=n+2$ substituting with in we get that $F[n+2-1]=F[n+1]$ we is the correct fibo number since we are offset by 1.

## b
It should be $\Theta(n)$ since line 1-3 take constant time. line 4 and 5 take linear time assuming array look ups take constant time. line 6 is also constant.

## c
We can describe the reccurence we the following

$T(n) = 1$ for $n<2$

$T(n) = T(n-1)+T(n-2)$ for $n \geq 2$

**Base cases:** for $n=1$ and $n=2$. $1<c \cdot 2^1=c \cdot 2$ and $1<c \cdot 2^2=4c$.

**Induction:** We will find that $T(n) \leq 2^n = O(2^n)$.

$T(n)=T(n-1)+T(n-2)$

$T(n)=2^{n-1} + 2^{n-2}$ (by hypothesis)

$T(n) \leq 2^{n-1}+2^{n-1}$ (since $2^n$ is a growing function)

$T(n) \leq 2 \cdot 2^{n-1}=2^n=O(2^n)$
