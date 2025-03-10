{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIdentity.Customers.Userinvitations.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a UserInvitation that was already sent.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.customers.userinvitations.cancel@.
module Gogol.CloudIdentity.Customers.Userinvitations.Cancel
  ( -- * Resource
    CloudIdentityCustomersUserinvitationsCancelResource,

    -- ** Constructing a Request
    CloudIdentityCustomersUserinvitationsCancel (..),
    newCloudIdentityCustomersUserinvitationsCancel,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.customers.userinvitations.cancel@ method which the
-- 'CloudIdentityCustomersUserinvitationsCancel' request conforms to.
type CloudIdentityCustomersUserinvitationsCancelResource =
  "v1"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelUserInvitationRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Cancels a UserInvitation that was already sent.
--
-- /See:/ 'newCloudIdentityCustomersUserinvitationsCancel' smart constructor.
data CloudIdentityCustomersUserinvitationsCancel = CloudIdentityCustomersUserinvitationsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelUserInvitationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityCustomersUserinvitationsCancel' with the minimum fields required to make a request.
newCloudIdentityCustomersUserinvitationsCancel ::
  -- |  Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelUserInvitationRequest ->
  CloudIdentityCustomersUserinvitationsCancel
newCloudIdentityCustomersUserinvitationsCancel name payload =
  CloudIdentityCustomersUserinvitationsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityCustomersUserinvitationsCancel
  where
  type Rs CloudIdentityCustomersUserinvitationsCancel = Operation
  type Scopes CloudIdentityCustomersUserinvitationsCancel = '[]
  requestClient CloudIdentityCustomersUserinvitationsCancel {..} =
    go
      name
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
              Core.Proxy CloudIdentityCustomersUserinvitationsCancelResource
          )
          Core.mempty
