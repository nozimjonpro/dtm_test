const model = require("./model.js");

const GET = async (req, res) => {
  try {
    const faculties = await model.GET();
    console.log(faculties);
    if (!faculties) {
      res.status(404).json({
        status: 404,
        message: "error",
        data: null,
      });
    }

    res.status(200).json({
      status: 200,
      message: "ok",
      data: faculties,
    });
  } catch (error) {
    console.error(error);
  }
};

const POST = async (req, res) => {
  try {

    const subjects = await model.GETSUBJECTS()

    const {blog1, blog2} = req.body;

   const blog1Id = subjects.find(i => i.subject_name == blog1)
   
   const blog2Id = subjects.find(i => i.subject_name == blog2)

   const faculties = await model.POST(blog1Id?.subject_id, blog2Id?.subject_id)

   if (!faculties) {
    res.status(404).json({
      status: 404,
      message: "error",
      data: null,
    });
  }

  console.log(faculties);
  res.status(200).json({
    status: 200,
    message: "ok",
    data: faculties,
  });
   
  } catch (error) {
    console.error(error);
  }
};

module.exports = {
  GET,
  POST,
};
