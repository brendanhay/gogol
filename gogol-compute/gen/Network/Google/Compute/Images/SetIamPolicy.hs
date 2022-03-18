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
-- Module      : Network.Google.Compute.Images.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.images.setIamPolicy@.
module Network.Google.Compute.Images.SetIamPolicy
  ( -- * Resource
    ComputeImagesSetIamPolicyResource,

    -- ** Constructing a Request
    newComputeImagesSetIamPolicy,
    ComputeImagesSetIamPolicy,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.images.setIamPolicy@ method which the
-- 'ComputeImagesSetIamPolicy' request conforms to.
type ComputeImagesSetIamPolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "images"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "setIamPolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GlobalSetPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ 'newComputeImagesSetIamPolicy' smart constructor.
data ComputeImagesSetIamPolicy = ComputeImagesSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GlobalSetPolicyRequest,
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

-- | Creates a value of 'ComputeImagesSetIamPolicy' with the minimum fields required to make a request.
newComputeImagesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GlobalSetPolicyRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeImagesSetIamPolicy
newComputeImagesSetIamPolicy payload project resource =
  ComputeImagesSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeImagesSetIamPolicy where
  type Rs ComputeImagesSetIamPolicy = Policy
  type
    Scopes ComputeImagesSetIamPolicy =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputeImagesSetIamPolicy {..} =
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
              Core.Proxy ComputeImagesSetIamPolicyResource
          )
          Core.mempty
