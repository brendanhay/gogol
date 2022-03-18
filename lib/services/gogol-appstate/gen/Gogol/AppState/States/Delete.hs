{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppState.States.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a key and the data associated with it. The key is removed and no longer counts against the key quota. Note that since this method is not safe in the face of concurrent modifications, it should only be used for development and testing purposes. Invoking this method in shipping code can result in data loss and data corruption.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.delete@.
module Gogol.AppState.States.Delete
    (
    -- * Resource
      AppStateStatesDeleteResource

    -- ** Constructing a Request
    , newAppStateStatesDelete
    , AppStateStatesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppState.Types

-- | A resource alias for @appstate.states.delete@ method which the
-- 'AppStateStatesDelete' request conforms to.
type AppStateStatesDeleteResource =
     "appstate" Core.:>
       "v1" Core.:>
         "states" Core.:>
           Core.Capture "stateKey" Core.Int32 Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Delete '[Core.JSON] ()

-- | Deletes a key and the data associated with it. The key is removed and no longer counts against the key quota. Note that since this method is not safe in the face of concurrent modifications, it should only be used for development and testing purposes. Invoking this method in shipping code can result in data loss and data corruption.
--
-- /See:/ 'newAppStateStatesDelete' smart constructor.
newtype AppStateStatesDelete = AppStateStatesDelete
    {
      -- | The key for the data to be retrieved.
      stateKey :: Core.Int32
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppStateStatesDelete' with the minimum fields required to make a request.
newAppStateStatesDelete 
    ::  Core.Int32
       -- ^  The key for the data to be retrieved. See 'stateKey'.
    -> AppStateStatesDelete
newAppStateStatesDelete stateKey = AppStateStatesDelete {stateKey = stateKey}

instance Core.GoogleRequest AppStateStatesDelete
         where
        type Rs AppStateStatesDelete = ()
        type Scopes AppStateStatesDelete =
             '["https://www.googleapis.com/auth/appstate"]
        requestClient AppStateStatesDelete{..}
          = go stateKey (Core.Just Core.AltJSON)
              appStateService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppStateStatesDeleteResource)
                      Core.mempty

