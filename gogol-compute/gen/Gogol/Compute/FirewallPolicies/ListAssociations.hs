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
-- Module      : Gogol.Compute.FirewallPolicies.ListAssociations
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists associations of a specified target, i.e., organization or folder.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.firewallPolicies.listAssociations@.
module Gogol.Compute.FirewallPolicies.ListAssociations
  ( -- * Resource
    ComputeFirewallPoliciesListAssociationsResource,

    -- ** Constructing a Request
    newComputeFirewallPoliciesListAssociations,
    ComputeFirewallPoliciesListAssociations,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.firewallPolicies.listAssociations@ method which the
-- 'ComputeFirewallPoliciesListAssociations' request conforms to.
type ComputeFirewallPoliciesListAssociationsResource =
  "compute"
    Core.:> "v1"
    Core.:> "locations"
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> "listAssociations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "targetResource" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              FirewallPoliciesListAssociationsResponse

-- | Lists associations of a specified target, i.e., organization or folder.
--
-- /See:/ 'newComputeFirewallPoliciesListAssociations' smart constructor.
data ComputeFirewallPoliciesListAssociations = ComputeFirewallPoliciesListAssociations
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The target resource to list associations. It is an organization, or a folder.
    targetResource :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFirewallPoliciesListAssociations' with the minimum fields required to make a request.
newComputeFirewallPoliciesListAssociations ::
  ComputeFirewallPoliciesListAssociations
newComputeFirewallPoliciesListAssociations =
  ComputeFirewallPoliciesListAssociations
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      targetResource = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeFirewallPoliciesListAssociations
  where
  type
    Rs ComputeFirewallPoliciesListAssociations =
      FirewallPoliciesListAssociationsResponse
  type
    Scopes ComputeFirewallPoliciesListAssociations =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient
    ComputeFirewallPoliciesListAssociations {..} =
      go
        xgafv
        accessToken
        callback
        targetResource
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeFirewallPoliciesListAssociationsResource
            )
            Core.mempty
