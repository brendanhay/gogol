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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Webhook
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveWebhook is called when the API receives a GitHub webhook.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.webhook@.
module Gogol.ContainerBuilder.Cloudbuild.Webhook
  ( -- * Resource
    CloudbuildWebhookResource,

    -- ** Constructing a Request
    CloudbuildWebhook (..),
    newCloudbuildWebhook,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.webhook@ method which the
-- 'CloudbuildWebhook' request conforms to.
type CloudbuildWebhookResource =
  "v1"
    Core.:> "webhook"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "webhookKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] Empty

-- | ReceiveWebhook is called when the API receives a GitHub webhook.
--
-- /See:/ 'newCloudbuildWebhook' smart constructor.
data CloudbuildWebhook = CloudbuildWebhook
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
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

-- | Creates a value of 'CloudbuildWebhook' with the minimum fields required to make a request.
newCloudbuildWebhook ::
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  CloudbuildWebhook
newCloudbuildWebhook payload =
  CloudbuildWebhook
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      webhookKey = Core.Nothing
    }

instance Core.GoogleRequest CloudbuildWebhook where
  type Rs CloudbuildWebhook = Empty
  type Scopes CloudbuildWebhook = '[]
  requestClient CloudbuildWebhook {..} =
    go
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
          (Core.Proxy :: Core.Proxy CloudbuildWebhookResource)
          Core.mempty
