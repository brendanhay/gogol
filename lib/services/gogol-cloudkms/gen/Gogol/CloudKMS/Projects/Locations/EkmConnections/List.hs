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
-- Module      : Gogol.CloudKMS.Projects.Locations.EkmConnections.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists EkmConnections.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.ekmConnections.list@.
module Gogol.CloudKMS.Projects.Locations.EkmConnections.List
  ( -- * Resource
    CloudKMSProjectsLocationsEkmConnectionsListResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsEkmConnectionsList (..),
    newCloudKMSProjectsLocationsEkmConnectionsList,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.ekmConnections.list@ method which the
-- 'CloudKMSProjectsLocationsEkmConnectionsList' request conforms to.
type CloudKMSProjectsLocationsEkmConnectionsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "ekmConnections"
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
    Core.:> Core.Get '[Core.JSON] ListEkmConnectionsResponse

-- | Lists EkmConnections.
--
-- /See:/ 'newCloudKMSProjectsLocationsEkmConnectionsList' smart constructor.
data CloudKMSProjectsLocationsEkmConnectionsList = CloudKMSProjectsLocationsEkmConnectionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Only include resources that match the filter in the response. For more information, see <https://cloud.google.com/kms/docs/sorting-and-filtering Sorting and filtering list results>.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see <https://cloud.google.com/kms/docs/sorting-and-filtering Sorting and filtering list results>.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. Optional limit on the number of EkmConnections to include in the response. Further EkmConnections can subsequently be obtained by including the ListEkmConnectionsResponse.next/page/token in a subsequent request. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Optional pagination token, returned earlier via ListEkmConnectionsResponse.next/page/token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the location associated with the EkmConnections to list, in the format @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsEkmConnectionsList' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsEkmConnectionsList ::
  -- |  Required. The resource name of the location associated with the EkmConnections to list, in the format @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  CloudKMSProjectsLocationsEkmConnectionsList
newCloudKMSProjectsLocationsEkmConnectionsList parent =
  CloudKMSProjectsLocationsEkmConnectionsList
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
    CloudKMSProjectsLocationsEkmConnectionsList
  where
  type
    Rs CloudKMSProjectsLocationsEkmConnectionsList =
      ListEkmConnectionsResponse
  type
    Scopes CloudKMSProjectsLocationsEkmConnectionsList =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient CloudKMSProjectsLocationsEkmConnectionsList {..} =
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
      cloudKMSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudKMSProjectsLocationsEkmConnectionsListResource
          )
          Core.mempty
