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
-- Module      : Gogol.CloudIdentity.InboundSsoAssignments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InboundSsoAssignment. To disable SSO, Create (or Update) an assignment that has @sso_mode@ == @SSO_OFF@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSsoAssignments.delete@.
module Gogol.CloudIdentity.InboundSsoAssignments.Delete
  ( -- * Resource
    CloudIdentityInboundSsoAssignmentsDeleteResource,

    -- ** Constructing a Request
    CloudIdentityInboundSsoAssignmentsDelete (..),
    newCloudIdentityInboundSsoAssignmentsDelete,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.inboundSsoAssignments.delete@ method which the
-- 'CloudIdentityInboundSsoAssignmentsDelete' request conforms to.
type CloudIdentityInboundSsoAssignmentsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes an InboundSsoAssignment. To disable SSO, Create (or Update) an assignment that has @sso_mode@ == @SSO_OFF@.
--
-- /See:/ 'newCloudIdentityInboundSsoAssignmentsDelete' smart constructor.
data CloudIdentityInboundSsoAssignmentsDelete = CloudIdentityInboundSsoAssignmentsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSsoAssignment to delete. Format: @inboundSsoAssignments\/{assignment}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSsoAssignmentsDelete' with the minimum fields required to make a request.
newCloudIdentityInboundSsoAssignmentsDelete ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSsoAssignment to delete. Format: @inboundSsoAssignments\/{assignment}@ See 'name'.
  Core.Text ->
  CloudIdentityInboundSsoAssignmentsDelete
newCloudIdentityInboundSsoAssignmentsDelete name =
  CloudIdentityInboundSsoAssignmentsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSsoAssignmentsDelete
  where
  type
    Rs CloudIdentityInboundSsoAssignmentsDelete =
      Operation
  type
    Scopes CloudIdentityInboundSsoAssignmentsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSsoAssignmentsDelete {..} =
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
                  CloudIdentityInboundSsoAssignmentsDeleteResource
            )
            Core.mempty
