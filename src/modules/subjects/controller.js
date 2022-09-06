const model = require("./model.js");

const GET = async (req, res) => {
try {
    const subjects = await model.GET(req.params);
    if (!subjects) {
      res.status(404).json({
        status: 404,
        message: "error",
        data: null,
      });
    }
  
    res.status(200).json({
      status: 200,
      message: "ok",
      data: subjects,
    });
} catch (error) {
    console.error(error)
}
};

const POST = async(req, res) =>{
  try {
    const subjects = await model.GETMAIN();

    const subject = (subjects.find(i => i.subject_name == req.body?.blog1));

    let filteredSubjects = await model.POST(req.body);

    filteredSubjects = filteredSubjects.filter(a => a.subject_status == subject.subject_status)
   

    if (!filteredSubjects) {
      res.status(404).json({
        status: 404,
        message: "error",
        data: null,
      });
    }
  
    res.status(200).json({
      status: 200,
      message: "ok",
      data: filteredSubjects,
    });

  } catch (error) {
    console.error(error)
  }
}

module.exports = {
  GET, POST
}
