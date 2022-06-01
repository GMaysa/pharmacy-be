import express from "express"
import * as dotenv from "dotenv"
import CorsMiddleware from "./middleware/CorsMiddleware.js"
import PingRouter from "./service/ping/controller.js"

dotenv.config()
const app = express()

const SERVER_PORT = process.env.SERVER_PORT
const WHITELISTED_URL = process.env.WHITELISTED_URL.split(',')

app.use(CorsMiddleware(WHITELISTED_URL))
app.use(express.json())
app.options('*', CorsMiddleware(WHITELISTED_URL))

app.use('/ping', PingRouter)

app.listen(SERVER_PORT, () => {
  console.log(`[INFO] Server start on port ${SERVER_PORT}`);
})

export default app