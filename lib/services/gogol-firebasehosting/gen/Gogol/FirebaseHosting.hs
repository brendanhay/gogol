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
-- Module      : Gogol.FirebaseHosting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference>
module Gogol.FirebaseHosting
  ( -- * Configuration
    firebaseHostingService,

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

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

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
import Gogol.FirebaseHosting.Types
