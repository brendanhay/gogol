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
-- Module      : Gogol.FirebaseHosting
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference>
module Gogol.FirebaseHosting
  ( -- * Configuration
    firebaseHostingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Firebase'FullControl,

    -- * Resources

    -- ** firebasehosting.operations.cancel
    FirebaseHostingOperationsCancelResource,
    FirebaseHostingOperationsCancel (..),
    newFirebaseHostingOperationsCancel,

    -- ** firebasehosting.operations.delete
    FirebaseHostingOperationsDeleteResource,
    FirebaseHostingOperationsDelete (..),
    newFirebaseHostingOperationsDelete,

    -- ** firebasehosting.operations.list
    FirebaseHostingOperationsListResource,
    FirebaseHostingOperationsList (..),
    newFirebaseHostingOperationsList,

    -- ** firebasehosting.projects.sites.customDomains.operations.cancel
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancelResource,
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancel (..),
    newFirebaseHostingProjectsSitesCustomDomainsOperationsCancel,

    -- ** firebasehosting.projects.sites.customDomains.operations.delete
    FirebaseHostingProjectsSitesCustomDomainsOperationsDeleteResource,
    FirebaseHostingProjectsSitesCustomDomainsOperationsDelete (..),
    newFirebaseHostingProjectsSitesCustomDomainsOperationsDelete,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CertVerification
    CertVerification (..),
    newCertVerification,

    -- ** CustomDomainMetadata
    CustomDomainMetadata (..),
    newCustomDomainMetadata,

    -- ** CustomDomainMetadata_CertState
    CustomDomainMetadata_CertState (..),

    -- ** CustomDomainMetadata_HostState
    CustomDomainMetadata_HostState (..),

    -- ** CustomDomainMetadata_OwnershipState
    CustomDomainMetadata_OwnershipState (..),

    -- ** DnsRecord
    DnsRecord (..),
    newDnsRecord,

    -- ** DnsRecord_RequiredAction
    DnsRecord_RequiredAction (..),

    -- ** DnsRecord_Type
    DnsRecord_Type (..),

    -- ** DnsRecordSet
    DnsRecordSet (..),
    newDnsRecordSet,

    -- ** DnsUpdates
    DnsUpdates (..),
    newDnsUpdates,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** HttpUpdate
    HttpUpdate (..),
    newHttpUpdate,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** LiveMigrationStep
    LiveMigrationStep (..),
    newLiveMigrationStep,

    -- ** LiveMigrationStep_State
    LiveMigrationStep_State (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Gogol.FirebaseHosting.Operations.Cancel
import Gogol.FirebaseHosting.Operations.Delete
import Gogol.FirebaseHosting.Operations.List
import Gogol.FirebaseHosting.Projects.Sites.CustomDomains.Operations.Cancel
import Gogol.FirebaseHosting.Projects.Sites.CustomDomains.Operations.Delete
import Gogol.FirebaseHosting.Types
