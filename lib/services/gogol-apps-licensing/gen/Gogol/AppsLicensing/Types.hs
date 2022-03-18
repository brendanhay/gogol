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
-- Module      : Gogol.AppsLicensing.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsLicensing.Types
  ( -- * Configuration
    appsLicensingService,

    -- * OAuth Scopes
    appsLicensingScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** LicenseAssignment
    LicenseAssignment (..),
    newLicenseAssignment,

    -- ** LicenseAssignmentInsert
    LicenseAssignmentInsert (..),
    newLicenseAssignmentInsert,

    -- ** LicenseAssignmentList
    LicenseAssignmentList (..),
    newLicenseAssignmentList,
  )
where

import Gogol.AppsLicensing.Internal.Product
import Gogol.AppsLicensing.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Enterprise License Manager API. This contains the host and root path used as a starting point for constructing service requests.
appsLicensingService :: Core.ServiceConfig
appsLicensingService =
  Core.defaultService
    (Core.ServiceId "licensing:v1")
    "licensing.googleapis.com"

-- | View and manage G Suite licenses for your domain
appsLicensingScope :: Core.Proxy '["https://www.googleapis.com/auth/apps.licensing"]
appsLicensingScope = Core.Proxy
