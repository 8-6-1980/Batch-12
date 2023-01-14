list<account> accList =[select id, name from Account];
ContactQueableapex cq = new ContactQueableapex(accList);
id jobId = system.enqueueJob(cq);