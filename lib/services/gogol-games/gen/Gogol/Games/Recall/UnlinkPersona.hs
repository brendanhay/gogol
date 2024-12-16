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
-- Module      : Gogol.Games.Recall.UnlinkPersona
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a Recall token linking the PGS Player principal identified by the Recall session and an in-game account identified either by the \'persona\' or by the token value.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.recall.unlinkPersona@.
module Gogol.Games.Recall.UnlinkPersona
    (
    -- * Resource
      GamesRecallUnlinkPersonaResource

    -- ** Constructing a Request
    , GamesRecallUnlinkPersona (..)
    , newGamesRecallUnlinkPersona
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.recall.unlinkPersona@ method which the
-- 'GamesRecallUnlinkPersona' request conforms to.
type GamesRecallUnlinkPersonaResource =
     "games" Core.:>
       "v1" Core.:>
         "recall:unlinkPersona" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] UnlinkPersonaRequest
                         Core.:> Core.Post '[Core.JSON] UnlinkPersonaResponse

-- | Delete a Recall token linking the PGS Player principal identified by the Recall session and an in-game account identified either by the \'persona\' or by the token value.
--
-- /See:/ 'newGamesRecallUnlinkPersona' smart constructor.
data GamesRecallUnlinkPersona = GamesRecallUnlinkPersona
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: UnlinkPersonaRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesRecallUnlinkPersona' with the minimum fields required to make a request.
newGamesRecallUnlinkPersona 
    ::  UnlinkPersonaRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> GamesRecallUnlinkPersona
newGamesRecallUnlinkPersona payload =
  GamesRecallUnlinkPersona
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesRecallUnlinkPersona
         where
        type Rs GamesRecallUnlinkPersona =
             UnlinkPersonaResponse
        type Scopes GamesRecallUnlinkPersona =
             '[Androidpublisher'FullControl]
        requestClient GamesRecallUnlinkPersona{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesRecallUnlinkPersonaResource)
                      Core.mempty

