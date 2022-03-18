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
-- Module      : Gogol.Admin.DataTransfer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Admin SDK lets administrators of enterprise domains to view and manage resources like user, groups etc. It also provides audit and usage reports of domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference>
module Gogol.Admin.DataTransfer
    (
    -- * Configuration
      adminDataTransferService

    -- * OAuth Scopes
    , adminDatatransferScope
    , adminDatatransferReadOnlyScope

    -- * Resources

    -- ** datatransfer.applications.get
    , DatatransferApplicationsGetResource
    , newDatatransferApplicationsGet
    , DatatransferApplicationsGet

    -- ** datatransfer.applications.list
    , DatatransferApplicationsListResource
    , newDatatransferApplicationsList
    , DatatransferApplicationsList

    -- ** datatransfer.transfers.get
    , DatatransferTransfersGetResource
    , newDatatransferTransfersGet
    , DatatransferTransfersGet

    -- ** datatransfer.transfers.insert
    , DatatransferTransfersInsertResource
    , newDatatransferTransfersInsert
    , DatatransferTransfersInsert

    -- ** datatransfer.transfers.list
    , DatatransferTransfersListResource
    , newDatatransferTransfersList
    , DatatransferTransfersList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Application
    , Application (..)
    , newApplication

    -- ** ApplicationDataTransfer
    , ApplicationDataTransfer (..)
    , newApplicationDataTransfer

    -- ** ApplicationTransferParam
    , ApplicationTransferParam (..)
    , newApplicationTransferParam

    -- ** ApplicationsListResponse
    , ApplicationsListResponse (..)
    , newApplicationsListResponse

    -- ** DataTransfer
    , DataTransfer (..)
    , newDataTransfer

    -- ** DataTransfersListResponse
    , DataTransfersListResponse (..)
    , newDataTransfersListResponse
    ) where

import Gogol.Admin.DataTransfer.Applications.Get
import Gogol.Admin.DataTransfer.Applications.List
import Gogol.Admin.DataTransfer.Transfers.Get
import Gogol.Admin.DataTransfer.Transfers.Insert
import Gogol.Admin.DataTransfer.Transfers.List
import Gogol.Admin.DataTransfer.Types
