import express from 'express';

const app = express();
const PORT = process.env.PORT || 8000
app.get('/', (req, res) => {
  res.json({message:'Hello Im inside a container!'});
});
app.get('/healthcheck' , (req, res)=>{
  res.status(200).json({ message: "Everything is good here 👀" });
})
app.listen( PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});