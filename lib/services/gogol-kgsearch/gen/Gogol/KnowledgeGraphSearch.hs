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
-- Module      : Gogol.KnowledgeGraphSearch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches the Google Knowledge Graph for entities.
--
-- /See:/ <https://developers.google.com/knowledge-graph/ Knowledge Graph Search API Reference>
module Gogol.KnowledgeGraphSearch
  ( -- * Configuration
    knowledgeGraphSearchService,

    -- * Resources

    -- ** kgsearch.entities.search
    KgsearchEntitiesSearchResource,
    newKgsearchEntitiesSearch,
    KgsearchEntitiesSearch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** SearchResponse
    SearchResponse (..),
    newSearchResponse,
  )
where

import Gogol.KnowledgeGraphSearch.Kgsearch.Entities.Search
import Gogol.KnowledgeGraphSearch.Types
