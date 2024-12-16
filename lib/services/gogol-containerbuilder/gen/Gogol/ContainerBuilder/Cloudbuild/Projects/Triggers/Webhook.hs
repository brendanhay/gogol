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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Webhook
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook request targeted at a specific trigger.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.webhook@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Webhook
    (
    -- * Resource
      CloudbuildProjectsTriggersWebhookResource

    -- ** Constructing a Request
    , CloudbuildProjectsTriggersWebhook (..)
    , newCloudbuildProjectsTriggersWebhook
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.triggers.webhook@ method which the
-- 'CloudbuildProjectsTriggersWebhook' request conforms to.
type CloudbuildProjectsTriggersWebhookResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "triggers" Core.:>
             Core.CaptureMode "trigger" "webhook" Core.Text
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "name" Core.Text Core.:>
                       Core.QueryParam "secret" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] HttpBody Core.:>
                                 Core.Post '[Core.JSON]
                                   ReceiveTriggerWebhookResponse

-- | ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook request targeted at a specific trigger.
--
-- /See:/ 'newCloudbuildProjectsTriggersWebhook' smart constructor.
data CloudbuildProjectsTriggersWebhook = CloudbuildProjectsTriggersWebhook
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @ReceiveTriggerWebhook@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    , name :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: HttpBody
      -- | Project in which the specified trigger lives
    , projectId :: Core.Text
      -- | Secret token used for authorization if an OAuth token isn\'t provided.
    , secret :: (Core.Maybe Core.Text)
      -- | Name of the trigger to run the payload against
    , trigger :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsTriggersWebhook' with the minimum fields required to make a request.
newCloudbuildProjectsTriggersWebhook 
    ::  HttpBody
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project in which the specified trigger lives See 'projectId'.
    -> Core.Text
       -- ^  Name of the trigger to run the payload against See 'trigger'.
    -> CloudbuildProjectsTriggersWebhook
newCloudbuildProjectsTriggersWebhook payload projectId trigger =
  CloudbuildProjectsTriggersWebhook
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = Core.Nothing
    , payload = payload
    , projectId = projectId
    , secret = Core.Nothing
    , trigger = trigger
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsTriggersWebhook
         where
        type Rs CloudbuildProjectsTriggersWebhook =
             ReceiveTriggerWebhookResponse
        type Scopes CloudbuildProjectsTriggersWebhook = '[]
        requestClient CloudbuildProjectsTriggersWebhook{..}
          = go projectId trigger xgafv accessToken callback
              name
              secret
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudbuildProjectsTriggersWebhookResource)
                      Core.mempty

