{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AppsLicensing.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsLicensing.Types
  ( -- * Configuration
    appsLicensingService,

    -- * OAuth Scopes
    Apps'Licensing,

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
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Enterprise License Manager API. This contains the host and root path used as a starting point for constructing service requests.
appsLicensingService :: Core.ServiceConfig
appsLicensingService =
  Core.defaultService
    (Core.ServiceId "licensing:v1")
    "licensing.googleapis.com"

-- | View and manage G Suite licenses for your domain
type Apps'Licensing =
  "https://www.googleapis.com/auth/apps.licensing"
