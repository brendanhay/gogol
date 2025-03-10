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
-- Module      : Gogol.CloudIdentity.Customers.Userinvitations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a UserInvitation resource. __Note:__ New consumer accounts with the customer\'s verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.customers.userinvitations.get@.
module Gogol.CloudIdentity.Customers.Userinvitations.Get
  ( -- * Resource
    CloudIdentityCustomersUserinvitationsGetResource,

    -- ** Constructing a Request
    CloudIdentityCustomersUserinvitationsGet (..),
    newCloudIdentityCustomersUserinvitationsGet,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.customers.userinvitations.get@ method which the
-- 'CloudIdentityCustomersUserinvitationsGet' request conforms to.
type CloudIdentityCustomersUserinvitationsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UserInvitation

-- | Retrieves a UserInvitation resource. __Note:__ New consumer accounts with the customer\'s verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.
--
-- /See:/ 'newCloudIdentityCustomersUserinvitationsGet' smart constructor.
data CloudIdentityCustomersUserinvitationsGet = CloudIdentityCustomersUserinvitationsGet
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

-- | Creates a value of 'CloudIdentityCustomersUserinvitationsGet' with the minimum fields required to make a request.
newCloudIdentityCustomersUserinvitationsGet ::
  -- |  Required. @UserInvitation@ name in the format @customers\/{customer}\/userinvitations\/{user_email_address}@ See 'name'.
  Core.Text ->
  CloudIdentityCustomersUserinvitationsGet
newCloudIdentityCustomersUserinvitationsGet name =
  CloudIdentityCustomersUserinvitationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityCustomersUserinvitationsGet
  where
  type Rs CloudIdentityCustomersUserinvitationsGet = UserInvitation
  type Scopes CloudIdentityCustomersUserinvitationsGet = '[]
  requestClient CloudIdentityCustomersUserinvitationsGet {..} =
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
              Core.Proxy CloudIdentityCustomersUserinvitationsGetResource
          )
          Core.mempty
