
const GETQUESTIONS = `

select q.*, json_agg(v.*) from questions as q 
inner join variants as v on v.status = 'active' and v.question_id = q.question_id
group by q.question_id;


 
`

module.exports = {
    GETQUESTIONS
}