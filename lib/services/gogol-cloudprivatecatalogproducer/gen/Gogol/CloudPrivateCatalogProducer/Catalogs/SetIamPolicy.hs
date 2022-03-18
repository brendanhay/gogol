{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM policy for the specified Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.setIamPolicy@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.SetIamPolicy
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsSetIamPolicyResource

    -- ** Constructing a Request
    , newCloudPrivateCatalogProducerCatalogsSetIamPolicy
    , CloudPrivateCatalogProducerCatalogsSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.setIamPolicy@ method which the
-- 'CloudPrivateCatalogProducerCatalogsSetIamPolicy' request conforms to.
type CloudPrivateCatalogProducerCatalogsSetIamPolicyResource
     =
     "v1beta1" Core.:>
       Core.CaptureMode "resource" "setIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleIamV1SetIamPolicyRequest
                       Core.:> Core.Post '[Core.JSON] GoogleIamV1Policy

-- | Sets the IAM policy for the specified Catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsSetIamPolicy' smart constructor.
data CloudPrivateCatalogProducerCatalogsSetIamPolicy = CloudPrivateCatalogProducerCatalogsSetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GoogleIamV1SetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsSetIamPolicy' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsSetIamPolicy 
    ::  GoogleIamV1SetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> CloudPrivateCatalogProducerCatalogsSetIamPolicy
newCloudPrivateCatalogProducerCatalogsSetIamPolicy payload resource =
  CloudPrivateCatalogProducerCatalogsSetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsSetIamPolicy
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsSetIamPolicy
             = GoogleIamV1Policy
        type Scopes
               CloudPrivateCatalogProducerCatalogsSetIamPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudPrivateCatalogProducerCatalogsSetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsSetIamPolicyResource)
                      Core.mempty

