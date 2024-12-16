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
-- Module      : Gogol.Games.Accesstokens.GeneratePlayGroupingApiToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a Play Grouping API token for the PGS user identified by the attached credential.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.accesstokens.generatePlayGroupingApiToken@.
module Gogol.Games.Accesstokens.GeneratePlayGroupingApiToken
    (
    -- * Resource
      GamesAccesstokensGeneratePlayGroupingApiTokenResource

    -- ** Constructing a Request
    , GamesAccesstokensGeneratePlayGroupingApiToken (..)
    , newGamesAccesstokensGeneratePlayGroupingApiToken
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.accesstokens.generatePlayGroupingApiToken@ method which the
-- 'GamesAccesstokensGeneratePlayGroupingApiToken' request conforms to.
type GamesAccesstokensGeneratePlayGroupingApiTokenResource
     =
     "games" Core.:>
       "v1" Core.:>
         "accesstokens" Core.:>
           "generatePlayGroupingApiToken" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "packageName" Core.Text Core.:>
                     Core.QueryParam "persona" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON]
                               GeneratePlayGroupingApiTokenResponse

-- | Generates a Play Grouping API token for the PGS user identified by the attached credential.
--
-- /See:/ 'newGamesAccesstokensGeneratePlayGroupingApiToken' smart constructor.
data GamesAccesstokensGeneratePlayGroupingApiToken = GamesAccesstokensGeneratePlayGroupingApiToken
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. App package name to generate the token for (e.g. com.example.mygame).
    , packageName :: (Core.Maybe Core.Text)
      -- | Required. Persona to associate with the token. Persona is a developer-provided stable identifier of the user. Must be deterministically generated (e.g. as a one-way hash) from the user account ID and user profile ID (if the app has the concept), according to the developer\'s own user identity system.
    , persona :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAccesstokensGeneratePlayGroupingApiToken' with the minimum fields required to make a request.
newGamesAccesstokensGeneratePlayGroupingApiToken 
    ::  GamesAccesstokensGeneratePlayGroupingApiToken
newGamesAccesstokensGeneratePlayGroupingApiToken =
  GamesAccesstokensGeneratePlayGroupingApiToken
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = Core.Nothing
    , persona = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesAccesstokensGeneratePlayGroupingApiToken
         where
        type Rs GamesAccesstokensGeneratePlayGroupingApiToken
             = GeneratePlayGroupingApiTokenResponse
        type Scopes
               GamesAccesstokensGeneratePlayGroupingApiToken
             = '[Games'FullControl]
        requestClient
          GamesAccesstokensGeneratePlayGroupingApiToken{..}
          = go xgafv accessToken callback packageName persona
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GamesAccesstokensGeneratePlayGroupingApiTokenResource)
                      Core.mempty

