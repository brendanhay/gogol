module Gen.AST where

import Control.Monad.Except
import Control.Monad.State.Strict
import Gen.AST.Flatten (flatten)
import Gen.AST.Render (render)
import Gen.AST.Solve (solve)
import Gen.Types

runAST :: Version -> Service (Fix Schema) -> Either Error Library
runAST v s = evalState (runExceptT go) (initial s)
  where
    go = do
      gs <- flatten s
      (api, ds) <- render =<< solve gs

      pure $! Library v gs api ds
