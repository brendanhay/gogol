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
-- Module      : Network.Google.BigQuery.RowAccessPolicies.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.getIamPolicy@.
module Network.Google.BigQuery.RowAccessPolicies.GetIamPolicy
  ( -- * Resource
    BigQueryRowAccessPoliciesGetIamPolicyResource,

    -- ** Constructing a Request
    newBigQueryRowAccessPoliciesGetIamPolicy,
    BigQueryRowAccessPoliciesGetIamPolicy,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.rowAccessPolicies.getIamPolicy@ method which the
-- 'BigQueryRowAccessPoliciesGetIamPolicy' request conforms to.
type BigQueryRowAccessPoliciesGetIamPolicyResource =
  "bigquery"
    Core.:> "v2"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ 'newBigQueryRowAccessPoliciesGetIamPolicy' smart constructor.
data BigQueryRowAccessPoliciesGetIamPolicy = BigQueryRowAccessPoliciesGetIamPolicy
  { -- | Multipart request metadata.
    payload :: GetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesGetIamPolicy' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigQueryRowAccessPoliciesGetIamPolicy
newBigQueryRowAccessPoliciesGetIamPolicy payload resource =
  BigQueryRowAccessPoliciesGetIamPolicy {payload = payload, resource = resource}

instance
  Core.GoogleRequest
    BigQueryRowAccessPoliciesGetIamPolicy
  where
  type
    Rs BigQueryRowAccessPoliciesGetIamPolicy =
      Policy
  type
    Scopes BigQueryRowAccessPoliciesGetIamPolicy =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    BigQueryRowAccessPoliciesGetIamPolicy {..} =
      go
        resource
        (Core.Just Core.AltJSON)
        payload
        bigQueryService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryRowAccessPoliciesGetIamPolicyResource
            )
            Core.mempty
