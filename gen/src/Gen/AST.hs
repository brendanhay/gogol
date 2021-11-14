-- |
-- Module      : Gen.AST
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.AST where

import qualified Control.Monad.Except as Except
import qualified Control.Monad.State.Strict as State
import Gen.AST.Flatten (flatten)
import Gen.AST.Render (render)
import Gen.AST.Solve (solve)
import Gen.Prelude
import Gen.Types

runAST :: Versions -> Service (Fix Schema) -> Either Error Library
runAST v s = State.evalState (Except.runExceptT go) (initial s)
  where
    go = do
      gs <- flatten s
      (api, ds) <- render =<< solve gs
      pure $! Library v gs api ds
