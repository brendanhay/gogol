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
-- Module      : Gogol.Games.Players.GetScopedPlayerIds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves scoped player identifiers for currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.players.getScopedPlayerIds@.
module Gogol.Games.Players.GetScopedPlayerIds
    (
    -- * Resource
      GamesPlayersGetScopedPlayerIdsResource

    -- ** Constructing a Request
    , GamesPlayersGetScopedPlayerIds (..)
    , newGamesPlayersGetScopedPlayerIds
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.players.getScopedPlayerIds@ method which the
-- 'GamesPlayersGetScopedPlayerIds' request conforms to.
type GamesPlayersGetScopedPlayerIdsResource =
     "games" Core.:>
       "v1" Core.:>
         "players" Core.:>
           "me" Core.:>
             "scopedIds" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ScopedPlayerIds

-- | Retrieves scoped player identifiers for currently authenticated user.
--
-- /See:/ 'newGamesPlayersGetScopedPlayerIds' smart constructor.
data GamesPlayersGetScopedPlayerIds = GamesPlayersGetScopedPlayerIds
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

-- | Creates a value of 'GamesPlayersGetScopedPlayerIds' with the minimum fields required to make a request.
newGamesPlayersGetScopedPlayerIds 
    ::  GamesPlayersGetScopedPlayerIds
newGamesPlayersGetScopedPlayerIds =
  GamesPlayersGetScopedPlayerIds
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesPlayersGetScopedPlayerIds
         where
        type Rs GamesPlayersGetScopedPlayerIds =
             ScopedPlayerIds
        type Scopes GamesPlayersGetScopedPlayerIds =
             '[Games'FullControl]
        requestClient GamesPlayersGetScopedPlayerIds{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesPlayersGetScopedPlayerIdsResource)
                      Core.mempty

