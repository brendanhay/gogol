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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the @Membership@s within a @Group@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.list@.
module Gogol.CloudIdentity.Groups.Memberships.List
  ( -- * Resource
    CloudIdentityGroupsMembershipsListResource,

    -- ** Constructing a Request
    CloudIdentityGroupsMembershipsList (..),
    newCloudIdentityGroupsMembershipsList,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.memberships.list@ method which the
-- 'CloudIdentityGroupsMembershipsList' request conforms to.
type CloudIdentityGroupsMembershipsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "memberships"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" GroupsMembershipsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListMembershipsResponse

-- | Lists the @Membership@s within a @Group@.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsList' smart constructor.
data CloudIdentityGroupsMembershipsList = CloudIdentityGroupsMembershipsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a @next_page_token@. If unspecified, defaults to 200 for @GroupView.BASIC@ and to 50 for @GroupView.FULL@. Must not be greater than 1000 for @GroupView.BASIC@ or 500 for @GroupView.FULL@.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The @next_page_token@ value returned from a previous search request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent @Group@ resource under which to lookup the @Membership@ name. Must be of the form @groups\/{group}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The level of detail to be returned. If unspecified, defaults to @View.BASIC@.
    view :: (Core.Maybe GroupsMembershipsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsList' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsList ::
  -- |  Required. The parent @Group@ resource under which to lookup the @Membership@ name. Must be of the form @groups\/{group}@. See 'parent'.
  Core.Text ->
  CloudIdentityGroupsMembershipsList
newCloudIdentityGroupsMembershipsList parent =
  CloudIdentityGroupsMembershipsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityGroupsMembershipsList
  where
  type
    Rs CloudIdentityGroupsMembershipsList =
      ListMembershipsResponse
  type
    Scopes CloudIdentityGroupsMembershipsList =
      '[ CloudIdentity'Groups,
         CloudIdentity'Groups'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudIdentityGroupsMembershipsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudIdentityGroupsMembershipsListResource
          )
          Core.mempty
