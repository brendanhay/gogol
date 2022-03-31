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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the IAM permissions for the specified Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.testIamPermissions@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.TestIamPermissions
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsTestIamPermissionsResource,

    -- ** Constructing a Request
    newCloudPrivateCatalogProducerCatalogsTestIamPermissions,
    CloudPrivateCatalogProducerCatalogsTestIamPermissions,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.testIamPermissions@ method which the
-- 'CloudPrivateCatalogProducerCatalogsTestIamPermissions' request conforms to.
type CloudPrivateCatalogProducerCatalogsTestIamPermissionsResource =
  "v1beta1"
    Core.:> Core.CaptureMode
              "resource"
              "testIamPermissions"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleIamV1TestIamPermissionsRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleIamV1TestIamPermissionsResponse

-- | Tests the IAM permissions for the specified Catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsTestIamPermissions' smart constructor.
data CloudPrivateCatalogProducerCatalogsTestIamPermissions = CloudPrivateCatalogProducerCatalogsTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleIamV1TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsTestIamPermissions' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleIamV1TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsTestIamPermissions
newCloudPrivateCatalogProducerCatalogsTestIamPermissions payload resource =
  CloudPrivateCatalogProducerCatalogsTestIamPermissions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsTestIamPermissions
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsTestIamPermissions =
      GoogleIamV1TestIamPermissionsResponse
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsTestIamPermissions =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsTestIamPermissionsResource
            )
            Core.mempty
