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
-- Module      : Network.Google.AndroidEnterprise.Users.SetAvailableProductSet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the set of products that a user is entitled to access (referred to as /whitelisted/ products). Only products that are approved or products that were previously approved (products with revoked approval) can be whitelisted.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.setAvailableProductSet@.
module Network.Google.AndroidEnterprise.Users.SetAvailableProductSet
  ( -- * Resource
    AndroidEnterpriseUsersSetAvailableProductSetResource,

    -- ** Constructing a Request
    newAndroidEnterpriseUsersSetAvailableProductSet,
    AndroidEnterpriseUsersSetAvailableProductSet,
  )
where

import Network.Google.AndroidEnterprise.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidenterprise.users.setAvailableProductSet@ method which the
-- 'AndroidEnterpriseUsersSetAvailableProductSet' request conforms to.
type AndroidEnterpriseUsersSetAvailableProductSetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "availableProductSet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ProductSet
    Core.:> Core.Put '[Core.JSON] ProductSet

-- | Modifies the set of products that a user is entitled to access (referred to as /whitelisted/ products). Only products that are approved or products that were previously approved (products with revoked approval) can be whitelisted.
--
-- /See:/ 'newAndroidEnterpriseUsersSetAvailableProductSet' smart constructor.
data AndroidEnterpriseUsersSetAvailableProductSet = AndroidEnterpriseUsersSetAvailableProductSet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ProductSet,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseUsersSetAvailableProductSet' with the minimum fields required to make a request.
newAndroidEnterpriseUsersSetAvailableProductSet ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ProductSet ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseUsersSetAvailableProductSet
newAndroidEnterpriseUsersSetAvailableProductSet enterpriseId payload userId =
  AndroidEnterpriseUsersSetAvailableProductSet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseUsersSetAvailableProductSet
  where
  type
    Rs AndroidEnterpriseUsersSetAvailableProductSet =
      ProductSet
  type
    Scopes
      AndroidEnterpriseUsersSetAvailableProductSet =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseUsersSetAvailableProductSet {..} =
      go
        enterpriseId
        userId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseUsersSetAvailableProductSetResource
            )
            Core.mempty
