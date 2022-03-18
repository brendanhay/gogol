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
-- Module      : Gogol.AppEngine.Apps.AuthorizedCertificates.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate/data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display/name may also be updated.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.patch@.
module Gogol.AppEngine.Apps.AuthorizedCertificates.Patch
    (
    -- * Resource
      AppEngineAppsAuthorizedCertificatesPatchResource

    -- ** Constructing a Request
    , newAppEngineAppsAuthorizedCertificatesPatch
    , AppEngineAppsAuthorizedCertificatesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.authorizedCertificates.patch@ method which the
-- 'AppEngineAppsAuthorizedCertificatesPatch' request conforms to.
type AppEngineAppsAuthorizedCertificatesPatchResource
     =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "authorizedCertificates" Core.:>
             Core.Capture "authorizedCertificatesId" Core.Text
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] AuthorizedCertificate
                               Core.:>
                               Core.Patch '[Core.JSON] AuthorizedCertificate

-- | Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate/data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display/name may also be updated.
--
-- /See:/ 'newAppEngineAppsAuthorizedCertificatesPatch' smart constructor.
data AppEngineAppsAuthorizedCertificatesPatch = AppEngineAppsAuthorizedCertificatesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/authorizedCertificates\/12345.
    , appsId :: Core.Text
      -- | Part of @name@. See documentation of @appsId@.
    , authorizedCertificatesId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: AuthorizedCertificate
      -- | Standard field mask for the set of fields to be updated. Updates are only supported on the certificate/raw/data and display_name fields.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsAuthorizedCertificatesPatch' with the minimum fields required to make a request.
newAppEngineAppsAuthorizedCertificatesPatch 
    ::  Core.Text
       -- ^  Part of @name@. Name of the resource to update. Example: apps\/myapp\/authorizedCertificates\/12345. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'authorizedCertificatesId'.
    -> AuthorizedCertificate
       -- ^  Multipart request metadata. See 'payload'.
    -> AppEngineAppsAuthorizedCertificatesPatch
newAppEngineAppsAuthorizedCertificatesPatch appsId authorizedCertificatesId payload =
  AppEngineAppsAuthorizedCertificatesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , authorizedCertificatesId = authorizedCertificatesId
    , callback = Core.Nothing
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsAuthorizedCertificatesPatch
         where
        type Rs AppEngineAppsAuthorizedCertificatesPatch =
             AuthorizedCertificate
        type Scopes AppEngineAppsAuthorizedCertificatesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AppEngineAppsAuthorizedCertificatesPatch{..}
          = go appsId authorizedCertificatesId xgafv
              accessToken
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
                         Core.Proxy
                           AppEngineAppsAuthorizedCertificatesPatchResource)
                      Core.mempty

