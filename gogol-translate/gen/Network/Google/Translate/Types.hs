{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Translate.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types
    (
    -- * API Definition
      translate


    -- * DetectionsListResponse
    , DetectionsListResponse
    , detectionsListResponse
    , dlrDetections

    -- * DetectionsResourceItem
    , DetectionsResourceItem
    , detectionsResourceItem
    , driConfidence
    , driIsReliable
    , driLanguage

    -- * LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrLanguages

    -- * LanguagesResource
    , LanguagesResource
    , languagesResource
    , lrName
    , lrLanguage

    -- * TranslationsListResponse
    , TranslationsListResponse
    , translationsListResponse
    , tlrTranslations

    -- * TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trTranslatedText
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types.Product
import           Network.Google.Translate.Types.Sum

translate :: a
translate = error "translate"
