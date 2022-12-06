Candidates.companyName =' Softinnovas';
system.debug( ' start candidtaes count ' +Candidates.countCandidates);

Candidates c1 = new Candidates();
Candidates.countCandidates++;
c1.name = 'Jerry';
c1.gender = 'male';
c1.printCandidates();

Candidates c2 = new Candidates();
Candidates.countCandidates++;
c2.name = ' Elaine';
c2.gender ='female';
c2.printCandidates();

Candidates.companyName = ' Vandelay Industriess';

Candidates c3 = new Candidates();
Candidates.countCandidates++;
system.debug('end candidates count ' +Candidates.countCandidates);
c3.name = 'George';
c3.gender = 'Male';
c3.printCandidates();
 c1.printCandidates();