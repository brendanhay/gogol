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
-- Module      : Gogol.CloudIdentity.InboundSsoAssignments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InboundSsoAssignment.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSsoAssignments.get@.
module Gogol.CloudIdentity.InboundSsoAssignments.Get
  ( -- * Resource
    CloudIdentityInboundSsoAssignmentsGetResource,

    -- ** Constructing a Request
    CloudIdentityInboundSsoAssignmentsGet (..),
    newCloudIdentityInboundSsoAssignmentsGet,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.inboundSsoAssignments.get@ method which the
-- 'CloudIdentityInboundSsoAssignmentsGet' request conforms to.
type CloudIdentityInboundSsoAssignmentsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InboundSsoAssignment

-- | Gets an InboundSsoAssignment.
--
-- /See:/ 'newCloudIdentityInboundSsoAssignmentsGet' smart constructor.
data CloudIdentityInboundSsoAssignmentsGet = CloudIdentityInboundSsoAssignmentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSsoAssignment to fetch. Format: @inboundSsoAssignments\/{assignment}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSsoAssignmentsGet' with the minimum fields required to make a request.
newCloudIdentityInboundSsoAssignmentsGet ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSsoAssignment to fetch. Format: @inboundSsoAssignments\/{assignment}@ See 'name'.
  Core.Text ->
  CloudIdentityInboundSsoAssignmentsGet
newCloudIdentityInboundSsoAssignmentsGet name =
  CloudIdentityInboundSsoAssignmentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSsoAssignmentsGet
  where
  type
    Rs CloudIdentityInboundSsoAssignmentsGet =
      InboundSsoAssignment
  type
    Scopes CloudIdentityInboundSsoAssignmentsGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSsoAssignmentsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityInboundSsoAssignmentsGetResource
            )
            Core.mempty
