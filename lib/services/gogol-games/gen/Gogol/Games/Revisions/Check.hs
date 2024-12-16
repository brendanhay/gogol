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
-- Module      : Gogol.Games.Revisions.Check
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether the games client is out of date.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.revisions.check@.
module Gogol.Games.Revisions.Check
    (
    -- * Resource
      GamesRevisionsCheckResource

    -- ** Constructing a Request
    , GamesRevisionsCheck (..)
    , newGamesRevisionsCheck
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.revisions.check@ method which the
-- 'GamesRevisionsCheck' request conforms to.
type GamesRevisionsCheckResource =
     "games" Core.:>
       "v1" Core.:>
         "revisions" Core.:>
           "check" Core.:>
             Core.QueryParam "clientRevision" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'newGamesRevisionsCheck' smart constructor.
data GamesRevisionsCheck = GamesRevisionsCheck
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The revision of the client SDK used by your application. Format: @[PLATFORM_TYPE]:[VERSION_NUMBER]@. Possible values of @PLATFORM_TYPE@ are: * @ANDROID@ - Client is running the Android SDK. * @IOS@ - Client is running the iOS SDK. * @WEB_APP@ - Client is running as a Web App.
    , clientRevision :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesRevisionsCheck' with the minimum fields required to make a request.
newGamesRevisionsCheck 
    ::  Core.Text
       -- ^  Required. The revision of the client SDK used by your application. Format: @[PLATFORM_TYPE]:[VERSION_NUMBER]@. Possible values of @PLATFORM_TYPE@ are: * @ANDROID@ - Client is running the Android SDK. * @IOS@ - Client is running the iOS SDK. * @WEB_APP@ - Client is running as a Web App. See 'clientRevision'.
    -> GamesRevisionsCheck
newGamesRevisionsCheck clientRevision =
  GamesRevisionsCheck
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clientRevision = clientRevision
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesRevisionsCheck where
        type Rs GamesRevisionsCheck = RevisionCheckResponse
        type Scopes GamesRevisionsCheck =
             '[Games'FullControl]
        requestClient GamesRevisionsCheck{..}
          = go (Core.Just clientRevision) xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesRevisionsCheckResource)
                      Core.mempty

