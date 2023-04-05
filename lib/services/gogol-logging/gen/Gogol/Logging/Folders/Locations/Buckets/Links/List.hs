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
-- Module      : Gogol.Logging.Folders.Locations.Buckets.Links.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists links.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.links.list@.
module Gogol.Logging.Folders.Locations.Buckets.Links.List
  ( -- * Resource
    LoggingFoldersLocationsBucketsLinksListResource,

    -- ** Constructing a Request
    LoggingFoldersLocationsBucketsLinksList (..),
    newLoggingFoldersLocationsBucketsLinksList,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.folders.locations.buckets.links.list@ method which the
-- 'LoggingFoldersLocationsBucketsLinksList' request conforms to.
type LoggingFoldersLocationsBucketsLinksListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "links"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListLinksResponse

-- | Lists links.
--
-- /See:/ 'newLoggingFoldersLocationsBucketsLinksList' smart constructor.
data LoggingFoldersLocationsBucketsLinksList = LoggingFoldersLocationsBucketsLinksList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return from this request.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource whose links are to be listed:\"projects\/PROJECT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/\" \"organizations\/ORGANIZATION/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/\" \"billingAccounts\/BILLING/ACCOUNT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/\" \"folders\/FOLDER/ID\/locations\/LOCATION/ID\/buckets\/BUCKET_ID\/
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsBucketsLinksList' with the minimum fields required to make a request.
newLoggingFoldersLocationsBucketsLinksList ::
  -- |  Required. The parent resource whose links are to be listed:\"projects\/PROJECT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/\" \"organizations\/ORGANIZATION/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/\" \"billingAccounts\/BILLING/ACCOUNT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/\" \"folders\/FOLDER/ID\/locations\/LOCATION/ID\/buckets\/BUCKET_ID\/ See 'parent'.
  Core.Text ->
  LoggingFoldersLocationsBucketsLinksList
newLoggingFoldersLocationsBucketsLinksList parent =
  LoggingFoldersLocationsBucketsLinksList
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
    LoggingFoldersLocationsBucketsLinksList
  where
  type
    Rs LoggingFoldersLocationsBucketsLinksList =
      ListLinksResponse
  type
    Scopes LoggingFoldersLocationsBucketsLinksList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient
    LoggingFoldersLocationsBucketsLinksList {..} =
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
                  LoggingFoldersLocationsBucketsLinksListResource
            )
            Core.mempty
