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
    , Admin'Datatransfer
    , Admin'Datatransfer'Readonly

    -- * Resources

    -- ** datatransfer.applications.get
    , DatatransferApplicationsGetResource
    , DatatransferApplicationsGet (..)
    , newDatatransferApplicationsGet

    -- ** datatransfer.applications.list
    , DatatransferApplicationsListResource
    , DatatransferApplicationsList (..)
    , newDatatransferApplicationsList

    -- ** datatransfer.transfers.get
    , DatatransferTransfersGetResource
    , DatatransferTransfersGet (..)
    , newDatatransferTransfersGet

    -- ** datatransfer.transfers.insert
    , DatatransferTransfersInsertResource
    , DatatransferTransfersInsert (..)
    , newDatatransferTransfersInsert

    -- ** datatransfer.transfers.list
    , DatatransferTransfersListResource
    , DatatransferTransfersList (..)
    , newDatatransferTransfersList

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
