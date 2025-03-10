{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DigitalAssetLinks
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Discovers relationships between online assets such as websites or mobile apps.
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference>
module Gogol.DigitalAssetLinks
  ( -- * Configuration
    digitalAssetLinksService,

    -- * Resources

    -- ** digitalassetlinks.assetlinks.bulkCheck
    DigitalAssetLinksAssetlinksBulkCheckResource,
    DigitalAssetLinksAssetlinksBulkCheck (..),
    newDigitalAssetLinksAssetlinksBulkCheck,

    -- ** digitalassetlinks.assetlinks.check
    DigitalAssetLinksAssetlinksCheckResource,
    DigitalAssetLinksAssetlinksCheck (..),
    newDigitalAssetLinksAssetlinksCheck,

    -- ** digitalassetlinks.statements.list
    DigitalAssetLinksStatementsListResource,
    DigitalAssetLinksStatementsList (..),
    newDigitalAssetLinksStatementsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AndroidAppAsset
    AndroidAppAsset (..),
    newAndroidAppAsset,

    -- ** Asset
    Asset (..),
    newAsset,

    -- ** BulkCheckRequest
    BulkCheckRequest (..),
    newBulkCheckRequest,

    -- ** BulkCheckResponse
    BulkCheckResponse (..),
    newBulkCheckResponse,

    -- ** BulkCheckResponse_BulkErrorCode
    BulkCheckResponse_BulkErrorCode (..),

    -- ** CertificateInfo
    CertificateInfo (..),
    newCertificateInfo,

    -- ** CheckResponse
    CheckResponse (..),
    newCheckResponse,

    -- ** CheckResponse_ErrorCodeItem
    CheckResponse_ErrorCodeItem (..),

    -- ** ListResponse
    ListResponse (..),
    newListResponse,

    -- ** ListResponse_ErrorCodeItem
    ListResponse_ErrorCodeItem (..),

    -- ** Statement
    Statement (..),
    newStatement,

    -- ** StatementTemplate
    StatementTemplate (..),
    newStatementTemplate,

    -- ** WebAsset
    WebAsset (..),
    newWebAsset,
  )
where

import Gogol.DigitalAssetLinks.Assetlinks.BulkCheck
import Gogol.DigitalAssetLinks.Assetlinks.Check
import Gogol.DigitalAssetLinks.Statements.List
import Gogol.DigitalAssetLinks.Types
