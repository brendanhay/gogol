{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Translate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you translate text from one language to another
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference>
module Network.Google.Translate
    (
    -- * Service Configuration
      translateService

    -- * API Declaration
    , TranslateAPI

    -- * Resources

    -- ** LanguageDetectionsList
    , module Network.Google.Resource.Language.Detections.List

    -- ** LanguageLanguagesList
    , module Network.Google.Resource.Language.Languages.List

    -- ** LanguageTranslationsList
    , module Network.Google.Resource.Language.Translations.List

    -- * Types

    -- ** TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trTranslatedText

    -- ** DetectionsListResponse
    , DetectionsListResponse
    , detectionsListResponse
    , dlrDetections

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
import           Network.Google.Resource.Language.Detections.List
import           Network.Google.Resource.Language.Languages.List
import           Network.Google.Resource.Language.Translations.List
import           Network.Google.Translate.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Translate API service.
type TranslateAPI =
     DetectionsListResource :<|> LanguagesListResource
       :<|> TranslationsListResource
