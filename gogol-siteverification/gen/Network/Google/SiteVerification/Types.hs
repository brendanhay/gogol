{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.SiteVerification.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.SiteVerification.Types
  ( -- * Configuration
    siteVerificationService,

    -- * OAuth Scopes
    siteVerificationScope,
    siteVerificationVerify_OnlyScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.SiteVerification.Internal.Product
import Network.Google.SiteVerification.Internal.Sum

-- | Default request referring to version @v1@ of the Google Site Verification API. This contains the host and root path used as a starting point for constructing service requests.
siteVerificationService :: Core.ServiceConfig
siteVerificationService =
  Core.defaultService
    (Core.ServiceId "siteVerification:v1")
    "www.googleapis.com"

-- | Manage the list of sites and domains you control
siteVerificationScope :: Core.Proxy '["https://www.googleapis.com/auth/siteverification"]
siteVerificationScope = Core.Proxy

-- | Manage your new site verifications with Google
siteVerificationVerify_OnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/siteverification.verify_only"]
siteVerificationVerify_OnlyScope = Core.Proxy
