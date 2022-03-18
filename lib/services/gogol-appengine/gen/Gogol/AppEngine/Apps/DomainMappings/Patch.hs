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
-- Module      : Gogol.AppEngine.Apps.DomainMappings.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.patch@.
module Gogol.AppEngine.Apps.DomainMappings.Patch
    (
    -- * Resource
      AppEngineAppsDomainMappingsPatchResource

    -- ** Constructing a Request
    , newAppEngineAppsDomainMappingsPatch
    , AppEngineAppsDomainMappingsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.domainMappings.patch@ method which the
-- 'AppEngineAppsDomainMappingsPatch' request conforms to.
type AppEngineAppsDomainMappingsPatchResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "domainMappings" Core.:>
             Core.Capture "domainMappingsId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] DomainMapping Core.:>
                               Core.Patch '[Core.JSON] Operation

-- | Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.
--
-- /See:/ 'newAppEngineAppsDomainMappingsPatch' smart constructor.
data AppEngineAppsDomainMappingsPatch = AppEngineAppsDomainMappingsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/domainMappings\/example.com.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @appsId@.
    , domainMappingsId :: Core.Text
      -- | Multipart request metadata.
    , payload :: DomainMapping
      -- | Required. Standard field mask for the set of fields to be updated.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsDomainMappingsPatch' with the minimum fields required to make a request.
newAppEngineAppsDomainMappingsPatch 
    ::  Core.Text
       -- ^  Part of @name@. Name of the resource to update. Example: apps\/myapp\/domainMappings\/example.com. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'domainMappingsId'.
    -> DomainMapping
       -- ^  Multipart request metadata. See 'payload'.
    -> AppEngineAppsDomainMappingsPatch
newAppEngineAppsDomainMappingsPatch appsId domainMappingsId payload =
  AppEngineAppsDomainMappingsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , domainMappingsId = domainMappingsId
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsDomainMappingsPatch
         where
        type Rs AppEngineAppsDomainMappingsPatch = Operation
        type Scopes AppEngineAppsDomainMappingsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppEngineAppsDomainMappingsPatch{..}
          = go appsId domainMappingsId xgafv accessToken
              callback
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AppEngineAppsDomainMappingsPatchResource)
                      Core.mempty

