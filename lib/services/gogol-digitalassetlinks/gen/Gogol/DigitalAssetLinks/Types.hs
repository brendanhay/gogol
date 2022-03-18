{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DigitalAssetLinks.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DigitalAssetLinks.Types
    (
    -- * Configuration
      digitalAssetLinksService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AndroidAppAsset
    , AndroidAppAsset (..)
    , newAndroidAppAsset

    -- ** Asset
    , Asset (..)
    , newAsset

    -- ** BulkCheckRequest
    , BulkCheckRequest (..)
    , newBulkCheckRequest

    -- ** BulkCheckResponse
    , BulkCheckResponse (..)
    , newBulkCheckResponse

    -- ** BulkCheckResponse_BulkErrorCode
    , BulkCheckResponse_BulkErrorCode (..)

    -- ** CertificateInfo
    , CertificateInfo (..)
    , newCertificateInfo

    -- ** CheckResponse
    , CheckResponse (..)
    , newCheckResponse

    -- ** CheckResponse_ErrorCodeItem
    , CheckResponse_ErrorCodeItem (..)

    -- ** ListResponse
    , ListResponse (..)
    , newListResponse

    -- ** ListResponse_ErrorCodeItem
    , ListResponse_ErrorCodeItem (..)

    -- ** Statement
    , Statement (..)
    , newStatement

    -- ** StatementTemplate
    , StatementTemplate (..)
    , newStatementTemplate

    -- ** WebAsset
    , WebAsset (..)
    , newWebAsset
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DigitalAssetLinks.Internal.Product
import Gogol.DigitalAssetLinks.Internal.Sum

-- | Default request referring to version @v1@ of the Digital Asset Links API. This contains the host and root path used as a starting point for constructing service requests.
digitalAssetLinksService :: Core.ServiceConfig
digitalAssetLinksService
  = Core.defaultService
      (Core.ServiceId "digitalassetlinks:v1")
      "digitalassetlinks.googleapis.com"
