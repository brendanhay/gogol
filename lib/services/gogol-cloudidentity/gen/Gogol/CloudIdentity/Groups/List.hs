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
-- Module      : Gogol.CloudIdentity.Groups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the @Group@ resources under a customer or namespace.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.list@.
module Gogol.CloudIdentity.Groups.List
  ( -- * Resource
    CloudIdentityGroupsListResource,

    -- ** Constructing a Request
    CloudIdentityGroupsList (..),
    newCloudIdentityGroupsList,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.list@ method which the
-- 'CloudIdentityGroupsList' request conforms to.
type CloudIdentityGroupsListResource =
  "v1"
    Core.:> "groups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" GroupsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGroupsResponse

-- | Lists the @Group@ resources under a customer or namespace.
--
-- /See:/ 'newCloudIdentityGroupsList' smart constructor.
data CloudIdentityGroupsList = CloudIdentityGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a @next_page_token@. If unspecified, defaults to 200 for @View.BASIC@ and to 50 for @View.FULL@. Must not be greater than 1000 for @View.BASIC@ or 500 for @View.FULL@.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The @next_page_token@ value returned from a previous list request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource under which to list all @Group@ resources. Must be of the form @identitysources\/{identity_source}@ for external- identity-mapped groups or @customers\/{customer_id}@ for Google Groups. The @customer_id@ must begin with \"C\" (for example, \'C046psxkn\'). [Find your customer ID.] (https:\/\/support.google.com\/cloudidentity\/answer\/10070793)
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The level of detail to be returned. If unspecified, defaults to @View.BASIC@.
    view :: (Core.Maybe GroupsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsList' with the minimum fields required to make a request.
newCloudIdentityGroupsList ::
  CloudIdentityGroupsList
newCloudIdentityGroupsList =
  CloudIdentityGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsList where
  type Rs CloudIdentityGroupsList = ListGroupsResponse
  type
    Scopes CloudIdentityGroupsList =
      '[ CloudIdentity'Groups,
         CloudIdentity'Groups'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudIdentityGroupsList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      parent
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityGroupsListResource
          )
          Core.mempty
