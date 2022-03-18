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
-- Module      : Gogol.Logging.BillingAccounts.Locations.Buckets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a log bucket. This method replaces the following fields in the existing bucket with values from the new bucket: retention/periodIf the retention period is decreased and the bucket is locked, FAILED/PRECONDITION will be returned.If the bucket has a lifecycle/state of DELETE/REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.patch@.
module Gogol.Logging.BillingAccounts.Locations.Buckets.Patch
  ( -- * Resource
    LoggingBillingAccountsLocationsBucketsPatchResource,

    -- ** Constructing a Request
    newLoggingBillingAccountsLocationsBucketsPatch,
    LoggingBillingAccountsLocationsBucketsPatch,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.billingAccounts.locations.buckets.patch@ method which the
-- 'LoggingBillingAccountsLocationsBucketsPatch' request conforms to.
type LoggingBillingAccountsLocationsBucketsPatchResource =
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
-- /See:/ 'newLoggingBillingAccountsLocationsBucketsPatch' smart constructor.
data LoggingBillingAccountsLocationsBucketsPatch = LoggingBillingAccountsLocationsBucketsPatch
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

-- | Creates a value of 'LoggingBillingAccountsLocationsBucketsPatch' with the minimum fields required to make a request.
newLoggingBillingAccountsLocationsBucketsPatch ::
  -- |  Required. The full resource name of the bucket to update. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogBucket ->
  LoggingBillingAccountsLocationsBucketsPatch
newLoggingBillingAccountsLocationsBucketsPatch name payload =
  LoggingBillingAccountsLocationsBucketsPatch
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
    LoggingBillingAccountsLocationsBucketsPatch
  where
  type
    Rs LoggingBillingAccountsLocationsBucketsPatch =
      LogBucket
  type
    Scopes
      LoggingBillingAccountsLocationsBucketsPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/logging.admin"
       ]
  requestClient
    LoggingBillingAccountsLocationsBucketsPatch {..} =
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
                Core.Proxy
                  LoggingBillingAccountsLocationsBucketsPatchResource
            )
            Core.mempty
