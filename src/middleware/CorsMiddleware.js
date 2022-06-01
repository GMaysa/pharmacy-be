import cors from "cors"

export default function CorsMiddleware(whiteListedUrls) {
  return function (req, res, next) {
    cors({
      origin: whiteListedUrls,
      methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
      allowedHeaders: ['Content-Type', 'Authorization']
    })

    if (req.method != "OPTIONS") {
      next()
      return
    }

    console.log('safe flight');
  }
}