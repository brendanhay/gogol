{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudIdentity.Customers.Userinvitations.IsInvitableUser
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies whether a user account is eligible to receive a UserInvitation (is an unmanaged account). Eligibility is based on the following criteria: * the email address is a consumer account and it\'s the primary email address of the account, and * the domain of the email address matches an existing verified Google Workspace or Cloud Identity domain If both conditions are met, the user is eligible. __Note:__ This method is not supported for Workspace Essentials customers.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.customers.userinvitations.isInvitableUser@.
module Gogol.CloudIdentity.Customers.Userinvitations.IsInvitableUser
  ( -- * Resource
    CloudIdentityCustomersUserinvitationsIsInvitableUserResource,

    -- ** Constructing a Request
    CloudIdentityCustomersUserinvitationsIsInvitableUser (..),
    newCloudIdentityCustomersUserinvitationsIsInvitableUser,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.customers.userinvitations.isInvitableUser@ method which the
-- 'CloudIdentityCustomersUserinvitationsIsInvitableUser' request conforms to.
type CloudIdentityCustomersUserinvitationsIsInvitableUserResource =
  "v1"
    Core.:> Core.CaptureMode "name" "isInvitableUser" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] IsInvitableUserResponse

-- | Verifies whether a user account is eligible to receive a UserInvitation (is an unmanaged account). Eligibility is based on the following criteria: * the email address is a consumer account and it\'s the primary email address of the account, and * the domain of the email address matches an existing verified Google Workspace or Cloud Identity domain If both conditions are met, the user is eligible. __Note:__ This method is not supported for Workspace Essentials customers.
--
-- /See:/ 'newCloudIdentityCustomersUserinvitationsIsInvitableUser' smart constructor.
data CloudIdentityCustomersUserinvitationsIsInvitableUser = CloudIdentityCustomersUserinvitationsIsInvitableUser
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityCustomersUserinvitationsIsInvitableUser' with the minimum fields required to make a request.
newCloudIdentityCustomersUserinvitationsIsInvitableUser ::
  -- |  Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@ See 'name'.
  Core.Text ->
  CloudIdentityCustomersUserinvitationsIsInvitableUser
newCloudIdentityCustomersUserinvitationsIsInvitableUser name =
  CloudIdentityCustomersUserinvitationsIsInvitableUser
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityCustomersUserinvitationsIsInvitableUser
  where
  type
    Rs CloudIdentityCustomersUserinvitationsIsInvitableUser =
      IsInvitableUserResponse
  type
    Scopes CloudIdentityCustomersUserinvitationsIsInvitableUser =
      '[]
  requestClient
    CloudIdentityCustomersUserinvitationsIsInvitableUser {..} =
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
                  CloudIdentityCustomersUserinvitationsIsInvitableUserResource
            )
            Core.mempty
