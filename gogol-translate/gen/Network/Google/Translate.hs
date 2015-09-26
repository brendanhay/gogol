-- |
-- Module      : Network.Google.Translate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you translate text from one language to another
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference>
module Network.Google.Translate
    (
    -- * API Definition
      Translate



    -- * Types

    -- ** DetectionsListResponse
    , DetectionsListResponse
    , detectionsListResponse
    , dlrDetections

    -- ** DetectionsResourceItem
    , DetectionsResourceItem
    , detectionsResourceItem
    , driConfidence
    , driIsReliable
    , driLanguage

    -- ** LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrLanguages

    -- ** LanguagesResource
    , LanguagesResource
    , languagesResource
    , lrName
    , lrLanguage

    -- ** TranslationsListResponse
    , TranslationsListResponse
    , translationsListResponse
    , tlrTranslations

    -- ** TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trTranslatedText
    ) where

import           Network.Google.Translate.Types

{- $resources
TODO
-}

type Translate = ()

translate :: Proxy Translate
translate = Proxy




