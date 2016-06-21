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

    -- * DetectionsResourceItem
    , DetectionsResourceItem
    , detectionsResourceItem
    , driConfidence
    , driIsReliable
    , driLanguage

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

-- | Default request referring to version 'v2' of the Translate API. This contains the host and root path used as a starting point for constructing service requests.
translateService :: ServiceConfig
translateService
  = defaultService (ServiceId "translate:v2")
      "www.googleapis.com"
