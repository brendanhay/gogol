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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.GithubDotComWebhook.Receive
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveGitHubDotComWebhook is called when the API receives a github.com webhook.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.githubDotComWebhook.receive@.
module Gogol.ContainerBuilder.Cloudbuild.GithubDotComWebhook.Receive
  ( -- * Resource
    CloudbuildGithubDotComWebhookReceiveResource,

    -- ** Constructing a Request
    CloudbuildGithubDotComWebhookReceive (..),
    newCloudbuildGithubDotComWebhookReceive,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.githubDotComWebhook.receive@ method which the
-- 'CloudbuildGithubDotComWebhookReceive' request conforms to.
type CloudbuildGithubDotComWebhookReceiveResource =
  "v1"
    Core.:> "githubDotComWebhook:receive"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "webhookKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] Empty

-- | ReceiveGitHubDotComWebhook is called when the API receives a github.com webhook.
--
-- /See:/ 'newCloudbuildGithubDotComWebhookReceive' smart constructor.
data CloudbuildGithubDotComWebhookReceive = CloudbuildGithubDotComWebhookReceive
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

-- | Creates a value of 'CloudbuildGithubDotComWebhookReceive' with the minimum fields required to make a request.
newCloudbuildGithubDotComWebhookReceive ::
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  CloudbuildGithubDotComWebhookReceive
newCloudbuildGithubDotComWebhookReceive payload =
  CloudbuildGithubDotComWebhookReceive
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      webhookKey = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildGithubDotComWebhookReceive
  where
  type Rs CloudbuildGithubDotComWebhookReceive = Empty
  type
    Scopes CloudbuildGithubDotComWebhookReceive =
      '[]
  requestClient
    CloudbuildGithubDotComWebhookReceive {..} =
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
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildGithubDotComWebhookReceiveResource
            )
            Core.mempty
