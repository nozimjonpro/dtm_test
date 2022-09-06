

const GETFACULTY = `
 
select u.*, json_agg(f.*) as faculties from universities as u 
left join faculties as f on f.status = 'active' and u.university_id = f.university_id
group by u.university_id;

 `
//  where status='active' and case 
//    when $1 > 0 then university_id = $1
//    else true
//    end;

const GETSUBJECT = `
  select * from subjects where status = 'active';
`

const POSTFCULTY = `
select u.*, json_agg(f.*) as faculties from universities as u 
inner join faculties as f on f.status = 'active' and f.university_id = u.university_id and f.subject1_id = $1
and f.subject2_id = $2
group by u.university_id;

`


// select u.*, json_agg(f.*) from universities as u 
// inner join faculties as f on f.status = 'active' and f.university_id = u.university_id and f.subject1_id = 1
// and f.subject2_id = 2
// group by u.university_id;


 module.exports = {GETFACULTY, POSTFCULTY, GETSUBJECT}