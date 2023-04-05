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
-- Module      : Gogol.Logging.Folders.Locations.Buckets.Links.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Asynchronously creates linked dataset in BigQuery which makes it possible to use BugQuery to read the logs stored in the bucket. A bucket may currently only contain one link.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.links.create@.
module Gogol.Logging.Folders.Locations.Buckets.Links.Create
  ( -- * Resource
    LoggingFoldersLocationsBucketsLinksCreateResource,

    -- ** Constructing a Request
    LoggingFoldersLocationsBucketsLinksCreate (..),
    newLoggingFoldersLocationsBucketsLinksCreate,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.folders.locations.buckets.links.create@ method which the
-- 'LoggingFoldersLocationsBucketsLinksCreate' request conforms to.
type LoggingFoldersLocationsBucketsLinksCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "links"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "linkId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Link
    Core.:> Core.Post '[Core.JSON] Operation

-- | Asynchronously creates linked dataset in BigQuery which makes it possible to use BugQuery to read the logs stored in the bucket. A bucket may currently only contain one link.
--
-- /See:/ 'newLoggingFoldersLocationsBucketsLinksCreate' smart constructor.
data LoggingFoldersLocationsBucketsLinksCreate = LoggingFoldersLocationsBucketsLinksCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID to use for the link. The link/id can have up to 100 characters. A valid link/id must only have alphanumeric characters and underscores within it.
    linkId :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the bucket to create a link for. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Link,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsBucketsLinksCreate' with the minimum fields required to make a request.
newLoggingFoldersLocationsBucketsLinksCreate ::
  -- |  Required. The full resource name of the bucket to create a link for. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Link ->
  LoggingFoldersLocationsBucketsLinksCreate
newLoggingFoldersLocationsBucketsLinksCreate parent payload =
  LoggingFoldersLocationsBucketsLinksCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      linkId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingFoldersLocationsBucketsLinksCreate
  where
  type
    Rs LoggingFoldersLocationsBucketsLinksCreate =
      Operation
  type
    Scopes LoggingFoldersLocationsBucketsLinksCreate =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient
    LoggingFoldersLocationsBucketsLinksCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        linkId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        loggingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  LoggingFoldersLocationsBucketsLinksCreateResource
            )
            Core.mempty
