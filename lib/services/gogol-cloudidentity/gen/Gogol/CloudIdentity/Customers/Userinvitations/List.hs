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
-- Module      : Gogol.CloudIdentity.Customers.Userinvitations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of UserInvitation resources. __Note:__ New consumer accounts with the customer\'s verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.customers.userinvitations.list@.
module Gogol.CloudIdentity.Customers.Userinvitations.List
  ( -- * Resource
    CloudIdentityCustomersUserinvitationsListResource,

    -- ** Constructing a Request
    CloudIdentityCustomersUserinvitationsList (..),
    newCloudIdentityCustomersUserinvitationsList,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.customers.userinvitations.list@ method which the
-- 'CloudIdentityCustomersUserinvitationsList' request conforms to.
type CloudIdentityCustomersUserinvitationsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "userinvitations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUserInvitationsResponse

-- | Retrieves a list of UserInvitation resources. __Note:__ New consumer accounts with the customer\'s verified domain created within the previous 48 hours will not appear in the result. This delay also applies to newly-verified domains.
--
-- /See:/ 'newCloudIdentityCustomersUserinvitationsList' smart constructor.
data CloudIdentityCustomersUserinvitationsList = CloudIdentityCustomersUserinvitationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A query string for filtering @UserInvitation@ results by their current state, in the format: @\"state==\'invited\'\"@.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The sort order of the list results. You can sort the results in descending order based on either email or last update timestamp but not both, using @order_by=\"email desc\"@. Currently, sorting is supported for @update_time asc@, @update_time desc@, @email asc@, and @email desc@. If not specified, results will be returned based on @email asc@ order.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of UserInvitation resources to return. If unspecified, at most 100 resources will be returned. The maximum value is 200; values above 200 will be set to 200.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous @ListUserInvitations@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListBooks@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The customer ID of the Google Workspace or Cloud Identity account the UserInvitation resources are associated with.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityCustomersUserinvitationsList' with the minimum fields required to make a request.
newCloudIdentityCustomersUserinvitationsList ::
  -- |  Required. The customer ID of the Google Workspace or Cloud Identity account the UserInvitation resources are associated with. See 'parent'.
  Core.Text ->
  CloudIdentityCustomersUserinvitationsList
newCloudIdentityCustomersUserinvitationsList parent =
  CloudIdentityCustomersUserinvitationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityCustomersUserinvitationsList
  where
  type
    Rs CloudIdentityCustomersUserinvitationsList =
      ListUserInvitationsResponse
  type Scopes CloudIdentityCustomersUserinvitationsList = '[]
  requestClient CloudIdentityCustomersUserinvitationsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityCustomersUserinvitationsListResource
          )
          Core.mempty
