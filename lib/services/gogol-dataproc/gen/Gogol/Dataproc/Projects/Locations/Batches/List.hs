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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists batch workloads.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.list@.
module Gogol.Dataproc.Projects.Locations.Batches.List
    (
    -- * Resource
      DataprocProjectsLocationsBatchesListResource

    -- ** Constructing a Request
    , newDataprocProjectsLocationsBatchesList
    , DataprocProjectsLocationsBatchesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.batches.list@ method which the
-- 'DataprocProjectsLocationsBatchesList' request conforms to.
type DataprocProjectsLocationsBatchesListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "batches" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListBatchesResponse

-- | Lists batch workloads.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesList' smart constructor.
data DataprocProjectsLocationsBatchesList = DataprocProjectsLocationsBatchesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of batches to return in each response. The service may return fewer than this value. The default page size is 20; the maximum page size is 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token received from a previous ListBatches call. Provide this token to retrieve the subsequent page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent, which owns this collection of batches.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesList' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesList 
    ::  Core.Text
       -- ^  Required. The parent, which owns this collection of batches. See 'parent'.
    -> DataprocProjectsLocationsBatchesList
newDataprocProjectsLocationsBatchesList parent =
  DataprocProjectsLocationsBatchesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsBatchesList
         where
        type Rs DataprocProjectsLocationsBatchesList =
             ListBatchesResponse
        type Scopes DataprocProjectsLocationsBatchesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DataprocProjectsLocationsBatchesList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsBatchesListResource)
                      Core.mempty

