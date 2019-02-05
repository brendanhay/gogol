{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Translate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Translation API lets websites and programs integrate
-- with Google Translate programmatically.
--
-- /See:/ <https://code.google.com/apis/language/translate/v2/getting_started.html Google Cloud Translation API Reference>
module Network.Google.Translate
    (
    -- * Service Configuration
      translateService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudTranslationScope

    -- * API Declaration
    , TranslateAPI

    -- * Resources

    -- ** language.detections.detect
    , module Network.Google.Resource.Language.Detections.Detect

    -- ** language.detections.list
    , module Network.Google.Resource.Language.Detections.List

    -- ** language.languages.list
    , module Network.Google.Resource.Language.Languages.List

    -- ** language.translations.list
    , module Network.Google.Resource.Language.Translations.List

    -- ** language.translations.translate
    , module Network.Google.Resource.Language.Translations.Translate

    -- * Types

    -- ** DetectLanguageRequest
    , DetectLanguageRequest
    , detectLanguageRequest
    , dlrQ

    -- ** TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trModel
    , trTranslatedText

    -- ** TranslateTextRequest
    , TranslateTextRequest
    , translateTextRequest
    , ttrFormat
    , ttrQ
    , ttrModel
    , ttrSource
    , ttrTarget

    -- ** DetectionsListResponse
    , DetectionsListResponse
    , detectionsListResponse
    , dlrDetections

    -- ** GetSupportedLanguagesRequest
    , GetSupportedLanguagesRequest
    , getSupportedLanguagesRequest
    , gslrTarget

    -- ** LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrLanguages

    -- ** DetectionsResourceItem
    , DetectionsResourceItem
    , detectionsResourceItem
    , driConfidence
    , driIsReliable
    , driLanguage

    -- ** Xgafv
    , Xgafv (..)

    -- ** LanguagesResource
    , LanguagesResource
    , languagesResource
    , lrName
    , lrLanguage

    -- ** TranslationsListFormat
    , TranslationsListFormat (..)

    -- ** TranslationsListResponse
    , TranslationsListResponse
    , translationsListResponse
    , tlrTranslations
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Language.Detections.Detect
import           Network.Google.Resource.Language.Detections.List
import           Network.Google.Resource.Language.Languages.List
import           Network.Google.Resource.Language.Translations.List
import           Network.Google.Resource.Language.Translations.Translate
import           Network.Google.Translate.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Translation API service.
type TranslateAPI =
     DetectionsListResource :<|> DetectionsDetectResource
       :<|> LanguagesListResource
       :<|> TranslationsListResource
       :<|> TranslationsTranslateResource
