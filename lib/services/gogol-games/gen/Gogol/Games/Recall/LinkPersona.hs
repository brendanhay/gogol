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
-- Module      : Gogol.Games.Recall.LinkPersona
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associate the PGS Player principal encoded in the provided recall session id with an in-game account
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.recall.linkPersona@.
module Gogol.Games.Recall.LinkPersona
    (
    -- * Resource
      GamesRecallLinkPersonaResource

    -- ** Constructing a Request
    , GamesRecallLinkPersona (..)
    , newGamesRecallLinkPersona
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.recall.linkPersona@ method which the
-- 'GamesRecallLinkPersona' request conforms to.
type GamesRecallLinkPersonaResource =
     "games" Core.:>
       "v1" Core.:>
         "recall:linkPersona" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] LinkPersonaRequest Core.:>
                         Core.Post '[Core.JSON] LinkPersonaResponse

-- | Associate the PGS Player principal encoded in the provided recall session id with an in-game account
--
-- /See:/ 'newGamesRecallLinkPersona' smart constructor.
data GamesRecallLinkPersona = GamesRecallLinkPersona
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: LinkPersonaRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesRecallLinkPersona' with the minimum fields required to make a request.
newGamesRecallLinkPersona 
    ::  LinkPersonaRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> GamesRecallLinkPersona
newGamesRecallLinkPersona payload =
  GamesRecallLinkPersona
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesRecallLinkPersona
         where
        type Rs GamesRecallLinkPersona = LinkPersonaResponse
        type Scopes GamesRecallLinkPersona =
             '[Androidpublisher'FullControl]
        requestClient GamesRecallLinkPersona{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesRecallLinkPersonaResource)
                      Core.mempty

