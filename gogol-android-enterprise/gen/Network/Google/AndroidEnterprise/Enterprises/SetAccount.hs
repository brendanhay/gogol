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
-- Module      : Network.Google.AndroidEnterprise.Enterprises.SetAccount
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the account that will be used to authenticate to the API as the enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.setAccount@.
module Network.Google.AndroidEnterprise.Enterprises.SetAccount
  ( -- * Resource
    AndroidEnterpriseEnterprisesSetAccountResource,

    -- ** Constructing a Request
    newAndroidEnterpriseEnterprisesSetAccount,
    AndroidEnterpriseEnterprisesSetAccount,
  )
where

import Network.Google.AndroidEnterprise.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidenterprise.enterprises.setAccount@ method which the
-- 'AndroidEnterpriseEnterprisesSetAccount' request conforms to.
type AndroidEnterpriseEnterprisesSetAccountResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "account"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EnterpriseAccount
    Core.:> Core.Put '[Core.JSON] EnterpriseAccount

-- | Sets the account that will be used to authenticate to the API as the enterprise.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesSetAccount' smart constructor.
data AndroidEnterpriseEnterprisesSetAccount = AndroidEnterpriseEnterprisesSetAccount
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EnterpriseAccount,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesSetAccount' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesSetAccount ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EnterpriseAccount ->
  AndroidEnterpriseEnterprisesSetAccount
newAndroidEnterpriseEnterprisesSetAccount enterpriseId payload =
  AndroidEnterpriseEnterprisesSetAccount
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesSetAccount
  where
  type
    Rs AndroidEnterpriseEnterprisesSetAccount =
      EnterpriseAccount
  type
    Scopes AndroidEnterpriseEnterprisesSetAccount =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseEnterprisesSetAccount {..} =
      go
        enterpriseId
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
                  AndroidEnterpriseEnterprisesSetAccountResource
            )
            Core.mempty
