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
-- Module      : Gogol.GamesManagement.Events.ResetAll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on all events for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetAll@.
module Gogol.GamesManagement.Events.ResetAll
    (
    -- * Resource
      GamesManagementEventsResetAllResource

    -- ** Constructing a Request
    , GamesManagementEventsResetAll (..)
    , newGamesManagementEventsResetAll
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesManagement.Types

-- | A resource alias for @gamesManagement.events.resetAll@ method which the
-- 'GamesManagementEventsResetAll' request conforms to.
type GamesManagementEventsResetAllResource =
     "games" Core.:>
       "v1management" Core.:>
         "events" Core.:>
           "reset" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Post '[Core.JSON] ()

-- | Resets all player progress on all events for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.
--
-- /See:/ 'newGamesManagementEventsResetAll' smart constructor.
data GamesManagementEventsResetAll = GamesManagementEventsResetAll
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementEventsResetAll' with the minimum fields required to make a request.
newGamesManagementEventsResetAll 
    ::  GamesManagementEventsResetAll
newGamesManagementEventsResetAll =
  GamesManagementEventsResetAll
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesManagementEventsResetAll
         where
        type Rs GamesManagementEventsResetAll = ()
        type Scopes GamesManagementEventsResetAll =
             '[Games'FullControl]
        requestClient GamesManagementEventsResetAll{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesManagementEventsResetAllResource)
                      Core.mempty

