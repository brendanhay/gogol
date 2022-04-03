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
-- Module      : Gogol.Compute.SecurityPolicies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the ordered rules present in a single specified policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.securityPolicies.get@.
module Gogol.Compute.SecurityPolicies.Get
  ( -- * Resource
    ComputeSecurityPoliciesGetResource,

    -- ** Constructing a Request
    ComputeSecurityPoliciesGet (..),
    newComputeSecurityPoliciesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.securityPolicies.get@ method which the
-- 'ComputeSecurityPoliciesGet' request conforms to.
type ComputeSecurityPoliciesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "securityPolicies"
    Core.:> Core.Capture "securityPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SecurityPolicy

-- | List all of the ordered rules present in a single specified policy.
--
-- /See:/ 'newComputeSecurityPoliciesGet' smart constructor.
data ComputeSecurityPoliciesGet = ComputeSecurityPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the security policy to get.
    securityPolicy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSecurityPoliciesGet' with the minimum fields required to make a request.
newComputeSecurityPoliciesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the security policy to get. See 'securityPolicy'.
  Core.Text ->
  ComputeSecurityPoliciesGet
newComputeSecurityPoliciesGet project securityPolicy =
  ComputeSecurityPoliciesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      securityPolicy = securityPolicy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeSecurityPoliciesGet
  where
  type Rs ComputeSecurityPoliciesGet = SecurityPolicy
  type
    Scopes ComputeSecurityPoliciesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeSecurityPoliciesGet {..} =
    go
      project
      securityPolicy
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeSecurityPoliciesGetResource
          )
          Core.mempty
