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
-- Module      : Gogol.BigQuery.Tables.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a @NOT_FOUND@ error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.testIamPermissions@.
module Gogol.BigQuery.Tables.TestIamPermissions
  ( -- * Resource
    BigQueryTablesTestIamPermissionsResource,

    -- ** Constructing a Request
    BigQueryTablesTestIamPermissions (..),
    newBigQueryTablesTestIamPermissions,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.tables.testIamPermissions@ method which the
-- 'BigQueryTablesTestIamPermissions' request conforms to.
type BigQueryTablesTestIamPermissionsResource =
  "bigquery"
    Core.:> "v2"
    Core.:> Core.CaptureMode
              "resource"
              "testIamPermissions"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a @NOT_FOUND@ error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ 'newBigQueryTablesTestIamPermissions' smart constructor.
data BigQueryTablesTestIamPermissions = BigQueryTablesTestIamPermissions
  { -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesTestIamPermissions' with the minimum fields required to make a request.
newBigQueryTablesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigQueryTablesTestIamPermissions
newBigQueryTablesTestIamPermissions payload resource =
  BigQueryTablesTestIamPermissions {payload = payload, resource = resource}

instance
  Core.GoogleRequest
    BigQueryTablesTestIamPermissions
  where
  type
    Rs BigQueryTablesTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes BigQueryTablesTestIamPermissions =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryTablesTestIamPermissions {..} =
    go
      resource
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryTablesTestIamPermissionsResource
          )
          Core.mempty
