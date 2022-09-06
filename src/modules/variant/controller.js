const model = require("./model.js");

const GET = async (req, res) => {
  try {
    const variants = await model.GET();
    console.log(variants);
    if (!variants) {
      res.status(404).json({
        status: 404,
        message: "error",
        data: null,
      });
    }

    res.status(200).json({
      status: 200,
      message: "ok",
      data: variants,
    });
  } catch (error) {
    console.error(error);
  }
};

module.exports = {
    GET
}
