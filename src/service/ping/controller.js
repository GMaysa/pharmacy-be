import express from "express";
import SendResponse from "../../util/SendResponse.js";

const PingRouter = express.Router()

PingRouter.get('', function (req, res) {
  SendResponse(res, 200, 'meow', null)
})

export default PingRouter