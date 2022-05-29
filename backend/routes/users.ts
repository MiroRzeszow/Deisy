var express = require('express');

import {NextFunction, Request, Response, Router} from "express";

var router : Router  = express.Router();

/* GET users listing. */
router.get('/', function(req: Request, res: Response, next:NextFunction) {
  let d=31;
  res.send('respond with a resource 1'+d);
});

module.exports = router;
