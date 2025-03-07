{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.KnowledgeGraphSearch.Kgsearch.Entities.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches Knowledge Graph for entities that match the constraints. A list of matched entities will be returned in response, which will be in JSON-LD format and compatible with http:\/\/schema.org
--
-- /See:/ <https://developers.google.com/knowledge-graph/ Knowledge Graph Search API Reference> for @kgsearch.entities.search@.
module Gogol.KnowledgeGraphSearch.Kgsearch.Entities.Search
  ( -- * Resource
    KgsearchEntitiesSearchResource,

    -- ** Constructing a Request
    KgsearchEntitiesSearch (..),
    newKgsearchEntitiesSearch,
  )
where

import Gogol.KnowledgeGraphSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @kgsearch.entities.search@ method which the
-- 'KgsearchEntitiesSearch' request conforms to.
type KgsearchEntitiesSearchResource =
  "v1"
    Core.:> "entities:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Text
    Core.:> Core.QueryParam "indent" Core.Bool
    Core.:> Core.QueryParams "languages" Core.Text
    Core.:> Core.QueryParam "limit" Core.Int32
    Core.:> Core.QueryParam "prefix" Core.Bool
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParams "types" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchResponse

-- | Searches Knowledge Graph for entities that match the constraints. A list of matched entities will be returned in response, which will be in JSON-LD format and compatible with http:\/\/schema.org
--
-- /See:/ 'newKgsearchEntitiesSearch' smart constructor.
data KgsearchEntitiesSearch = KgsearchEntitiesSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The list of entity id to be used for search instead of query string. To specify multiple ids in the HTTP request, repeat the parameter in the URL as in ...?ids=A&ids=B
    ids :: (Core.Maybe [Core.Text]),
    -- | Enables indenting of json results.
    indent :: (Core.Maybe Core.Bool),
    -- | The list of language codes (defined in ISO 693) to run the query with, e.g. \'en\'.
    languages :: (Core.Maybe [Core.Text]),
    -- | Limits the number of entities to be returned.
    limit :: (Core.Maybe Core.Int32),
    -- | Enables prefix match against names and aliases of entities
    prefix :: (Core.Maybe Core.Bool),
    -- | The literal query string for search.
    query :: (Core.Maybe Core.Text),
    -- | Restricts returned entities with these types, e.g. Person (as defined in http:\/\/schema.org\/Person). If multiple types are specified, returned entities will contain one or more of these types.
    types :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KgsearchEntitiesSearch' with the minimum fields required to make a request.
newKgsearchEntitiesSearch ::
  KgsearchEntitiesSearch
newKgsearchEntitiesSearch =
  KgsearchEntitiesSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      indent = Core.Nothing,
      languages = Core.Nothing,
      limit = Core.Nothing,
      prefix = Core.Nothing,
      query = Core.Nothing,
      types = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest KgsearchEntitiesSearch where
  type Rs KgsearchEntitiesSearch = SearchResponse
  type Scopes KgsearchEntitiesSearch = '[]
  requestClient KgsearchEntitiesSearch {..} =
    go
      xgafv
      accessToken
      callback
      (ids Core.^. Core._Default)
      indent
      (languages Core.^. Core._Default)
      limit
      prefix
      query
      (types Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      knowledgeGraphSearchService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy KgsearchEntitiesSearchResource)
          Core.mempty
