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
-- Module      : Gogol.Logging.BillingAccounts.Locations.Buckets.Views.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.views.patch@.
module Gogol.Logging.BillingAccounts.Locations.Buckets.Views.Patch
  ( -- * Resource
    LoggingBillingAccountsLocationsBucketsViewsPatchResource,

    -- ** Constructing a Request
    newLoggingBillingAccountsLocationsBucketsViewsPatch,
    LoggingBillingAccountsLocationsBucketsViewsPatch,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.billingAccounts.locations.buckets.views.patch@ method which the
-- 'LoggingBillingAccountsLocationsBucketsViewsPatch' request conforms to.
type LoggingBillingAccountsLocationsBucketsViewsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogView
    Core.:> Core.Patch '[Core.JSON] LogView

-- | Updates a view on a log bucket. This method replaces the following fields in the existing view with values from the new view: filter. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.
--
-- /See:/ 'newLoggingBillingAccountsLocationsBucketsViewsPatch' smart constructor.
data LoggingBillingAccountsLocationsBucketsViewsPatch = LoggingBillingAccountsLocationsBucketsViewsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the view to update \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogView,
    -- | Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsLocationsBucketsViewsPatch' with the minimum fields required to make a request.
newLoggingBillingAccountsLocationsBucketsViewsPatch ::
  -- |  Required. The full resource name of the view to update \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogView ->
  LoggingBillingAccountsLocationsBucketsViewsPatch
newLoggingBillingAccountsLocationsBucketsViewsPatch name payload =
  LoggingBillingAccountsLocationsBucketsViewsPatch
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
    LoggingBillingAccountsLocationsBucketsViewsPatch
  where
  type
    Rs
      LoggingBillingAccountsLocationsBucketsViewsPatch =
      LogView
  type
    Scopes
      LoggingBillingAccountsLocationsBucketsViewsPatch =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient
    LoggingBillingAccountsLocationsBucketsViewsPatch {..} =
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
                  LoggingBillingAccountsLocationsBucketsViewsPatchResource
            )
            Core.mempty
