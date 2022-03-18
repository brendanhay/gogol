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
-- Module      : Network.Google.Compute.GlobalForwardingRules.SetLabels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on the specified resource. To learn more about labels, read the Labeling resources documentation.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalForwardingRules.setLabels@.
module Network.Google.Compute.GlobalForwardingRules.SetLabels
  ( -- * Resource
    ComputeGlobalForwardingRulesSetLabelsResource,

    -- ** Constructing a Request
    newComputeGlobalForwardingRulesSetLabels,
    ComputeGlobalForwardingRulesSetLabels,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.globalForwardingRules.setLabels@ method which the
-- 'ComputeGlobalForwardingRulesSetLabels' request conforms to.
type ComputeGlobalForwardingRulesSetLabelsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "forwardingRules"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "setLabels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GlobalSetLabelsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the labels on the specified resource. To learn more about labels, read the Labeling resources documentation.
--
-- /See:/ 'newComputeGlobalForwardingRulesSetLabels' smart constructor.
data ComputeGlobalForwardingRulesSetLabels = ComputeGlobalForwardingRulesSetLabels
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GlobalSetLabelsRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name or id of the resource for this request.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalForwardingRulesSetLabels' with the minimum fields required to make a request.
newComputeGlobalForwardingRulesSetLabels ::
  -- |  Multipart request metadata. See 'payload'.
  GlobalSetLabelsRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeGlobalForwardingRulesSetLabels
newComputeGlobalForwardingRulesSetLabels payload project resource =
  ComputeGlobalForwardingRulesSetLabels
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeGlobalForwardingRulesSetLabels
  where
  type
    Rs ComputeGlobalForwardingRulesSetLabels =
      Operation
  type
    Scopes ComputeGlobalForwardingRulesSetLabels =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient
    ComputeGlobalForwardingRulesSetLabels {..} =
      go
        project
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeGlobalForwardingRulesSetLabelsResource
            )
            Core.mempty
