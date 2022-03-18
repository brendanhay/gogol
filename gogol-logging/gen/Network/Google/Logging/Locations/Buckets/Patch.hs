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
-- Module      : Network.Google.Logging.Locations.Buckets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention/periodIf the retention period is decreased and the bucket is locked, FAILED/PRECONDITION will be returned.If the bucket has a lifecycle/state of DELETE/REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.patch@.
module Network.Google.Logging.Locations.Buckets.Patch
  ( -- * Resource
    LoggingLocationsBucketsPatchResource,

    -- ** Constructing a Request
    newLoggingLocationsBucketsPatch,
    LoggingLocationsBucketsPatch,
  )
where

import Network.Google.Logging.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @logging.locations.buckets.patch@ method which the
-- 'LoggingLocationsBucketsPatch' request conforms to.
type LoggingLocationsBucketsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogBucket
    Core.:> Core.Patch '[Core.JSON] LogBucket

-- | Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention/periodIf the retention period is decreased and the bucket is locked, FAILED/PRECONDITION will be returned.If the bucket has a lifecycle/state of DELETE/REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ 'newLoggingLocationsBucketsPatch' smart constructor.
data LoggingLocationsBucketsPatch = LoggingLocationsBucketsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the bucket to update. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogBucket,
    -- | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see: https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=retention_days
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingLocationsBucketsPatch' with the minimum fields required to make a request.
newLoggingLocationsBucketsPatch ::
  -- |  Required. The full resource name of the bucket to update. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogBucket ->
  LoggingLocationsBucketsPatch
newLoggingLocationsBucketsPatch name payload =
  LoggingLocationsBucketsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingLocationsBucketsPatch
  where
  type Rs LoggingLocationsBucketsPatch = LogBucket
  type
    Scopes LoggingLocationsBucketsPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/logging.admin"
       ]
  requestClient LoggingLocationsBucketsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingLocationsBucketsPatchResource
          )
          Core.mempty
