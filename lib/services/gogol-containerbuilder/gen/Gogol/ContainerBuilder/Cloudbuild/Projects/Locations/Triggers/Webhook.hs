{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Webhook
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook request targeted at a specific trigger.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.webhook@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Webhook
    (
    -- * Resource
      CloudbuildProjectsLocationsTriggersWebhookResource

    -- ** Constructing a Request
    , newCloudbuildProjectsLocationsTriggersWebhook
    , CloudbuildProjectsLocationsTriggersWebhook
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.triggers.webhook@ method which the
-- 'CloudbuildProjectsLocationsTriggersWebhook' request conforms to.
type CloudbuildProjectsLocationsTriggersWebhookResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "webhook" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "projectId" Core.Text Core.:>
                 Core.QueryParam "secret" Core.Text Core.:>
                   Core.QueryParam "trigger" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] HttpBody Core.:>
                             Core.Post '[Core.JSON]
                               ReceiveTriggerWebhookResponse

-- | ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook request targeted at a specific trigger.
--
-- /See:/ 'newCloudbuildProjectsLocationsTriggersWebhook' smart constructor.
data CloudbuildProjectsLocationsTriggersWebhook = CloudbuildProjectsLocationsTriggersWebhook
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @ReceiveTriggerWebhook@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: HttpBody
      -- | Project in which the specified trigger lives
    , projectId :: (Core.Maybe Core.Text)
      -- | Secret token used for authorization if an OAuth token isn\'t provided.
    , secret :: (Core.Maybe Core.Text)
      -- | Name of the trigger to run the payload against
    , trigger :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsTriggersWebhook' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsTriggersWebhook 
    ::  Core.Text
       -- ^  The name of the @ReceiveTriggerWebhook@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@ See 'name'.
    -> HttpBody
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsTriggersWebhook
newCloudbuildProjectsLocationsTriggersWebhook name payload =
  CloudbuildProjectsLocationsTriggersWebhook
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , projectId = Core.Nothing
    , secret = Core.Nothing
    , trigger = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsTriggersWebhook
         where
        type Rs CloudbuildProjectsLocationsTriggersWebhook =
             ReceiveTriggerWebhookResponse
        type Scopes
               CloudbuildProjectsLocationsTriggersWebhook
             = '[]
        requestClient
          CloudbuildProjectsLocationsTriggersWebhook{..}
          = go name xgafv accessToken callback projectId secret
              trigger
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsTriggersWebhookResource)
                      Core.mempty

