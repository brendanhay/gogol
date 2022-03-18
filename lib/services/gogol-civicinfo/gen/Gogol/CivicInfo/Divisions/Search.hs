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
-- Module      : Gogol.CivicInfo.Divisions.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.divisions.search@.
module Gogol.CivicInfo.Divisions.Search
  ( -- * Resource
    CivicInfoDivisionsSearchResource,

    -- ** Constructing a Request
    newCivicInfoDivisionsSearch,
    CivicInfoDivisionsSearch,
  )
where

import Gogol.CivicInfo.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @civicinfo.divisions.search@ method which the
-- 'CivicInfoDivisionsSearch' request conforms to.
type CivicInfoDivisionsSearchResource =
  "civicinfo"
    Core.:> "v2"
    Core.:> "divisions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DivisionSearchResponse

-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ 'newCivicInfoDivisionsSearch' smart constructor.
data CivicInfoDivisionsSearch = CivicInfoDivisionsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The search query. Queries can cover any parts of a OCD ID or a human readable division name. All words given in the query are treated as required patterns. In addition to that, most query operators of the Apache Lucene library are supported. See http:\/\/lucene.apache.org\/core\/2/9/4\/queryparsersyntax.html
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicInfoDivisionsSearch' with the minimum fields required to make a request.
newCivicInfoDivisionsSearch ::
  CivicInfoDivisionsSearch
newCivicInfoDivisionsSearch =
  CivicInfoDivisionsSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      query = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CivicInfoDivisionsSearch where
  type
    Rs CivicInfoDivisionsSearch =
      DivisionSearchResponse
  type Scopes CivicInfoDivisionsSearch = '[]
  requestClient CivicInfoDivisionsSearch {..} =
    go
      xgafv
      accessToken
      callback
      query
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      civicInfoService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CivicInfoDivisionsSearchResource
          )
          Core.mempty
