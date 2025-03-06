{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.GetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets IAM policy for the specified Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.getIamPolicy@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.GetIamPolicy
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsGetIamPolicyResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsGetIamPolicy (..),
    newCloudPrivateCatalogProducerCatalogsGetIamPolicy,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.getIamPolicy@ method which the
-- 'CloudPrivateCatalogProducerCatalogsGetIamPolicy' request conforms to.
type CloudPrivateCatalogProducerCatalogsGetIamPolicyResource =
  "v1beta1"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "options.requestedPolicyVersion" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleIamV1Policy

-- | Gets IAM policy for the specified Catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsGetIamPolicy' smart constructor.
data CloudPrivateCatalogProducerCatalogsGetIamPolicy = CloudPrivateCatalogProducerCatalogsGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The policy format version to be returned.
    --
    -- Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.
    --
    -- Requests for policies with any conditional bindings must specify version 3. Policies without any conditional bindings may specify any valid value or leave the field unset.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsGetIamPolicy' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsGetIamPolicy ::
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsGetIamPolicy
newCloudPrivateCatalogProducerCatalogsGetIamPolicy resource =
  CloudPrivateCatalogProducerCatalogsGetIamPolicy
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      optionsRequestedPolicyVersion = Core.Nothing,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsGetIamPolicy
  where
  type
    Rs CloudPrivateCatalogProducerCatalogsGetIamPolicy =
      GoogleIamV1Policy
  type
    Scopes CloudPrivateCatalogProducerCatalogsGetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient CloudPrivateCatalogProducerCatalogsGetIamPolicy {..} =
    go
      resource
      xgafv
      accessToken
      callback
      optionsRequestedPolicyVersion
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudPrivateCatalogProducerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudPrivateCatalogProducerCatalogsGetIamPolicyResource
          )
          Core.mempty
