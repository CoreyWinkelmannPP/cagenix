{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty

main :: IO ()
main = do
  scotty 3000 $ do
    get "/" $ do
      text "hello!"
    get "/hello" $ do
      text "hello world!"
