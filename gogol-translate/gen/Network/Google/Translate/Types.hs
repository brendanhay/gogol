{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    -- * Service URL
      translateURL

    -- * TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trTranslatedText

    -- * DetectionsListResponse
    , DetectionsListResponse
    , detectionsListResponse
    , dlrDetections

    -- * LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrLanguages

    -- * LanguageTranslationsListFormat
    , LanguageTranslationsListFormat (..)

    -- * DetectionsResource
    , DetectionsResource
    , detectionsResource
    , drConfidence
    , drIsReliable
    , drLanguage

    -- * LanguagesResource
    , LanguagesResource
    , languagesResource
    , lrName
    , lrLanguage

    -- * TranslationsListResponse
    , TranslationsListResponse
    , translationsListResponse
    , tlrTranslations

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types.Product
import           Network.Google.Translate.Types.Sum

-- | URL referring to version 'v2' of the Translate API.
translateURL :: BaseUrl
translateURL
  = BaseUrl Https
      "https://www.googleapis.com/language/translate/"
      443
