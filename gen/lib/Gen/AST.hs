module Gen.AST where

import qualified Control.Monad.Except as Except
import qualified Control.Monad.State.Strict as State
import Gen.AST.Flatten (flatten)
import Gen.AST.Render (render)
import Gen.AST.Solve (solve)
import Gen.Prelude
import Gen.Types

runAST :: Version -> Service (Fix Schema) -> Either Text Library
runAST v s = State.evalState (Except.runExceptT go) (initial s)
  where
    go = do
      gs <- flatten s
      (api, ds) <- render =<< solve gs

      pure $! Library v gs api ds
