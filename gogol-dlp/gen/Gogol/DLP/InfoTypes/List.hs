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
-- Module      : Gogol.DLP.InfoTypes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the sensitive information types that the DLP API supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.infoTypes.list@.
module Gogol.DLP.InfoTypes.List
  ( -- * Resource
    DLPInfoTypesListResource,

    -- ** Constructing a Request
    newDLPInfoTypesList,
    DLPInfoTypesList,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.infoTypes.list@ method which the
-- 'DLPInfoTypesList' request conforms to.
type DLPInfoTypesListResource =
  "v2"
    Core.:> "infoTypes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "locationId" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GooglePrivacyDlpV2ListInfoTypesResponse

-- | Returns a list of the sensitive information types that the DLP API supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference to learn more.
--
-- /See:/ 'newDLPInfoTypesList' smart constructor.
data DLPInfoTypesList = DLPInfoTypesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT.
    filter :: (Core.Maybe Core.Text),
    -- | BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en-US strings will be returned.
    languageCode :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | The parent resource name. The format of this value is as follows: locations\/ LOCATION_ID
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPInfoTypesList' with the minimum fields required to make a request.
newDLPInfoTypesList ::
  DLPInfoTypesList
newDLPInfoTypesList =
  DLPInfoTypesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      languageCode = Core.Nothing,
      locationId = Core.Nothing,
      parent = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPInfoTypesList where
  type
    Rs DLPInfoTypesList =
      GooglePrivacyDlpV2ListInfoTypesResponse
  type
    Scopes DLPInfoTypesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient DLPInfoTypesList {..} =
    go
      xgafv
      accessToken
      callback
      filter
      languageCode
      locationId
      parent
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DLPInfoTypesListResource)
          Core.mempty
