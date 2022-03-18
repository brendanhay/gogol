{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Games.Applications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the application with the given ID. If the requested application is not available for the specified @platformType@, the returned response will not include any instance data.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.get@.
module Network.Google.Games.Applications.Get
  ( -- * Resource
    GamesApplicationsGetResource,

    -- ** Constructing a Request
    newGamesApplicationsGet,
    GamesApplicationsGet,
  )
where

import Network.Google.Games.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @games.applications.get@ method which the
-- 'GamesApplicationsGet' request conforms to.
type GamesApplicationsGetResource =
  "games"
    Core.:> "v1"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam
              "platformType"
              ApplicationsGetPlatformType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Application

-- | Retrieves the metadata of the application with the given ID. If the requested application is not available for the specified @platformType@, the returned response will not include any instance data.
--
-- /See:/ 'newGamesApplicationsGet' smart constructor.
data GamesApplicationsGet = GamesApplicationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | Restrict application details returned to the specific platform.
    platformType :: (Core.Maybe ApplicationsGetPlatformType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesApplicationsGet' with the minimum fields required to make a request.
newGamesApplicationsGet ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  GamesApplicationsGet
newGamesApplicationsGet applicationId =
  GamesApplicationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationId = applicationId,
      callback = Core.Nothing,
      language = Core.Nothing,
      platformType = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesApplicationsGet where
  type Rs GamesApplicationsGet = Application
  type
    Scopes GamesApplicationsGet =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesApplicationsGet {..} =
    go
      applicationId
      xgafv
      accessToken
      callback
      language
      platformType
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesApplicationsGetResource
          )
          Core.mempty
