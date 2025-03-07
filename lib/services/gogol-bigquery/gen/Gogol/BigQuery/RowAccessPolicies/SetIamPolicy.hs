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
-- Module      : Gogol.BigQuery.RowAccessPolicies.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.setIamPolicy@.
module Gogol.BigQuery.RowAccessPolicies.SetIamPolicy
  ( -- * Resource
    BigQueryRowAccessPoliciesSetIamPolicyResource,

    -- ** Constructing a Request
    BigQueryRowAccessPoliciesSetIamPolicy (..),
    newBigQueryRowAccessPoliciesSetIamPolicy,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.rowAccessPolicies.setIamPolicy@ method which the
-- 'BigQueryRowAccessPoliciesSetIamPolicy' request conforms to.
type BigQueryRowAccessPoliciesSetIamPolicyResource =
  "bigquery"
    Core.:> "v2"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ 'newBigQueryRowAccessPoliciesSetIamPolicy' smart constructor.
data BigQueryRowAccessPoliciesSetIamPolicy = BigQueryRowAccessPoliciesSetIamPolicy
  { -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesSetIamPolicy' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigQueryRowAccessPoliciesSetIamPolicy
newBigQueryRowAccessPoliciesSetIamPolicy payload resource =
  BigQueryRowAccessPoliciesSetIamPolicy {payload = payload, resource = resource}

instance
  Core.GoogleRequest
    BigQueryRowAccessPoliciesSetIamPolicy
  where
  type
    Rs BigQueryRowAccessPoliciesSetIamPolicy =
      Policy
  type
    Scopes BigQueryRowAccessPoliciesSetIamPolicy =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryRowAccessPoliciesSetIamPolicy {..} =
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
                  BigQueryRowAccessPoliciesSetIamPolicyResource
            )
            Core.mempty
