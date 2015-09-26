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
    -- * Resources
      Translate
    , DetectionsAPI
    , DetectionsList
    , LanguagesAPI
    , LanguagesList
    , TranslationsAPI
    , TranslationsList

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

import           Network.Google.Prelude
import           Network.Google.Translate.Types

{- $resources
TODO
-}

type Translate =
     LanguagesAPI :<|> TranslationsAPI :<|> DetectionsAPI

type DetectionsAPI = DetectionsList

-- | Detect the language of text.
type DetectionsList =
     "language" :> "translate" :> "v2" :> "detect" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LanguagesAPI = LanguagesList

-- | List the source\/target languages supported by the API
type LanguagesList =
     "language" :> "translate" :> "v2" :> "languages" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "target" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TranslationsAPI = TranslationsList

-- | Returns text translations from one language to another.
type TranslationsList =
     "language" :> "translate" :> "v2" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "format" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "source" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "cid" Text
       :> QueryParam "target" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
