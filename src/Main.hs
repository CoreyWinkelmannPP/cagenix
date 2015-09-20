{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty

main :: IO ()
main = do
  scotty 8080 $ do
    get "/" $ do
      text "hello!"
    get "/hello" $ do
      text "hello world!"
