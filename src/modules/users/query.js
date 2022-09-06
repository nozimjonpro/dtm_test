const GETUSERS = `
   select * from users where status='active' and case 
                                                     when $1 > 0 then user_id = $1
                                                     else true
                                                 end
`;

const POSTUSER = `
   insert into users(username, email, password, gender) values($1, $2, crypt($3, gen_salt('bf')), $4) returning *
`;

const PUTUSER = `
   update users set username = $1, email = $2, password = crypt($3, gen_salt('bf')), gender = $4 where user_id = $5 and status='active' returning *
`;

const DELETEUSER = `
 delete from users where user_id = $1 and status = 'active' returning *
`

module.exports = {
  GETUSERS,
  POSTUSER,
  PUTUSER,
  DELETEUSER
};
