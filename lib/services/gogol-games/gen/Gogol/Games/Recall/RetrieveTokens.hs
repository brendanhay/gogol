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
-- Module      : Gogol.Games.Recall.RetrieveTokens
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve all Recall tokens associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have active PGS Player profile.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.recall.retrieveTokens@.
module Gogol.Games.Recall.RetrieveTokens
    (
    -- * Resource
      GamesRecallRetrieveTokensResource

    -- ** Constructing a Request
    , GamesRecallRetrieveTokens (..)
    , newGamesRecallRetrieveTokens
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.recall.retrieveTokens@ method which the
-- 'GamesRecallRetrieveTokens' request conforms to.
type GamesRecallRetrieveTokensResource =
     "games" Core.:>
       "v1" Core.:>
         "recall" Core.:>
           "tokens" Core.:>
             Core.Capture "sessionId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] RetrievePlayerTokensResponse

-- | Retrieve all Recall tokens associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have active PGS Player profile.
--
-- /See:/ 'newGamesRecallRetrieveTokens' smart constructor.
data GamesRecallRetrieveTokens = GamesRecallRetrieveTokens
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player \/ Google user and application.
    , sessionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesRecallRetrieveTokens' with the minimum fields required to make a request.
newGamesRecallRetrieveTokens 
    ::  Core.Text
       -- ^  Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player \/ Google user and application. See 'sessionId'.
    -> GamesRecallRetrieveTokens
newGamesRecallRetrieveTokens sessionId =
  GamesRecallRetrieveTokens
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , sessionId = sessionId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesRecallRetrieveTokens
         where
        type Rs GamesRecallRetrieveTokens =
             RetrievePlayerTokensResponse
        type Scopes GamesRecallRetrieveTokens =
             '[Androidpublisher'FullControl]
        requestClient GamesRecallRetrieveTokens{..}
          = go sessionId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesRecallRetrieveTokensResource)
                      Core.mempty

