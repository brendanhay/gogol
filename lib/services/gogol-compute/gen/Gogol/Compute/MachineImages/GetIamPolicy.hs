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
-- Module      : Gogol.Compute.MachineImages.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.machineImages.getIamPolicy@.
module Gogol.Compute.MachineImages.GetIamPolicy
  ( -- * Resource
    ComputeMachineImagesGetIamPolicyResource,

    -- ** Constructing a Request
    ComputeMachineImagesGetIamPolicy (..),
    newComputeMachineImagesGetIamPolicy,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.machineImages.getIamPolicy@ method which the
-- 'ComputeMachineImagesGetIamPolicy' request conforms to.
type ComputeMachineImagesGetIamPolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "machineImages"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "getIamPolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "optionsRequestedPolicyVersion"
              Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ 'newComputeMachineImagesGetIamPolicy' smart constructor.
data ComputeMachineImagesGetIamPolicy = ComputeMachineImagesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested IAM Policy version.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
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

-- | Creates a value of 'ComputeMachineImagesGetIamPolicy' with the minimum fields required to make a request.
newComputeMachineImagesGetIamPolicy ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeMachineImagesGetIamPolicy
newComputeMachineImagesGetIamPolicy project resource =
  ComputeMachineImagesGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      optionsRequestedPolicyVersion = Core.Nothing,
      project = project,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeMachineImagesGetIamPolicy
  where
  type Rs ComputeMachineImagesGetIamPolicy = Policy
  type
    Scopes ComputeMachineImagesGetIamPolicy =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeMachineImagesGetIamPolicy {..} =
    go
      project
      resource
      xgafv
      accessToken
      callback
      optionsRequestedPolicyVersion
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeMachineImagesGetIamPolicyResource
          )
          Core.mempty
