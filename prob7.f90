Program problem7
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Logical, Allocatable :: lprime(:)
Integer :: iprime(1:10000000)
nEND = 10**8
Allocate (lprime(2:nEND))
lprime(3:nEND:2) = .TRUE.
lprime(2:nEND:2) = .FALSE.
iprime(1) = 2
nprimes = 1
Do i = 3, nEND/2, 2
  If ( lprime(i) ) Then
    lprime(2*i:nEND:i) = .FALSE.
    nprimes = nprimes+1
    iprime(nprimes) = i
    !Print *, 'Prime',nprimes,'is',i
  End If
End Do
Do i = nEND/2+1, nEND, 2
  If ( lprime(i) ) Then
    nprimes = nprimes+1
    iprime(nprimes) = i
    !Print *, 'Prime',nprimes,'is',i
  End If
End Do
Print *, 'Prime 6 is',iprime(6)
Print *, 'Prime 10001 is',iprime(10001)
End Program problem7
