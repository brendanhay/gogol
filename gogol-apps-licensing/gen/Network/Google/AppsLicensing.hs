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
-- Module      : Network.Google.AppsLicensing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Enterprise License Manager API\'s allows you to license apps for all the users of a domain managed by you.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference>
module Network.Google.AppsLicensing
  ( -- * Configuration
    appsLicensingService,

    -- * OAuth Scopes
    appsLicensingScope,

    -- * Resources

    -- ** licensing.licenseAssignments.delete
    LicensingLicenseAssignmentsDeleteResource,
    newLicensingLicenseAssignmentsDelete,
    LicensingLicenseAssignmentsDelete,

    -- ** licensing.licenseAssignments.get
    LicensingLicenseAssignmentsGetResource,
    newLicensingLicenseAssignmentsGet,
    LicensingLicenseAssignmentsGet,

    -- ** licensing.licenseAssignments.insert
    LicensingLicenseAssignmentsInsertResource,
    newLicensingLicenseAssignmentsInsert,
    LicensingLicenseAssignmentsInsert,

    -- ** licensing.licenseAssignments.listForProduct
    LicensingLicenseAssignmentsListForProductResource,
    newLicensingLicenseAssignmentsListForProduct,
    LicensingLicenseAssignmentsListForProduct,

    -- ** licensing.licenseAssignments.listForProductAndSku
    LicensingLicenseAssignmentsListForProductAndSkuResource,
    newLicensingLicenseAssignmentsListForProductAndSku,
    LicensingLicenseAssignmentsListForProductAndSku,

    -- ** licensing.licenseAssignments.patch
    LicensingLicenseAssignmentsPatchResource,
    newLicensingLicenseAssignmentsPatch,
    LicensingLicenseAssignmentsPatch,

    -- ** licensing.licenseAssignments.update
    LicensingLicenseAssignmentsUpdateResource,
    newLicensingLicenseAssignmentsUpdate,
    LicensingLicenseAssignmentsUpdate,

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

import Network.Google.AppsLicensing.Licensing.LicenseAssignments.Delete
import Network.Google.AppsLicensing.Licensing.LicenseAssignments.Get
import Network.Google.AppsLicensing.Licensing.LicenseAssignments.Insert
import Network.Google.AppsLicensing.Licensing.LicenseAssignments.ListForProduct
import Network.Google.AppsLicensing.Licensing.LicenseAssignments.ListForProductAndSku
import Network.Google.AppsLicensing.Licensing.LicenseAssignments.Patch
import Network.Google.AppsLicensing.Licensing.LicenseAssignments.Update
import Network.Google.AppsLicensing.Types
