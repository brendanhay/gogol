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
-- Module      : Gogol.DoubleClickSearch.SavedColumns.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.savedColumns.list@.
module Gogol.DoubleClickSearch.SavedColumns.List
  ( -- * Resource
    DoubleClickSearchSavedColumnsListResource,

    -- ** Constructing a Request
    newDoubleClickSearchSavedColumnsList,
    DoubleClickSearchSavedColumnsList,
  )
where

import Gogol.DoubleClickSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclicksearch.savedColumns.list@ method which the
-- 'DoubleClickSearchSavedColumnsList' request conforms to.
type DoubleClickSearchSavedColumnsListResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "agency"
    Core.:> Core.Capture "agencyId" Core.Int64
    Core.:> "advertiser"
    Core.:> Core.Capture "advertiserId" Core.Int64
    Core.:> "savedcolumns"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SavedColumnList

-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ 'newDoubleClickSearchSavedColumnsList' smart constructor.
data DoubleClickSearchSavedColumnsList = DoubleClickSearchSavedColumnsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | DS ID of the advertiser.
    advertiserId :: Core.Int64,
    -- | DS ID of the agency.
    agencyId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchSavedColumnsList' with the minimum fields required to make a request.
newDoubleClickSearchSavedColumnsList ::
  -- |  DS ID of the advertiser. See 'advertiserId'.
  Core.Int64 ->
  -- |  DS ID of the agency. See 'agencyId'.
  Core.Int64 ->
  DoubleClickSearchSavedColumnsList
newDoubleClickSearchSavedColumnsList advertiserId agencyId =
  DoubleClickSearchSavedColumnsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserId = advertiserId,
      agencyId = agencyId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleClickSearchSavedColumnsList
  where
  type
    Rs DoubleClickSearchSavedColumnsList =
      SavedColumnList
  type
    Scopes DoubleClickSearchSavedColumnsList =
      '[Doubleclicksearch'FullControl]
  requestClient DoubleClickSearchSavedColumnsList {..} =
    go
      agencyId
      advertiserId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      doubleClickSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleClickSearchSavedColumnsListResource
          )
          Core.mempty
