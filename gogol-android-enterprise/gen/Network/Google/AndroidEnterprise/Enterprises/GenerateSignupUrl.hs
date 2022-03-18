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
-- Module      : Network.Google.AndroidEnterprise.Enterprises.GenerateSignupUrl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a sign-up URL.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.generateSignupUrl@.
module Network.Google.AndroidEnterprise.Enterprises.GenerateSignupUrl
  ( -- * Resource
    AndroidEnterpriseEnterprisesGenerateSignupUrlResource,

    -- ** Constructing a Request
    newAndroidEnterpriseEnterprisesGenerateSignupUrl,
    AndroidEnterpriseEnterprisesGenerateSignupUrl,
  )
where

import Network.Google.AndroidEnterprise.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidenterprise.enterprises.generateSignupUrl@ method which the
-- 'AndroidEnterpriseEnterprisesGenerateSignupUrl' request conforms to.
type AndroidEnterpriseEnterprisesGenerateSignupUrlResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> "signupUrl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "callbackUrl" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] SignupInfo

-- | Generates a sign-up URL.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesGenerateSignupUrl' smart constructor.
data AndroidEnterpriseEnterprisesGenerateSignupUrl = AndroidEnterpriseEnterprisesGenerateSignupUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The callback URL to which the Admin will be redirected after successfully creating an enterprise. Before redirecting there the system will add a single query parameter to this URL named \"enterpriseToken\" which will contain an opaque token to be used for the CompleteSignup request. Beware that this means that the URL will be parsed, the parameter added and then a new URL formatted, i.e. there may be some minor formatting changes and, more importantly, the URL must be well-formed so that it can be parsed.
    callbackUrl :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesGenerateSignupUrl' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesGenerateSignupUrl ::
  AndroidEnterpriseEnterprisesGenerateSignupUrl
newAndroidEnterpriseEnterprisesGenerateSignupUrl =
  AndroidEnterpriseEnterprisesGenerateSignupUrl
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      callbackUrl = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesGenerateSignupUrl
  where
  type
    Rs AndroidEnterpriseEnterprisesGenerateSignupUrl =
      SignupInfo
  type
    Scopes
      AndroidEnterpriseEnterprisesGenerateSignupUrl =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseEnterprisesGenerateSignupUrl {..} =
      go
        xgafv
        accessToken
        callback
        callbackUrl
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseEnterprisesGenerateSignupUrlResource
            )
            Core.mempty
