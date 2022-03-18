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
-- Module      : Network.Google.BigQuery.Tables.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.setIamPolicy@.
module Network.Google.BigQuery.Tables.SetIamPolicy
  ( -- * Resource
    BigQueryTablesSetIamPolicyResource,

    -- ** Constructing a Request
    newBigQueryTablesSetIamPolicy,
    BigQueryTablesSetIamPolicy,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.tables.setIamPolicy@ method which the
-- 'BigQueryTablesSetIamPolicy' request conforms to.
type BigQueryTablesSetIamPolicyResource =
  "bigquery"
    Core.:> "v2"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ 'newBigQueryTablesSetIamPolicy' smart constructor.
data BigQueryTablesSetIamPolicy = BigQueryTablesSetIamPolicy
  { -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesSetIamPolicy' with the minimum fields required to make a request.
newBigQueryTablesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigQueryTablesSetIamPolicy
newBigQueryTablesSetIamPolicy payload resource =
  BigQueryTablesSetIamPolicy {payload = payload, resource = resource}

instance
  Core.GoogleRequest
    BigQueryTablesSetIamPolicy
  where
  type Rs BigQueryTablesSetIamPolicy = Policy
  type
    Scopes BigQueryTablesSetIamPolicy =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient BigQueryTablesSetIamPolicy {..} =
    go
      resource
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryTablesSetIamPolicyResource
          )
          Core.mempty
