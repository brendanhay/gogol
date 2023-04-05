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
-- Module      : Gogol.CloudIdentity.InboundSsoAssignments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InboundSsoAssignment for users and devices in a @Customer@ under a given @Group@ or @OrgUnit@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSsoAssignments.create@.
module Gogol.CloudIdentity.InboundSsoAssignments.Create
  ( -- * Resource
    CloudIdentityInboundSsoAssignmentsCreateResource,

    -- ** Constructing a Request
    CloudIdentityInboundSsoAssignmentsCreate (..),
    newCloudIdentityInboundSsoAssignmentsCreate,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.inboundSsoAssignments.create@ method which the
-- 'CloudIdentityInboundSsoAssignmentsCreate' request conforms to.
type CloudIdentityInboundSsoAssignmentsCreateResource =
  "v1"
    Core.:> "inboundSsoAssignments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InboundSsoAssignment
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an InboundSsoAssignment for users and devices in a @Customer@ under a given @Group@ or @OrgUnit@.
--
-- /See:/ 'newCloudIdentityInboundSsoAssignmentsCreate' smart constructor.
data CloudIdentityInboundSsoAssignmentsCreate = CloudIdentityInboundSsoAssignmentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: InboundSsoAssignment,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSsoAssignmentsCreate' with the minimum fields required to make a request.
newCloudIdentityInboundSsoAssignmentsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  InboundSsoAssignment ->
  CloudIdentityInboundSsoAssignmentsCreate
newCloudIdentityInboundSsoAssignmentsCreate payload =
  CloudIdentityInboundSsoAssignmentsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSsoAssignmentsCreate
  where
  type
    Rs CloudIdentityInboundSsoAssignmentsCreate =
      Operation
  type
    Scopes CloudIdentityInboundSsoAssignmentsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSsoAssignmentsCreate {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityInboundSsoAssignmentsCreateResource
            )
            Core.mempty
