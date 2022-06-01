export default function SendResponse(res, code, data, err) {
  res.status(code).send({
    data: data,
    error: err
  })
}