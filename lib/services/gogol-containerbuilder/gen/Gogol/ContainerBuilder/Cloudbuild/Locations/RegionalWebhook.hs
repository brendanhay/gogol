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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Locations.RegionalWebhook
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveRegionalWebhook is called when the API receives a regional GitHub webhook.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.locations.regionalWebhook@.
module Gogol.ContainerBuilder.Cloudbuild.Locations.RegionalWebhook
  ( -- * Resource
    CloudbuildLocationsRegionalWebhookResource,

    -- ** Constructing a Request
    CloudbuildLocationsRegionalWebhook (..),
    newCloudbuildLocationsRegionalWebhook,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.locations.regionalWebhook@ method which the
-- 'CloudbuildLocationsRegionalWebhook' request conforms to.
type CloudbuildLocationsRegionalWebhookResource =
  "v1"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "regionalWebhook"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "webhookKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] Empty

-- | ReceiveRegionalWebhook is called when the API receives a regional GitHub webhook.
--
-- /See:/ 'newCloudbuildLocationsRegionalWebhook' smart constructor.
data CloudbuildLocationsRegionalWebhook = CloudbuildLocationsRegionalWebhook
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The location where the webhook should be sent.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: HttpBody,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | For GitHub Enterprise webhooks, this key is used to associate the webhook request with the GitHubEnterpriseConfig to use for validation.
    webhookKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildLocationsRegionalWebhook' with the minimum fields required to make a request.
newCloudbuildLocationsRegionalWebhook ::
  -- |  Required. The location where the webhook should be sent. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  CloudbuildLocationsRegionalWebhook
newCloudbuildLocationsRegionalWebhook location payload =
  CloudbuildLocationsRegionalWebhook
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = location,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      webhookKey = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildLocationsRegionalWebhook
  where
  type Rs CloudbuildLocationsRegionalWebhook = Empty
  type Scopes CloudbuildLocationsRegionalWebhook = '[]
  requestClient CloudbuildLocationsRegionalWebhook {..} =
    go
      location
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      webhookKey
      (Core.Just Core.AltJSON)
      payload
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudbuildLocationsRegionalWebhookResource
          )
          Core.mempty
