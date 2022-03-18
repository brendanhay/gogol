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
-- Module      : Gogol.Logging.Organizations.Locations.Buckets.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.undelete@.
module Gogol.Logging.Organizations.Locations.Buckets.Undelete
  ( -- * Resource
    LoggingOrganizationsLocationsBucketsUndeleteResource,

    -- ** Constructing a Request
    newLoggingOrganizationsLocationsBucketsUndelete,
    LoggingOrganizationsLocationsBucketsUndelete,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.organizations.locations.buckets.undelete@ method which the
-- 'LoggingOrganizationsLocationsBucketsUndelete' request conforms to.
type LoggingOrganizationsLocationsBucketsUndeleteResource =
  "v2"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteBucketRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.
--
-- /See:/ 'newLoggingOrganizationsLocationsBucketsUndelete' smart constructor.
data LoggingOrganizationsLocationsBucketsUndelete = LoggingOrganizationsLocationsBucketsUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the bucket to undelete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteBucketRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsBucketsUndelete' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsBucketsUndelete ::
  -- |  Required. The full resource name of the bucket to undelete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteBucketRequest ->
  LoggingOrganizationsLocationsBucketsUndelete
newLoggingOrganizationsLocationsBucketsUndelete name payload =
  LoggingOrganizationsLocationsBucketsUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsLocationsBucketsUndelete
  where
  type
    Rs LoggingOrganizationsLocationsBucketsUndelete =
      Empty
  type
    Scopes
      LoggingOrganizationsLocationsBucketsUndelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/logging.admin"
       ]
  requestClient
    LoggingOrganizationsLocationsBucketsUndelete {..} =
      go
        name
        xgafv
        accessToken
        callback
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
                  LoggingOrganizationsLocationsBucketsUndeleteResource
            )
            Core.mempty
