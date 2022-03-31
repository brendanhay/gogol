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
-- Module      : Gogol.DFAReporting.PostalCodes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one postal code by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.postalCodes.get@.
module Gogol.DFAReporting.PostalCodes.Get
  ( -- * Resource
    DFAReportingPostalCodesGetResource,

    -- ** Constructing a Request
    newDFAReportingPostalCodesGet,
    DFAReportingPostalCodesGet,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.postalCodes.get@ method which the
-- 'DFAReportingPostalCodesGet' request conforms to.
type DFAReportingPostalCodesGetResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "postalCodes"
    Core.:> Core.Capture "code" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PostalCode

-- | Gets one postal code by ID.
--
-- /See:/ 'newDFAReportingPostalCodesGet' smart constructor.
data DFAReportingPostalCodesGet = DFAReportingPostalCodesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Postal code ID.
    code :: Core.Text,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingPostalCodesGet' with the minimum fields required to make a request.
newDFAReportingPostalCodesGet ::
  -- |  Postal code ID. See 'code'.
  Core.Text ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingPostalCodesGet
newDFAReportingPostalCodesGet code profileId =
  DFAReportingPostalCodesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      code = code,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingPostalCodesGet
  where
  type Rs DFAReportingPostalCodesGet = PostalCode
  type
    Scopes DFAReportingPostalCodesGet =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingPostalCodesGet {..} =
    go
      profileId
      code
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingPostalCodesGetResource
          )
          Core.mempty
