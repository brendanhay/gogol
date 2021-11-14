{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DigitalAssetLinks.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DigitalAssetLinks.Types
    (
    -- * Service Configuration
      digitalAssetLinksService

    -- * AndroidAppAsset
    , AndroidAppAsset
    , androidAppAsset
    , aaaPackageName
    , aaaCertificate

    -- * Statement
    , Statement
    , statement
    , sRelation
    , sSource
    , sTarget

    -- * CheckResponseErrorCodeItem
    , CheckResponseErrorCodeItem (..)

    -- * Asset
    , Asset
    , asset
    , aAndroidApp
    , aWeb

    -- * ListResponse
    , ListResponse
    , listResponse
    , lrDebugString
    , lrMaxAge
    , lrErrorCode
    , lrStatements

    -- * Xgafv
    , Xgafv (..)

    -- * CheckResponse
    , CheckResponse
    , checkResponse
    , crDebugString
    , crMaxAge
    , crErrorCode
    , crLinked

    -- * WebAsset
    , WebAsset
    , webAsset
    , waSite

    -- * CertificateInfo
    , CertificateInfo
    , certificateInfo
    , ciSha256Fingerprint

    -- * ListResponseErrorCodeItem
    , ListResponseErrorCodeItem (..)
    ) where

import Network.Google.DigitalAssetLinks.Types.Product
import Network.Google.DigitalAssetLinks.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Digital Asset Links API. This contains the host and root path used as a starting point for constructing service requests.
digitalAssetLinksService :: ServiceConfig
digitalAssetLinksService
  = defaultService (ServiceId "digitalassetlinks:v1")
      "digitalassetlinks.googleapis.com"
