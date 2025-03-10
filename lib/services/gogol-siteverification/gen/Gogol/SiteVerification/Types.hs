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
-- Module      : Gogol.SiteVerification.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SiteVerification.Types
  ( -- * Configuration
    siteVerificationService,

    -- * OAuth Scopes
    Siteverification'FullControl,
    Siteverification'VerifyOnly,

    -- * Types

    -- ** SiteVerificationWebResourceGettokenRequest
    SiteVerificationWebResourceGettokenRequest (..),
    newSiteVerificationWebResourceGettokenRequest,

    -- ** SiteVerificationWebResourceGettokenRequest_Site
    SiteVerificationWebResourceGettokenRequest_Site (..),
    newSiteVerificationWebResourceGettokenRequest_Site,

    -- ** SiteVerificationWebResourceGettokenResponse
    SiteVerificationWebResourceGettokenResponse (..),
    newSiteVerificationWebResourceGettokenResponse,

    -- ** SiteVerificationWebResourceListResponse
    SiteVerificationWebResourceListResponse (..),
    newSiteVerificationWebResourceListResponse,

    -- ** SiteVerificationWebResourceResource
    SiteVerificationWebResourceResource (..),
    newSiteVerificationWebResourceResource,

    -- ** SiteVerificationWebResourceResource_Site
    SiteVerificationWebResourceResource_Site (..),
    newSiteVerificationWebResourceResource_Site,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SiteVerification.Internal.Product
import Gogol.SiteVerification.Internal.Sum

-- | Default request referring to version @v1@ of the Google Site Verification API. This contains the host and root path used as a starting point for constructing service requests.
siteVerificationService :: Core.ServiceConfig
siteVerificationService =
  Core.defaultService
    (Core.ServiceId "siteVerification:v1")
    "www.googleapis.com"

-- | Manage the list of sites and domains you control
type Siteverification'FullControl =
  "https://www.googleapis.com/auth/siteverification"

-- | Manage your new site verifications with Google
type Siteverification'VerifyOnly =
  "https://www.googleapis.com/auth/siteverification.verify_only"
