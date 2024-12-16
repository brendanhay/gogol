{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsLicensing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Enterprise License Manager API lets you manage Google Workspace and related licenses for all users of a customer that you manage.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference>
module Gogol.AppsLicensing
    (
    -- * Configuration
      appsLicensingService

    -- * OAuth Scopes
    , Apps'Licensing

    -- * Resources

    -- ** licensing.licenseAssignments.delete
    , LicensingLicenseAssignmentsDeleteResource
    , LicensingLicenseAssignmentsDelete (..)
    , newLicensingLicenseAssignmentsDelete

    -- ** licensing.licenseAssignments.get
    , LicensingLicenseAssignmentsGetResource
    , LicensingLicenseAssignmentsGet (..)
    , newLicensingLicenseAssignmentsGet

    -- ** licensing.licenseAssignments.insert
    , LicensingLicenseAssignmentsInsertResource
    , LicensingLicenseAssignmentsInsert (..)
    , newLicensingLicenseAssignmentsInsert

    -- ** licensing.licenseAssignments.listForProduct
    , LicensingLicenseAssignmentsListForProductResource
    , LicensingLicenseAssignmentsListForProduct (..)
    , newLicensingLicenseAssignmentsListForProduct

    -- ** licensing.licenseAssignments.listForProductAndSku
    , LicensingLicenseAssignmentsListForProductAndSkuResource
    , LicensingLicenseAssignmentsListForProductAndSku (..)
    , newLicensingLicenseAssignmentsListForProductAndSku

    -- ** licensing.licenseAssignments.patch
    , LicensingLicenseAssignmentsPatchResource
    , LicensingLicenseAssignmentsPatch (..)
    , newLicensingLicenseAssignmentsPatch

    -- ** licensing.licenseAssignments.update
    , LicensingLicenseAssignmentsUpdateResource
    , LicensingLicenseAssignmentsUpdate (..)
    , newLicensingLicenseAssignmentsUpdate

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** LicenseAssignment
    , LicenseAssignment (..)
    , newLicenseAssignment

    -- ** LicenseAssignmentInsert
    , LicenseAssignmentInsert (..)
    , newLicenseAssignmentInsert

    -- ** LicenseAssignmentList
    , LicenseAssignmentList (..)
    , newLicenseAssignmentList
    ) where

import Gogol.AppsLicensing.Licensing.LicenseAssignments.Delete
import Gogol.AppsLicensing.Licensing.LicenseAssignments.Get
import Gogol.AppsLicensing.Licensing.LicenseAssignments.Insert
import Gogol.AppsLicensing.Licensing.LicenseAssignments.ListForProduct
import Gogol.AppsLicensing.Licensing.LicenseAssignments.ListForProductAndSku
import Gogol.AppsLicensing.Licensing.LicenseAssignments.Patch
import Gogol.AppsLicensing.Licensing.LicenseAssignments.Update
import Gogol.AppsLicensing.Types
