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
-- Module      : Gogol.Genomics.Projects.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. Authorization requires the following <https://cloud.google.com/iam Google IAM> permission: * @genomics.operations.list@
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.projects.operations.list@.
module Gogol.Genomics.Projects.Operations.List
  ( -- * Resource
    GenomicsProjectsOperationsListResource,

    -- ** Constructing a Request
    newGenomicsProjectsOperationsList,
    GenomicsProjectsOperationsList,
  )
where

import Gogol.Genomics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @genomics.projects.operations.list@ method which the
-- 'GenomicsProjectsOperationsList' request conforms to.
type GenomicsProjectsOperationsListResource =
  "v2alpha1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. Authorization requires the following <https://cloud.google.com/iam Google IAM> permission: * @genomics.operations.list@
--
-- /See:/ 'newGenomicsProjectsOperationsList' smart constructor.
data GenomicsProjectsOperationsList = GenomicsProjectsOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A string for filtering Operations. In v2alpha1, the following filter fields are supported: * createTime: The time this job was created * events: The set of event (names) that have occurred while running the pipeline. The : operator can be used to determine if a particular event has occurred. * error: If the pipeline is running, this value is NULL. Once the pipeline finishes, the value is the standard Google error code. * labels.key or labels.\"key with space\" where key is a label key. * done: If the pipeline is running, this value is false. Once the pipeline finishes, the value is true. Examples: * @projectId = my-project AND createTime >= 1432140000@ * @projectId = my-project AND createTime >= 1432140000 AND createTime \<= 1432150000 AND status = RUNNING@ * @projectId = my-project AND labels.color = *@ * @projectId = my-project AND labels.color = red@
    filter :: (Core.Maybe Core.Text),
    -- | The name of the operation\'s parent resource.
    name :: Core.Text,
    -- | The maximum number of results to return. The maximum value is 256.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The standard list page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenomicsProjectsOperationsList' with the minimum fields required to make a request.
newGenomicsProjectsOperationsList ::
  -- |  The name of the operation\'s parent resource. See 'name'.
  Core.Text ->
  GenomicsProjectsOperationsList
newGenomicsProjectsOperationsList name =
  GenomicsProjectsOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GenomicsProjectsOperationsList
  where
  type
    Rs GenomicsProjectsOperationsList =
      ListOperationsResponse
  type
    Scopes GenomicsProjectsOperationsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/genomics"
       ]
  requestClient GenomicsProjectsOperationsList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      genomicsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GenomicsProjectsOperationsListResource
          )
          Core.mempty
