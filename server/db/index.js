import { text } from "express";
import { Pool } from "pg";

const pool = new Pool();

export const query = (text, params, callback) => {
  return pool.query(text, params, callback);
};
