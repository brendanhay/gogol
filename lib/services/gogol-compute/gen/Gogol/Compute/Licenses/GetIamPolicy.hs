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
-- Module      : Gogol.Compute.Licenses.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such policy or resource exists. /Caution/ This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.licenses.getIamPolicy@.
module Gogol.Compute.Licenses.GetIamPolicy
  ( -- * Resource
    ComputeLicensesGetIamPolicyResource,

    -- ** Constructing a Request
    newComputeLicensesGetIamPolicy,
    ComputeLicensesGetIamPolicy,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.licenses.getIamPolicy@ method which the
-- 'ComputeLicensesGetIamPolicy' request conforms to.
type ComputeLicensesGetIamPolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "licenses"
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

-- | Gets the access control policy for a resource. May be empty if no such policy or resource exists. /Caution/ This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
--
-- /See:/ 'newComputeLicensesGetIamPolicy' smart constructor.
data ComputeLicensesGetIamPolicy = ComputeLicensesGetIamPolicy
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

-- | Creates a value of 'ComputeLicensesGetIamPolicy' with the minimum fields required to make a request.
newComputeLicensesGetIamPolicy ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeLicensesGetIamPolicy
newComputeLicensesGetIamPolicy project resource =
  ComputeLicensesGetIamPolicy
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
    ComputeLicensesGetIamPolicy
  where
  type Rs ComputeLicensesGetIamPolicy = Policy
  type
    Scopes ComputeLicensesGetIamPolicy =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeLicensesGetIamPolicy {..} =
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
              Core.Proxy ComputeLicensesGetIamPolicyResource
          )
          Core.mempty
