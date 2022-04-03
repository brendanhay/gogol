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
-- Module      : Gogol.Logging.Projects.Locations.Buckets.Views.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.views.create@.
module Gogol.Logging.Projects.Locations.Buckets.Views.Create
  ( -- * Resource
    LoggingProjectsLocationsBucketsViewsCreateResource,

    -- ** Constructing a Request
    LoggingProjectsLocationsBucketsViewsCreate (..),
    newLoggingProjectsLocationsBucketsViewsCreate,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.projects.locations.buckets.views.create@ method which the
-- 'LoggingProjectsLocationsBucketsViewsCreate' request conforms to.
type LoggingProjectsLocationsBucketsViewsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "views"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "viewId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogView
    Core.:> Core.Post '[Core.JSON] LogView

-- | Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.
--
-- /See:/ 'newLoggingProjectsLocationsBucketsViewsCreate' smart constructor.
data LoggingProjectsLocationsBucketsViewsCreate = LoggingProjectsLocationsBucketsViewsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The bucket in which to create the view @\"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"@ For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogView,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. The id to use for this view.
    viewId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsLocationsBucketsViewsCreate' with the minimum fields required to make a request.
newLoggingProjectsLocationsBucketsViewsCreate ::
  -- |  Required. The bucket in which to create the view @\"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"@ For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogView ->
  LoggingProjectsLocationsBucketsViewsCreate
newLoggingProjectsLocationsBucketsViewsCreate parent payload =
  LoggingProjectsLocationsBucketsViewsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      viewId = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingProjectsLocationsBucketsViewsCreate
  where
  type
    Rs LoggingProjectsLocationsBucketsViewsCreate =
      LogView
  type
    Scopes
      LoggingProjectsLocationsBucketsViewsCreate =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient
    LoggingProjectsLocationsBucketsViewsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        viewId
        (Core.Just Core.AltJSON)
        payload
        loggingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  LoggingProjectsLocationsBucketsViewsCreateResource
            )
            Core.mempty
