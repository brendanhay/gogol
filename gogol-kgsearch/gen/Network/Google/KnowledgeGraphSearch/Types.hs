{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.KnowledgeGraphSearch.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.KnowledgeGraphSearch.Types
    (
    -- * Service Configuration
      knowledgeGraphSearchService

    -- * SearchResponse
    , SearchResponse
    , searchResponse
    , srContext
    , srItemListElement
    , srType

    -- * Xgafv
    , Xgafv (..)
    ) where

import Network.Google.KnowledgeGraphSearch.Types.Product
import Network.Google.KnowledgeGraphSearch.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Knowledge Graph Search API. This contains the host and root path used as a starting point for constructing service requests.
knowledgeGraphSearchService :: ServiceConfig
knowledgeGraphSearchService
  = defaultService (ServiceId "kgsearch:v1")
      "kgsearch.googleapis.com"
