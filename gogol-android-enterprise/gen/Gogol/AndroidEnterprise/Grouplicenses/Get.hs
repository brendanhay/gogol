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
-- Module      : Gogol.AndroidEnterprise.Grouplicenses.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenses.get@.
module Gogol.AndroidEnterprise.Grouplicenses.Get
  ( -- * Resource
    AndroidEnterpriseGrouplicensesGetResource,

    -- ** Constructing a Request
    newAndroidEnterpriseGrouplicensesGet,
    AndroidEnterpriseGrouplicensesGet,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.grouplicenses.get@ method which the
-- 'AndroidEnterpriseGrouplicensesGet' request conforms to.
type AndroidEnterpriseGrouplicensesGetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "groupLicenses"
    Core.:> Core.Capture "groupLicenseId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GroupLicense

-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ 'newAndroidEnterpriseGrouplicensesGet' smart constructor.
data AndroidEnterpriseGrouplicensesGet = AndroidEnterpriseGrouplicensesGet
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

-- | Creates a value of 'AndroidEnterpriseGrouplicensesGet' with the minimum fields required to make a request.
newAndroidEnterpriseGrouplicensesGet ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product the group license is for, e.g. \"app:com.google.android.gm\". See 'groupLicenseId'.
  Core.Text ->
  AndroidEnterpriseGrouplicensesGet
newAndroidEnterpriseGrouplicensesGet enterpriseId groupLicenseId =
  AndroidEnterpriseGrouplicensesGet
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
    AndroidEnterpriseGrouplicensesGet
  where
  type
    Rs AndroidEnterpriseGrouplicensesGet =
      GroupLicense
  type
    Scopes AndroidEnterpriseGrouplicensesGet =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient AndroidEnterpriseGrouplicensesGet {..} =
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
              Core.Proxy AndroidEnterpriseGrouplicensesGetResource
          )
          Core.mempty
