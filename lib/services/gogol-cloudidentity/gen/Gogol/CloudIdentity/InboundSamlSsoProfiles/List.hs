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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists InboundSamlSsoProfiles for a customer.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.list@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.List
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesListResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesList (..),
    newCloudIdentityInboundSamlSsoProfilesList,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.list@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesList' request conforms to.
type CloudIdentityInboundSamlSsoProfilesListResource =
  "v1"
    Core.:> "inboundSamlSsoProfiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInboundSamlSsoProfilesResponse

-- | Lists InboundSamlSsoProfiles for a customer.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesList' smart constructor.
data CloudIdentityInboundSamlSsoProfilesList = CloudIdentityInboundSamlSsoProfilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A <https://github.com/google/cel-spec Common Expression Language> expression to filter the results. The only supported filter is filtering by customer. For example: @customer==\"customers\/C0123abc\"@. Omitting the filter or specifying a filter of @customer==\"customers\/my_customer\"@ will return the profiles for the customer that the caller (authenticated user) belongs to.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of InboundSamlSsoProfiles to return. The service may return fewer than this value. If omitted (or defaulted to zero) the server will use a sensible default. This default may change over time. The maximum allowed value is 100. Requests with page_size greater than that will be silently interpreted as having this maximum value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListInboundSamlSsoProfiles@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListInboundSamlSsoProfiles@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesList' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesList ::
  CloudIdentityInboundSamlSsoProfilesList
newCloudIdentityInboundSamlSsoProfilesList =
  CloudIdentityInboundSamlSsoProfilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityInboundSamlSsoProfilesList where
  type
    Rs CloudIdentityInboundSamlSsoProfilesList =
      ListInboundSamlSsoProfilesResponse
  type
    Scopes CloudIdentityInboundSamlSsoProfilesList =
      '[ CloudIdentity'Inboundsso,
         CloudIdentity'Inboundsso'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudIdentityInboundSamlSsoProfilesList {..} =
    go
      xgafv
      accessToken
      callback
      filter
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
              Core.Proxy CloudIdentityInboundSamlSsoProfilesListResource
          )
          Core.mempty
