{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Lets you translate text from one language to another
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference>
module Network.Google.Translate
    (
    -- * REST Resources

    -- ** Translate API
      Translate
    , translate
    , translateURL

    -- ** language.detections.list
    , module Network.Google.API.Language.Detections.List

    -- ** language.languages.list
    , module Network.Google.API.Language.Languages.List

    -- ** language.translations.list
    , module Network.Google.API.Language.Translations.List

    -- * Types

    -- ** TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trTranslatedText

    -- ** Alt
    , Alt (..)

    -- ** LanguagesResource
    , LanguagesResource
    , languagesResource
    , lrName
    , lrLanguage

    -- ** TranslationsListResponse
    , TranslationsListResponse
    , translationsListResponse
    , tlrTranslations

    -- ** TranslationsList'Format
    , TranslationsList'Format (..)

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
    ) where

import           Network.Google.API.Language.Detections.List
import           Network.Google.API.Language.Languages.List
import           Network.Google.API.Language.Translations.List
import           Network.Google.Prelude
import           Network.Google.Translate.Types

{- $resources
TODO
-}

type Translate =
     TranslationsListAPI :<|> LanguagesListAPI :<|>
       DetectionsListAPI

translate :: Proxy Translate
translate = Proxy
