{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Logging.Locations.Buckets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.create@.
module Gogol.Logging.Locations.Buckets.Create
    (
    -- * Resource
      LoggingLocationsBucketsCreateResource

    -- ** Constructing a Request
    , LoggingLocationsBucketsCreate (..)
    , newLoggingLocationsBucketsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.locations.buckets.create@ method which the
-- 'LoggingLocationsBucketsCreate' request conforms to.
type LoggingLocationsBucketsCreateResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "buckets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "bucketId" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] LogBucket Core.:>
                           Core.Post '[Core.JSON] LogBucket

-- | Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket\'s location cannot be changed.
--
-- /See:/ 'newLoggingLocationsBucketsCreate' smart constructor.
data LoggingLocationsBucketsCreate = LoggingLocationsBucketsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. A client-assigned identifier such as \"my-bucket\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. Bucket identifiers must start with an alphanumeric character.
    , bucketId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource in which to create the log bucket: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: LogBucket
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingLocationsBucketsCreate' with the minimum fields required to make a request.
newLoggingLocationsBucketsCreate 
    ::  Core.Text
       -- ^  Required. The resource in which to create the log bucket: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\" See 'parent'.
    -> LogBucket
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingLocationsBucketsCreate
newLoggingLocationsBucketsCreate parent payload =
  LoggingLocationsBucketsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , bucketId = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingLocationsBucketsCreate
         where
        type Rs LoggingLocationsBucketsCreate = LogBucket
        type Scopes LoggingLocationsBucketsCreate =
             '[CloudPlatform'FullControl, Logging'Admin]
        requestClient LoggingLocationsBucketsCreate{..}
          = go parent xgafv accessToken bucketId callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LoggingLocationsBucketsCreateResource)
                      Core.mempty

