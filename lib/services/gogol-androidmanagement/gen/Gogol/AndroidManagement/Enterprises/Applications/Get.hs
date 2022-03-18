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
-- Module      : Gogol.AndroidManagement.Enterprises.Applications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets info about an application.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.applications.get@.
module Gogol.AndroidManagement.Enterprises.Applications.Get
  ( -- * Resource
    AndroidManagementEnterprisesApplicationsGetResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesApplicationsGet,
    AndroidManagementEnterprisesApplicationsGet,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.applications.get@ method which the
-- 'AndroidManagementEnterprisesApplicationsGet' request conforms to.
type AndroidManagementEnterprisesApplicationsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Application

-- | Gets info about an application.
--
-- /See:/ 'newAndroidManagementEnterprisesApplicationsGet' smart constructor.
data AndroidManagementEnterprisesApplicationsGet = AndroidManagementEnterprisesApplicationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language for localized application info, as a BCP47 tag (e.g. \"en-US\", \"de\"). If not specified the default language of the application will be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The name of the application in the form enterprises\/{enterpriseId}\/applications\/{package_name}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesApplicationsGet' with the minimum fields required to make a request.
newAndroidManagementEnterprisesApplicationsGet ::
  -- |  The name of the application in the form enterprises\/{enterpriseId}\/applications\/{package_name}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesApplicationsGet
newAndroidManagementEnterprisesApplicationsGet name =
  AndroidManagementEnterprisesApplicationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesApplicationsGet
  where
  type
    Rs AndroidManagementEnterprisesApplicationsGet =
      Application
  type
    Scopes
      AndroidManagementEnterprisesApplicationsGet =
      '["https://www.googleapis.com/auth/androidmanagement"]
  requestClient
    AndroidManagementEnterprisesApplicationsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        languageCode
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesApplicationsGetResource
            )
            Core.mempty
