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
-- Module      : Gogol.CloudIdentity.Customers.Userinvitations.Send
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a UserInvitation to email. If the @UserInvitation@ does not exist for this request and it is a valid request, the request creates a @UserInvitation@. __Note:__ The @get@ and @list@ methods have a 48-hour delay where newly-created consumer accounts will not appear in the results. You can still send a @UserInvitation@ to those accounts if you know the unmanaged email address and IsInvitableUser==True.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.customers.userinvitations.send@.
module Gogol.CloudIdentity.Customers.Userinvitations.Send
  ( -- * Resource
    CloudIdentityCustomersUserinvitationsSendResource,

    -- ** Constructing a Request
    CloudIdentityCustomersUserinvitationsSend (..),
    newCloudIdentityCustomersUserinvitationsSend,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.customers.userinvitations.send@ method which the
-- 'CloudIdentityCustomersUserinvitationsSend' request conforms to.
type CloudIdentityCustomersUserinvitationsSendResource =
  "v1"
    Core.:> Core.CaptureMode "name" "send" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SendUserInvitationRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sends a UserInvitation to email. If the @UserInvitation@ does not exist for this request and it is a valid request, the request creates a @UserInvitation@. __Note:__ The @get@ and @list@ methods have a 48-hour delay where newly-created consumer accounts will not appear in the results. You can still send a @UserInvitation@ to those accounts if you know the unmanaged email address and IsInvitableUser==True.
--
-- /See:/ 'newCloudIdentityCustomersUserinvitationsSend' smart constructor.
data CloudIdentityCustomersUserinvitationsSend = CloudIdentityCustomersUserinvitationsSend
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SendUserInvitationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityCustomersUserinvitationsSend' with the minimum fields required to make a request.
newCloudIdentityCustomersUserinvitationsSend ::
  -- |  Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SendUserInvitationRequest ->
  CloudIdentityCustomersUserinvitationsSend
newCloudIdentityCustomersUserinvitationsSend name payload =
  CloudIdentityCustomersUserinvitationsSend
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
    CloudIdentityCustomersUserinvitationsSend
  where
  type Rs CloudIdentityCustomersUserinvitationsSend = Operation
  type Scopes CloudIdentityCustomersUserinvitationsSend = '[]
  requestClient CloudIdentityCustomersUserinvitationsSend {..} =
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
              Core.Proxy CloudIdentityCustomersUserinvitationsSendResource
          )
          Core.mempty
