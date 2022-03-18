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
-- Module      : Gogol.BigQuery.Projects.GetServiceAccount
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the email address of the service account for your project used for interactions with Google Cloud KMS.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.projects.getServiceAccount@.
module Gogol.BigQuery.Projects.GetServiceAccount
    (
    -- * Resource
      BigQueryProjectsGetServiceAccountResource

    -- ** Constructing a Request
    , newBigQueryProjectsGetServiceAccount
    , BigQueryProjectsGetServiceAccount
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.projects.getServiceAccount@ method which the
-- 'BigQueryProjectsGetServiceAccount' request conforms to.
type BigQueryProjectsGetServiceAccountResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "serviceAccount" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] GetServiceAccountResponse

-- | Returns the email address of the service account for your project used for interactions with Google Cloud KMS.
--
-- /See:/ 'newBigQueryProjectsGetServiceAccount' smart constructor.
newtype BigQueryProjectsGetServiceAccount = BigQueryProjectsGetServiceAccount
    {
      -- | Project ID for which the service account is requested.
      projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryProjectsGetServiceAccount' with the minimum fields required to make a request.
newBigQueryProjectsGetServiceAccount 
    ::  Core.Text
       -- ^  Project ID for which the service account is requested. See 'projectId'.
    -> BigQueryProjectsGetServiceAccount
newBigQueryProjectsGetServiceAccount projectId =
  BigQueryProjectsGetServiceAccount {projectId = projectId}

instance Core.GoogleRequest
           BigQueryProjectsGetServiceAccount
         where
        type Rs BigQueryProjectsGetServiceAccount =
             GetServiceAccountResponse
        type Scopes BigQueryProjectsGetServiceAccount =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient BigQueryProjectsGetServiceAccount{..}
          = go projectId (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryProjectsGetServiceAccountResource)
                      Core.mempty

