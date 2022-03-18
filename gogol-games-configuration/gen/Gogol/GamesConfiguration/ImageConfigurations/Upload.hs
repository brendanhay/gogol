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
-- Module      : Gogol.GamesConfiguration.ImageConfigurations.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an image for a resource with the given ID and image type.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.imageConfigurations.upload@.
module Gogol.GamesConfiguration.ImageConfigurations.Upload
  ( -- * Resource
    GamesConfigurationImageConfigurationsUploadResource,

    -- ** Constructing a Request
    newGamesConfigurationImageConfigurationsUpload,
    GamesConfigurationImageConfigurationsUpload,
  )
where

import Gogol.GamesConfiguration.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesConfiguration.imageConfigurations.upload@ method which the
-- 'GamesConfigurationImageConfigurationsUpload' request conforms to.
type GamesConfigurationImageConfigurationsUploadResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "images"
    Core.:> Core.Capture "resourceId" Core.Text
    Core.:> "imageType"
    Core.:> Core.Capture
              "imageType"
              ImageConfigurationsUploadImageType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ImageConfiguration
    Core.:<|> "upload"
      Core.:> "games"
      Core.:> "v1configuration"
      Core.:> "images"
      Core.:> Core.Capture "resourceId" Core.Text
      Core.:> "imageType"
      Core.:> Core.Capture
                "imageType"
                ImageConfigurationsUploadImageType
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post '[Core.JSON] ImageConfiguration

-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ 'newGamesConfigurationImageConfigurationsUpload' smart constructor.
data GamesConfigurationImageConfigurationsUpload = GamesConfigurationImageConfigurationsUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Selects which image in a resource for this method.
    imageType :: ImageConfigurationsUploadImageType,
    -- | The ID of the resource used by this method.
    resourceId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationImageConfigurationsUpload' with the minimum fields required to make a request.
newGamesConfigurationImageConfigurationsUpload ::
  -- |  Selects which image in a resource for this method. See 'imageType'.
  ImageConfigurationsUploadImageType ->
  -- |  The ID of the resource used by this method. See 'resourceId'.
  Core.Text ->
  GamesConfigurationImageConfigurationsUpload
newGamesConfigurationImageConfigurationsUpload imageType resourceId =
  GamesConfigurationImageConfigurationsUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      imageType = imageType,
      resourceId = resourceId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationImageConfigurationsUpload
  where
  type
    Rs GamesConfigurationImageConfigurationsUpload =
      ImageConfiguration
  type
    Scopes
      GamesConfigurationImageConfigurationsUpload =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationImageConfigurationsUpload {..} =
      go
        resourceId
        imageType
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesConfigurationService
      where
        go Core.:<|> _ =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesConfigurationImageConfigurationsUploadResource
            )
            Core.mempty

instance
  Core.GoogleRequest
    ( Core.MediaUpload
        GamesConfigurationImageConfigurationsUpload
    )
  where
  type
    Rs
      ( Core.MediaUpload
          GamesConfigurationImageConfigurationsUpload
      ) =
      ImageConfiguration
  type
    Scopes
      ( Core.MediaUpload
          GamesConfigurationImageConfigurationsUpload
      ) =
      Core.Scopes
        GamesConfigurationImageConfigurationsUpload
  requestClient
    ( Core.MediaUpload
        GamesConfigurationImageConfigurationsUpload {..}
        body
      ) =
      go
        resourceId
        imageType
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.AltMedia)
        body
        gamesConfigurationService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesConfigurationImageConfigurationsUploadResource
            )
            Core.mempty
