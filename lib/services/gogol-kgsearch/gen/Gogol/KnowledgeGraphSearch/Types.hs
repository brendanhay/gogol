{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.KnowledgeGraphSearch.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.KnowledgeGraphSearch.Types
    (
    -- * Configuration
      knowledgeGraphSearchService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** SearchResponse
    , SearchResponse (..)
    , newSearchResponse
    ) where

import qualified Gogol.Prelude as Core
import Gogol.KnowledgeGraphSearch.Internal.Product
import Gogol.KnowledgeGraphSearch.Internal.Sum

-- | Default request referring to version @v1@ of the Knowledge Graph Search API. This contains the host and root path used as a starting point for constructing service requests.
knowledgeGraphSearchService :: Core.ServiceConfig
knowledgeGraphSearchService
  = Core.defaultService (Core.ServiceId "kgsearch:v1")
      "kgsearch.googleapis.com"
