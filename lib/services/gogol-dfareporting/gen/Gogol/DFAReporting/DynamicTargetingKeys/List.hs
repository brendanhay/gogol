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
-- Module      : Gogol.DFAReporting.DynamicTargetingKeys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of dynamic targeting keys.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicTargetingKeys.list@.
module Gogol.DFAReporting.DynamicTargetingKeys.List
  ( -- * Resource
    DFAReportingDynamicTargetingKeysListResource,

    -- ** Constructing a Request
    DFAReportingDynamicTargetingKeysList (..),
    newDFAReportingDynamicTargetingKeysList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.dynamicTargetingKeys.list@ method which the
-- 'DFAReportingDynamicTargetingKeysList' request conforms to.
type DFAReportingDynamicTargetingKeysListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "dynamicTargetingKeys"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "advertiserId" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "names" Core.Text
    Core.:> Core.QueryParam "objectId" Core.Int64
    Core.:> Core.QueryParam
              "objectType"
              DynamicTargetingKeysListObjectType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              DynamicTargetingKeysListResponse

-- | Retrieves a list of dynamic targeting keys.
--
-- /See:/ 'newDFAReportingDynamicTargetingKeysList' smart constructor.
data DFAReportingDynamicTargetingKeysList = DFAReportingDynamicTargetingKeysList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only dynamic targeting keys whose object has this advertiser ID.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only dynamic targeting keys exactly matching these names.
    names :: (Core.Maybe [Core.Text]),
    -- | Select only dynamic targeting keys with this object ID.
    objectId :: (Core.Maybe Core.Int64),
    -- | Select only dynamic targeting keys with this object type.
    objectType :: (Core.Maybe DynamicTargetingKeysListObjectType),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDynamicTargetingKeysList' with the minimum fields required to make a request.
newDFAReportingDynamicTargetingKeysList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingDynamicTargetingKeysList
newDFAReportingDynamicTargetingKeysList profileId =
  DFAReportingDynamicTargetingKeysList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserId = Core.Nothing,
      callback = Core.Nothing,
      names = Core.Nothing,
      objectId = Core.Nothing,
      objectType = Core.Nothing,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingDynamicTargetingKeysList
  where
  type
    Rs DFAReportingDynamicTargetingKeysList =
      DynamicTargetingKeysListResponse
  type
    Scopes DFAReportingDynamicTargetingKeysList =
      '[Dfatrafficking'FullControl]
  requestClient
    DFAReportingDynamicTargetingKeysList {..} =
      go
        profileId
        xgafv
        accessToken
        advertiserId
        callback
        (names Core.^. Core._Default)
        objectId
        objectType
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingDynamicTargetingKeysListResource
            )
            Core.mempty
