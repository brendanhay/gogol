{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AndroidManagement.SignupUrls.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enterprise signup URL.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.signupUrls.create@.
module Gogol.AndroidManagement.SignupUrls.Create
  ( -- * Resource
    AndroidManagementSignupUrlsCreateResource,

    -- ** Constructing a Request
    AndroidManagementSignupUrlsCreate (..),
    newAndroidManagementSignupUrlsCreate,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.signupUrls.create@ method which the
-- 'AndroidManagementSignupUrlsCreate' request conforms to.
type AndroidManagementSignupUrlsCreateResource =
  "v1"
    Core.:> "signupUrls"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "adminEmail" Core.Text
    Core.:> Core.QueryParams "allowedDomains" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "callbackUrl" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] SignupUrl

-- | Creates an enterprise signup URL.
--
-- /See:/ 'newAndroidManagementSignupUrlsCreate' smart constructor.
data AndroidManagementSignupUrlsCreate = AndroidManagementSignupUrlsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. Email address used to prefill the admin field of the enterprise signup form. This value is a hint only and can be altered by the user. If allowedDomains is non-empty then this must belong to one of the allowedDomains.
    adminEmail :: (Core.Maybe Core.Text),
    -- | Optional. A list of domains that are permitted for the admin email. The IT admin cannot enter an email address with a domain name that is not in this list. Subdomains of domains in this list are not allowed but can be allowed by adding a second entry which has /. prefixed to the domain name (e.g. /.example.com). If the field is not present or is an empty list then the IT admin is free to use any valid domain name. Personal email domains are always allowed, but will result in the creation of a managed Google Play Accounts enterprise.
    allowedDomains :: (Core.Maybe [Core.Text]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The callback URL that the admin will be redirected to after successfully creating an enterprise. Before redirecting there the system will add a query parameter to this URL named enterpriseToken which will contain an opaque token to be used for the create enterprise request. The URL will be parsed then reformatted in order to add the enterpriseToken parameter, so there may be some minor formatting changes.
    callbackUrl :: (Core.Maybe Core.Text),
    -- | The ID of the Google Cloud Platform project which will own the enterprise.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementSignupUrlsCreate' with the minimum fields required to make a request.
newAndroidManagementSignupUrlsCreate ::
  AndroidManagementSignupUrlsCreate
newAndroidManagementSignupUrlsCreate =
  AndroidManagementSignupUrlsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      adminEmail = Core.Nothing,
      allowedDomains = Core.Nothing,
      callback = Core.Nothing,
      callbackUrl = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidManagementSignupUrlsCreate where
  type Rs AndroidManagementSignupUrlsCreate = SignupUrl
  type
    Scopes AndroidManagementSignupUrlsCreate =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementSignupUrlsCreate {..} =
    go
      xgafv
      accessToken
      adminEmail
      (allowedDomains Core.^. Core._Default)
      callback
      callbackUrl
      projectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementSignupUrlsCreateResource
          )
          Core.mempty
