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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Keys.RetrieveLegacySecretKey
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the secret key related to the specified public key. You must use the legacy secret key only in a 3rd party integration with legacy reCAPTCHA.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.keys.retrieveLegacySecretKey@.
module Gogol.ReCaptchaEnterprise.Projects.Keys.RetrieveLegacySecretKey
    (
    -- * Resource
      ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKeyResource

    -- ** Constructing a Request
    , ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey (..)
    , newReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.keys.retrieveLegacySecretKey@ method which the
-- 'ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey' request conforms to.
type ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKeyResource
     =
     "v1" Core.:>
       Core.CaptureMode "key" "retrieveLegacySecretKey"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse

-- | Returns the secret key related to the specified public key. You must use the legacy secret key only in a 3rd party integration with legacy reCAPTCHA.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey' smart constructor.
data ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey = ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The public key name linked to the requested secret key in the format @projects\/{project}\/keys\/{key}@.
    , key :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey 
    ::  Core.Text
       -- ^  Required. The public key name linked to the requested secret key in the format @projects\/{project}\/keys\/{key}@. See 'key'.
    -> ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
newReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey key =
  ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , key = key
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
         where
        type Rs
               ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
             =
             GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
        type Scopes
               ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey
             = '[CloudPlatform'FullControl]
        requestClient
          ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKey{..}
          = go key xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              reCaptchaEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReCaptchaEnterpriseProjectsKeysRetrieveLegacySecretKeyResource)
                      Core.mempty

