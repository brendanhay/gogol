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
-- Module      : Gogol.DFAReporting.DimensionValues.Query
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of report dimension values for a list of filters.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dimensionValues.query@.
module Gogol.DFAReporting.DimensionValues.Query
  ( -- * Resource
    DFAReportingDimensionValuesQueryResource,

    -- ** Constructing a Request
    DFAReportingDimensionValuesQuery (..),
    newDFAReportingDimensionValuesQuery,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.dimensionValues.query@ method which the
-- 'DFAReportingDimensionValuesQuery' request conforms to.
type DFAReportingDimensionValuesQueryResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "dimensionvalues"
    Core.:> "query"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DimensionValueRequest
    Core.:> Core.Post '[Core.JSON] DimensionValueList

-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ 'newDFAReportingDimensionValuesQuery' smart constructor.
data DFAReportingDimensionValuesQuery = DFAReportingDimensionValuesQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | The value of the nextToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DimensionValueRequest,
    -- | The Campaign Manager 360 user profile ID.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDimensionValuesQuery' with the minimum fields required to make a request.
newDFAReportingDimensionValuesQuery ::
  -- |  Multipart request metadata. See 'payload'.
  DimensionValueRequest ->
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  DFAReportingDimensionValuesQuery
newDFAReportingDimensionValuesQuery payload profileId =
  DFAReportingDimensionValuesQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = 100,
      pageToken = Core.Nothing,
      payload = payload,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingDimensionValuesQuery where
  type Rs DFAReportingDimensionValuesQuery = DimensionValueList
  type
    Scopes DFAReportingDimensionValuesQuery =
      '[Dfareporting'FullControl]
  requestClient DFAReportingDimensionValuesQuery {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      (Core.Just maxResults)
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dFAReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DFAReportingDimensionValuesQueryResource)
          Core.mempty
