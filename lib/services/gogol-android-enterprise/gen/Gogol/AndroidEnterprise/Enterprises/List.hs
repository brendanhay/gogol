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
-- Module      : Gogol.AndroidEnterprise.Enterprises.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up an enterprise by domain name. This is only supported for enterprises created via the Google-initiated creation flow. Lookup of the id is not needed for enterprises created via the EMM-initiated flow since the EMM learns the enterprise ID in the callback specified in the Enterprises.generateSignupUrl call.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.list@.
module Gogol.AndroidEnterprise.Enterprises.List
  ( -- * Resource
    AndroidEnterpriseEnterprisesListResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesList (..),
    newAndroidEnterpriseEnterprisesList,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.enterprises.list@ method which the
-- 'AndroidEnterpriseEnterprisesList' request conforms to.
type AndroidEnterpriseEnterprisesListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.QueryParam "domain" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EnterprisesListResponse

-- | Looks up an enterprise by domain name. This is only supported for enterprises created via the Google-initiated creation flow. Lookup of the id is not needed for enterprises created via the EMM-initiated flow since the EMM learns the enterprise ID in the callback specified in the Enterprises.generateSignupUrl call.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesList' smart constructor.
data AndroidEnterpriseEnterprisesList = AndroidEnterpriseEnterprisesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The exact primary domain name of the enterprise to look up.
    domain :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesList' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesList ::
  -- |  Required. The exact primary domain name of the enterprise to look up. See 'domain'.
  Core.Text ->
  AndroidEnterpriseEnterprisesList
newAndroidEnterpriseEnterprisesList domain =
  AndroidEnterpriseEnterprisesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      domain = domain,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesList
  where
  type
    Rs AndroidEnterpriseEnterprisesList =
      EnterprisesListResponse
  type
    Scopes AndroidEnterpriseEnterprisesList =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseEnterprisesList {..} =
    go
      (Core.Just domain)
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
              Core.Proxy AndroidEnterpriseEnterprisesListResource
          )
          Core.mempty
