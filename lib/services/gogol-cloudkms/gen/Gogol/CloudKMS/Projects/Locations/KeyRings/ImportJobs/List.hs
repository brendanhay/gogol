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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ImportJobs.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.list@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsImportJobsListResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsKeyRingsImportJobsList,
    CloudKMSProjectsLocationsKeyRingsImportJobsList,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.list@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsImportJobsList' request conforms to.
type CloudKMSProjectsLocationsKeyRingsImportJobsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "importJobs"
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
    Core.:> Core.Get '[Core.JSON] ListImportJobsResponse

-- | Lists ImportJobs.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsImportJobsList' smart constructor.
data CloudKMSProjectsLocationsKeyRingsImportJobsList = CloudKMSProjectsLocationsKeyRingsImportJobsList
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
    -- | Optional. Optional limit on the number of ImportJobs to include in the response. Further ImportJobs can subsequently be obtained by including the ListImportJobsResponse.next/page/token in a subsequent request. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Optional pagination token, returned earlier via ListImportJobsResponse.next/page/token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the KeyRing to list, in the format @projects\/*\/locations\/*\/keyRings\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsImportJobsList' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsImportJobsList ::
  -- |  Required. The resource name of the KeyRing to list, in the format @projects\/*\/locations\/*\/keyRings\/*@. See 'parent'.
  Core.Text ->
  CloudKMSProjectsLocationsKeyRingsImportJobsList
newCloudKMSProjectsLocationsKeyRingsImportJobsList parent =
  CloudKMSProjectsLocationsKeyRingsImportJobsList
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
    CloudKMSProjectsLocationsKeyRingsImportJobsList
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsImportJobsList =
      ListImportJobsResponse
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsImportJobsList =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsImportJobsList {..} =
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
                Core.Proxy
                  CloudKMSProjectsLocationsKeyRingsImportJobsListResource
            )
            Core.mempty
