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
-- Module      : Gogol.AppsLicensing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Enterprise License Manager API\'s allows you to license apps for all the users of a domain managed by you.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference>
module Gogol.AppsLicensing
    (
    -- * Configuration
      appsLicensingService

    -- * OAuth Scopes
    , appsLicensingScope

    -- * Resources

    -- ** licensing.licenseAssignments.delete
    , LicensingLicenseAssignmentsDeleteResource
    , newLicensingLicenseAssignmentsDelete
    , LicensingLicenseAssignmentsDelete

    -- ** licensing.licenseAssignments.get
    , LicensingLicenseAssignmentsGetResource
    , newLicensingLicenseAssignmentsGet
    , LicensingLicenseAssignmentsGet

    -- ** licensing.licenseAssignments.insert
    , LicensingLicenseAssignmentsInsertResource
    , newLicensingLicenseAssignmentsInsert
    , LicensingLicenseAssignmentsInsert

    -- ** licensing.licenseAssignments.listForProduct
    , LicensingLicenseAssignmentsListForProductResource
    , newLicensingLicenseAssignmentsListForProduct
    , LicensingLicenseAssignmentsListForProduct

    -- ** licensing.licenseAssignments.listForProductAndSku
    , LicensingLicenseAssignmentsListForProductAndSkuResource
    , newLicensingLicenseAssignmentsListForProductAndSku
    , LicensingLicenseAssignmentsListForProductAndSku

    -- ** licensing.licenseAssignments.patch
    , LicensingLicenseAssignmentsPatchResource
    , newLicensingLicenseAssignmentsPatch
    , LicensingLicenseAssignmentsPatch

    -- ** licensing.licenseAssignments.update
    , LicensingLicenseAssignmentsUpdateResource
    , newLicensingLicenseAssignmentsUpdate
    , LicensingLicenseAssignmentsUpdate

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
