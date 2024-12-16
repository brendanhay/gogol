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
-- Module      : Gogol.CustomSearch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches over a website or collection of websites
--
-- /See:/ <https://developers.google.com/custom-search/v1/introduction Custom Search API Reference>
module Gogol.CustomSearch
    (
    -- * Configuration
      customSearchService

    -- * Resources

    -- ** search.cse.list
    , SearchCseListResource
    , SearchCseList (..)
    , newSearchCseList

    -- ** search.cse.siterestrict.list
    , SearchCseSiterestrictListResource
    , SearchCseSiterestrictList (..)
    , newSearchCseSiterestrictList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Promotion
    , Promotion (..)
    , newPromotion

    -- ** Promotion_BodyLinesItem
    , Promotion_BodyLinesItem (..)
    , newPromotion_BodyLinesItem

    -- ** Promotion_Image
    , Promotion_Image (..)
    , newPromotion_Image

    -- ** Result
    , Result (..)
    , newResult

    -- ** Result_Image
    , Result_Image (..)
    , newResult_Image

    -- ** Result_LabelsItem
    , Result_LabelsItem (..)
    , newResult_LabelsItem

    -- ** Result_Pagemap
    , Result_Pagemap (..)
    , newResult_Pagemap

    -- ** Search
    , Search (..)
    , newSearch

    -- ** Search_Context
    , Search_Context (..)
    , newSearch_Context

    -- ** Search_Queries
    , Search_Queries (..)
    , newSearch_Queries

    -- ** Search_Queries_NextPageItem
    , Search_Queries_NextPageItem (..)
    , newSearch_Queries_NextPageItem

    -- ** Search_Queries_PreviousPageItem
    , Search_Queries_PreviousPageItem (..)
    , newSearch_Queries_PreviousPageItem

    -- ** Search_Queries_RequestItem
    , Search_Queries_RequestItem (..)
    , newSearch_Queries_RequestItem

    -- ** Search_SearchInformation
    , Search_SearchInformation (..)
    , newSearch_SearchInformation

    -- ** Search_Spelling
    , Search_Spelling (..)
    , newSearch_Spelling

    -- ** Search_Url
    , Search_Url (..)
    , newSearch_Url

    -- ** CseListImgColorType
    , CseListImgColorType (..)

    -- ** CseListImgDominantColor
    , CseListImgDominantColor (..)

    -- ** CseListImgSize
    , CseListImgSize (..)

    -- ** CseListImgType
    , CseListImgType (..)

    -- ** CseListSafe
    , CseListSafe (..)

    -- ** CseListSearchType
    , CseListSearchType (..)

    -- ** CseListSiteSearchFilter
    , CseListSiteSearchFilter (..)

    -- ** CseSiterestrictListImgColorType
    , CseSiterestrictListImgColorType (..)

    -- ** CseSiterestrictListImgDominantColor
    , CseSiterestrictListImgDominantColor (..)

    -- ** CseSiterestrictListImgSize
    , CseSiterestrictListImgSize (..)

    -- ** CseSiterestrictListImgType
    , CseSiterestrictListImgType (..)

    -- ** CseSiterestrictListSafe
    , CseSiterestrictListSafe (..)

    -- ** CseSiterestrictListSearchType
    , CseSiterestrictListSearchType (..)

    -- ** CseSiterestrictListSiteSearchFilter
    , CseSiterestrictListSiteSearchFilter (..)
    ) where

import Gogol.CustomSearch.Search.Cse.List
import Gogol.CustomSearch.Search.Cse.Siterestrict.List
import Gogol.CustomSearch.Types
