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
-- Module      : Gogol.Logging.Folders.Locations.Buckets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists log buckets.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.list@.
module Gogol.Logging.Folders.Locations.Buckets.List
  ( -- * Resource
    LoggingFoldersLocationsBucketsListResource,

    -- ** Constructing a Request
    newLoggingFoldersLocationsBucketsList,
    LoggingFoldersLocationsBucketsList,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.folders.locations.buckets.list@ method which the
-- 'LoggingFoldersLocationsBucketsList' request conforms to.
type LoggingFoldersLocationsBucketsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "buckets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBucketsResponse

-- | Lists log buckets.
--
-- /See:/ 'newLoggingFoldersLocationsBucketsList' smart constructor.
data LoggingFoldersLocationsBucketsList = LoggingFoldersLocationsBucketsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource whose buckets are to be listed: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION/ID will return all buckets.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsBucketsList' with the minimum fields required to make a request.
newLoggingFoldersLocationsBucketsList ::
  -- |  Required. The parent resource whose buckets are to be listed: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\" Note: The locations portion of the resource must be specified, but supplying the character - in place of LOCATION/ID will return all buckets. See 'parent'.
  Core.Text ->
  LoggingFoldersLocationsBucketsList
newLoggingFoldersLocationsBucketsList parent =
  LoggingFoldersLocationsBucketsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingFoldersLocationsBucketsList
  where
  type
    Rs LoggingFoldersLocationsBucketsList =
      ListBucketsResponse
  type
    Scopes LoggingFoldersLocationsBucketsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/logging.admin",
         "https://www.googleapis.com/auth/logging.read"
       ]
  requestClient LoggingFoldersLocationsBucketsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                LoggingFoldersLocationsBucketsListResource
          )
          Core.mempty
