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
-- Module      : Gogol.Logging.Locations.Buckets.Links.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a link.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.links.get@.
module Gogol.Logging.Locations.Buckets.Links.Get
  ( -- * Resource
    LoggingLocationsBucketsLinksGetResource,

    -- ** Constructing a Request
    LoggingLocationsBucketsLinksGet (..),
    newLoggingLocationsBucketsLinksGet,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.locations.buckets.links.get@ method which the
-- 'LoggingLocationsBucketsLinksGet' request conforms to.
type LoggingLocationsBucketsLinksGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Link

-- | Gets a link.
--
-- /See:/ 'newLoggingLocationsBucketsLinksGet' smart constructor.
data LoggingLocationsBucketsLinksGet = LoggingLocationsBucketsLinksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the link:\"projects\/PROJECT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK/ID\" \"organizations\/ORGANIZATION/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK/ID\" \"billingAccounts\/BILLING/ACCOUNT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK/ID\" \"folders\/FOLDER/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK_ID
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingLocationsBucketsLinksGet' with the minimum fields required to make a request.
newLoggingLocationsBucketsLinksGet ::
  -- |  Required. The resource name of the link:\"projects\/PROJECT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK/ID\" \"organizations\/ORGANIZATION/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK/ID\" \"billingAccounts\/BILLING/ACCOUNT/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK/ID\" \"folders\/FOLDER/ID\/locations\/LOCATION/ID\/buckets\/BUCKET/ID\/links\/LINK_ID See 'name'.
  Core.Text ->
  LoggingLocationsBucketsLinksGet
newLoggingLocationsBucketsLinksGet name =
  LoggingLocationsBucketsLinksGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingLocationsBucketsLinksGet
  where
  type Rs LoggingLocationsBucketsLinksGet = Link
  type
    Scopes LoggingLocationsBucketsLinksGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingLocationsBucketsLinksGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingLocationsBucketsLinksGetResource
          )
          Core.mempty
