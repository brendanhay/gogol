{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppState.States.Clear
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears (sets to empty) the data for the passed key if and only if the passed version matches the currently stored version. This method results in a conflict error on version mismatch.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.clear@.
module Gogol.AppState.States.Clear
    (
    -- * Resource
      AppStateStatesClearResource

    -- ** Constructing a Request
    , AppStateStatesClear (..)
    , newAppStateStatesClear
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppState.Types

-- | A resource alias for @appstate.states.clear@ method which the
-- 'AppStateStatesClear' request conforms to.
type AppStateStatesClearResource =
     "appstate" Core.:>
       "v1" Core.:>
         "states" Core.:>
           Core.Capture "stateKey" Core.Int32 Core.:>
             "clear" Core.:>
               Core.QueryParam "currentDataVersion" Core.Text
                 Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Post '[Core.JSON] WriteResult

-- | Clears (sets to empty) the data for the passed key if and only if the passed version matches the currently stored version. This method results in a conflict error on version mismatch.
--
-- /See:/ 'newAppStateStatesClear' smart constructor.
data AppStateStatesClear = AppStateStatesClear
    {
      -- | The version of the data to be cleared. Version strings are returned by the server.
      currentDataVersion :: (Core.Maybe Core.Text)
      -- | The key for the data to be retrieved.
    , stateKey :: Core.Int32
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppStateStatesClear' with the minimum fields required to make a request.
newAppStateStatesClear 
    ::  Core.Int32
       -- ^  The key for the data to be retrieved. See 'stateKey'.
    -> AppStateStatesClear
newAppStateStatesClear stateKey =
  AppStateStatesClear {currentDataVersion = Core.Nothing, stateKey = stateKey}

instance Core.GoogleRequest AppStateStatesClear where
        type Rs AppStateStatesClear = WriteResult
        type Scopes AppStateStatesClear =
             '[Appstate'FullControl]
        requestClient AppStateStatesClear{..}
          = go stateKey currentDataVersion
              (Core.Just Core.AltJSON)
              appStateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppStateStatesClearResource)
                      Core.mempty

