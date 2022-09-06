


const GETSUBJECT = `
   select * from subjects where status='active' and case 
                                                     when $1 > 0 then subject_id = $1
                                                     else true
                                                 end;
`;

const GETSUBJECTMAIN = `
select * from subjects where status='active'
`

const POSTSUBJECT = `
    select * from subjects where status = 'active' and subject_name != $1
`


module.exports = {GETSUBJECT, POSTSUBJECT, GETSUBJECTMAIN}