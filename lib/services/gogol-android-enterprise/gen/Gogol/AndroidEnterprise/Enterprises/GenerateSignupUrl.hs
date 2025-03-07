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
-- Module      : Gogol.AndroidEnterprise.Enterprises.GenerateSignupUrl
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a sign-up URL.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.generateSignupUrl@.
module Gogol.AndroidEnterprise.Enterprises.GenerateSignupUrl
  ( -- * Resource
    AndroidEnterpriseEnterprisesGenerateSignupUrlResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesGenerateSignupUrl (..),
    newAndroidEnterpriseEnterprisesGenerateSignupUrl,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.enterprises.generateSignupUrl@ method which the
-- 'AndroidEnterpriseEnterprisesGenerateSignupUrl' request conforms to.
type AndroidEnterpriseEnterprisesGenerateSignupUrlResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> "signupUrl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "adminEmail" Core.Text
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
    -- | Optional. Email address used to prefill the admin field of the enterprise signup form. This value is a hint only and can be altered by the user.
    adminEmail :: (Core.Maybe Core.Text),
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
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      adminEmail = Core.Nothing,
      callback = Core.Nothing,
      callbackUrl = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesGenerateSignupUrl
  where
  type Rs AndroidEnterpriseEnterprisesGenerateSignupUrl = SignupInfo
  type
    Scopes AndroidEnterpriseEnterprisesGenerateSignupUrl =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseEnterprisesGenerateSignupUrl {..} =
    go
      xgafv
      accessToken
      adminEmail
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
              Core.Proxy AndroidEnterpriseEnterprisesGenerateSignupUrlResource
          )
          Core.mempty
