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
-- Module      : Gogol.AndroidEnterprise.Grouplicenseusers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IDs of the users who have been granted entitlements under the license. __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenseusers.list@.
module Gogol.AndroidEnterprise.Grouplicenseusers.List
  ( -- * Resource
    AndroidEnterpriseGrouplicenseusersListResource,

    -- ** Constructing a Request
    AndroidEnterpriseGrouplicenseusersList (..),
    newAndroidEnterpriseGrouplicenseusersList,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.grouplicenseusers.list@ method which the
-- 'AndroidEnterpriseGrouplicenseusersList' request conforms to.
type AndroidEnterpriseGrouplicenseusersListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "groupLicenses"
    Core.:> Core.Capture "groupLicenseId" Core.Text
    Core.:> "users"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GroupLicenseUsersListResponse

-- | Retrieves the IDs of the users who have been granted entitlements under the license. __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ 'newAndroidEnterpriseGrouplicenseusersList' smart constructor.
data AndroidEnterpriseGrouplicenseusersList = AndroidEnterpriseGrouplicenseusersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The ID of the product the group license is for, e.g. \"app:com.google.android.gm\".
    groupLicenseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseGrouplicenseusersList' with the minimum fields required to make a request.
newAndroidEnterpriseGrouplicenseusersList ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product the group license is for, e.g. \"app:com.google.android.gm\". See 'groupLicenseId'.
  Core.Text ->
  AndroidEnterpriseGrouplicenseusersList
newAndroidEnterpriseGrouplicenseusersList enterpriseId groupLicenseId =
  AndroidEnterpriseGrouplicenseusersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      groupLicenseId = groupLicenseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseGrouplicenseusersList
  where
  type
    Rs AndroidEnterpriseGrouplicenseusersList =
      GroupLicenseUsersListResponse
  type
    Scopes AndroidEnterpriseGrouplicenseusersList =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseGrouplicenseusersList {..} =
      go
        enterpriseId
        groupLicenseId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseGrouplicenseusersListResource
            )
            Core.mempty
