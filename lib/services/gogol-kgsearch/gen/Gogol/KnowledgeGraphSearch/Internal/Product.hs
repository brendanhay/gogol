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
-- Module      : Gogol.KnowledgeGraphSearch.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.KnowledgeGraphSearch.Internal.Product
  ( -- * SearchResponse
    SearchResponse (..),
    newSearchResponse,
  )
where

import Gogol.KnowledgeGraphSearch.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Response message includes the context and a list of matching results which contain the detail of associated entities.
--
-- /See:/ 'newSearchResponse' smart constructor.
data SearchResponse = SearchResponse
  { -- | The local context applicable for the response. See more details at http:\/\/www.w3.org\/TR\/json-ld\/#context-definitions.
    context :: (Core.Maybe Core.Value),
    -- | The schema type of top-level JSON-LD object, e.g. ItemList.
    type' :: (Core.Maybe Core.Value),
    -- | The item list of search results.
    itemListElement :: (Core.Maybe [Core.Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
newSearchResponse ::
  SearchResponse
newSearchResponse =
  SearchResponse
    { context = Core.Nothing,
      type' = Core.Nothing,
      itemListElement = Core.Nothing
    }

instance Core.FromJSON SearchResponse where
  parseJSON =
    Core.withObject
      "SearchResponse"
      ( \o ->
          SearchResponse
            Core.<$> (o Core..:? "@context")
            Core.<*> (o Core..:? "@type")
            Core.<*> (o Core..:? "itemListElement")
      )

instance Core.ToJSON SearchResponse where
  toJSON SearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("@context" Core..=) Core.<$> context,
            ("@type" Core..=) Core.<$> type',
            ("itemListElement" Core..=)
              Core.<$> itemListElement
          ]
      )
