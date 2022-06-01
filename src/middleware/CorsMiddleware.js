import cors from "cors"

export default function CorsMiddleware(whiteListedUrls) {
  return function (req, res, next) {
    cors({
      origin: whiteListedUrls,
      methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
      allowedHeaders: ['Content-Type', 'Authorization']
    })

    const origin = req.get('Origin')

    console.log(`[CorsMiddleware] Receive request from ${origin} ${whiteListedUrls.includes(origin)}`);
    if (req.method != "OPTIONS") {
      next()
      return
    }

    console.log('safe flight');
  }
}