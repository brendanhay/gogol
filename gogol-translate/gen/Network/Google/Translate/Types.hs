{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types
    (
    -- * Service Configuration
      translateService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudTranslationScope

    -- * DetectLanguageRequest
    , DetectLanguageRequest
    , detectLanguageRequest
    , dlrQ

    -- * TranslationsResource
    , TranslationsResource
    , translationsResource
    , trDetectedSourceLanguage
    , trModel
    , trTranslatedText

    -- * TranslateTextRequest
    , TranslateTextRequest
    , translateTextRequest
    , ttrFormat
    , ttrQ
    , ttrModel
    , ttrSource
    , ttrTarget

    -- * DetectionsListResponse
    , DetectionsListResponse
    , detectionsListResponse
    , dlrDetections

    -- * GetSupportedLanguagesRequest
    , GetSupportedLanguagesRequest
    , getSupportedLanguagesRequest
    , gslrTarget

    -- * LanguagesListResponse
    , LanguagesListResponse
    , languagesListResponse
    , llrLanguages

    -- * DetectionsResourceItem
    , DetectionsResourceItem
    , detectionsResourceItem
    , driConfidence
    , driIsReliable
    , driLanguage

    -- * Xgafv
    , Xgafv (..)

    -- * LanguagesResource
    , LanguagesResource
    , languagesResource
    , lrName
    , lrLanguage

    -- * TranslationsListFormat
    , TranslationsListFormat (..)

    -- * TranslationsListResponse
    , TranslationsListResponse
    , translationsListResponse
    , tlrTranslations
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types.Product
import           Network.Google.Translate.Types.Sum

-- | Default request referring to version 'v2' of the Google Cloud Translation API. This contains the host and root path used as a starting point for constructing service requests.
translateService :: ServiceConfig
translateService
  = defaultService (ServiceId "translate:v2")
      "translation.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Translate text from one language to another using Google Translate
cloudTranslationScope :: Proxy '["https://www.googleapis.com/auth/cloud-translation"]
cloudTranslationScope = Proxy
