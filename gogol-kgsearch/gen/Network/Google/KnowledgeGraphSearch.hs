{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.KnowledgeGraphSearch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Knowledge Graph Search API allows developers to search the Google
-- Knowledge Graph for entities.
--
-- /See:/ <https://developers.google.com/knowledge-graph/ Knowledge Graph Search API Reference>
module Network.Google.KnowledgeGraphSearch
    (
    -- * Service Configuration
      knowledgeGraphSearchService

    -- * API Declaration
    , KnowledgeGraphSearchAPI

    -- * Resources

    -- ** kgsearch.entities.search
    , module Network.Google.Resource.Kgsearch.Entities.Search

    -- * Types

    -- ** SearchResponse
    , SearchResponse
    , searchResponse
    , srContext
    , srItemListElement
    , srType
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Kgsearch.Entities.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Knowledge Graph Search API service.
type KnowledgeGraphSearchAPI = EntitiesSearchResource
