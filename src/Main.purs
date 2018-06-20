module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  let x = 1 + 1
  log "Hello sailor!"
