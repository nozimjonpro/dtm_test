const model = require("./model.js");

const GET = async (req, res) => {
try {
    const users = await model.GET(req.params);
    if (!users) {
      res.status(404).json({
        status: 404,
        message: "error",
        data: null,
      });
    }
  
    res.status(200).json({
      status: 200,
      message: "ok",
      data: users,
    });
} catch (error) {
    console.error(error)
}
};

const POST = async (req, res) => {
try {
    const newUser = await model.POST(req.body);
    if (!newUser) {
      res.status(401).json({
        status: 401,
        message: "wrong registeration",
        data: null,
      });
    }
  
    res.status(201).json({
      status: 201,
      message: "new user added",
      data: newUser,
    });
} catch (error) {
    console.error(error)
}
};

const PUT = async (req, res) => {
try {
    const updatedUser = await model.PUT(req.body, req.params);
    if (!updatedUser) {
      res.status(404).json({
        status: 404,
        message: "wrong edition",
        data: null,
      });
    }
  
    res.status(201).json({
      status: 201,
      message: " user updated",
      data: updatedUser,
    });
} catch (error) {
    console.error(error)
}
};

const DELETE = async (req, res) => {
    try {
        const deletedUser = await model.DELETE(req.params);
        if (!deletedUser) {
          res.status(404).json({
            status: 404,
            message: " wrong attempt",
            data: null,
          });
        }
      
        res.status(201).json({
          status: 201,
          message: " user deleted",
          data: deletedUser,
        });
    } catch (error) {
        console.error(error)
    }
    };

module.exports = {
  GET,
  POST,
  PUT,
  DELETE
};
