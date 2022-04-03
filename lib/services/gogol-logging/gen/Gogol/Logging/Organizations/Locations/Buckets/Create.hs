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
-- Module      : Gogol.Logging.Organizations.Locations.Buckets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.create@.
module Gogol.Logging.Organizations.Locations.Buckets.Create
  ( -- * Resource
    LoggingOrganizationsLocationsBucketsCreateResource,

    -- ** Constructing a Request
    LoggingOrganizationsLocationsBucketsCreate (..),
    newLoggingOrganizationsLocationsBucketsCreate,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.organizations.locations.buckets.create@ method which the
-- 'LoggingOrganizationsLocationsBucketsCreate' request conforms to.
type LoggingOrganizationsLocationsBucketsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "buckets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bucketId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogBucket
    Core.:> Core.Post '[Core.JSON] LogBucket

-- | Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ 'newLoggingOrganizationsLocationsBucketsCreate' smart constructor.
data LoggingOrganizationsLocationsBucketsCreate = LoggingOrganizationsLocationsBucketsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
    bucketId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource in which to create the log bucket: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogBucket,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsBucketsCreate' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsBucketsCreate ::
  -- |  Required. The resource in which to create the log bucket: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogBucket ->
  LoggingOrganizationsLocationsBucketsCreate
newLoggingOrganizationsLocationsBucketsCreate parent payload =
  LoggingOrganizationsLocationsBucketsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      bucketId = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsLocationsBucketsCreate
  where
  type
    Rs LoggingOrganizationsLocationsBucketsCreate =
      LogBucket
  type
    Scopes
      LoggingOrganizationsLocationsBucketsCreate =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient
    LoggingOrganizationsLocationsBucketsCreate {..} =
      go
        parent
        xgafv
        accessToken
        bucketId
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
                  LoggingOrganizationsLocationsBucketsCreateResource
            )
            Core.mempty
