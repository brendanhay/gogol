{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DigitalAssetLinks
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Discovers relationships between online assets such as websites or mobile
-- apps.
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference>
module Network.Google.DigitalAssetLinks
    (
    -- * Service Configuration
      digitalAssetLinksService

    -- * API Declaration
    , DigitalAssetLinksAPI

    -- * Resources

    -- ** digitalassetlinks.assetlinks.check
    , module Network.Google.Resource.DigitalAssetLinks.Assetlinks.Check

    -- ** digitalassetlinks.statements.list
    , module Network.Google.Resource.DigitalAssetLinks.Statements.List

    -- * Types

    -- ** AndroidAppAsset
    , AndroidAppAsset
    , androidAppAsset
    , aaaPackageName
    , aaaCertificate

    -- ** Statement
    , Statement
    , statement
    , sRelation
    , sSource
    , sTarget

    -- ** Asset
    , Asset
    , asset
    , aAndroidApp
    , aWeb

    -- ** ListResponse
    , ListResponse
    , listResponse
    , lrDebugString
    , lrMaxAge
    , lrErrorCode
    , lrStatements

    -- ** Xgafv
    , Xgafv (..)

    -- ** CheckResponse
    , CheckResponse
    , checkResponse
    , crDebugString
    , crMaxAge
    , crErrorCode
    , crLinked

    -- ** WebAsset
    , WebAsset
    , webAsset
    , waSite

    -- ** CertificateInfo
    , CertificateInfo
    , certificateInfo
    , ciSha256Fingerprint
    ) where

import           Network.Google.DigitalAssetLinks.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DigitalAssetLinks.Assetlinks.Check
import           Network.Google.Resource.DigitalAssetLinks.Statements.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Digital Asset Links API service.
type DigitalAssetLinksAPI =
     AssetlinksCheckResource :<|> StatementsListResource
