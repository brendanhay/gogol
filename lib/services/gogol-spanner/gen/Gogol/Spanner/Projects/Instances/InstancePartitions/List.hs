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
-- Module      : Gogol.Spanner.Projects.Instances.InstancePartitions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instance partitions for the given instance.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.instancePartitions.list@.
module Gogol.Spanner.Projects.Instances.InstancePartitions.List
    (
    -- * Resource
      SpannerProjectsInstancesInstancePartitionsListResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesInstancePartitionsList (..)
    , newSpannerProjectsInstancesInstancePartitionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.instancePartitions.list@ method which the
-- 'SpannerProjectsInstancesInstancePartitionsList' request conforms to.
type SpannerProjectsInstancesInstancePartitionsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "instancePartitions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "instancePartitionDeadline"
                   Core.DateTime
                   Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               ListInstancePartitionsResponse

-- | Lists all instance partitions for the given instance.
--
-- /See:/ 'newSpannerProjectsInstancesInstancePartitionsList' smart constructor.
data SpannerProjectsInstancesInstancePartitionsList = SpannerProjectsInstancesInstancePartitionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Deadline used while retrieving metadata for instance partitions. Instance partitions whose metadata cannot be retrieved within this deadline will be added to unreachable in ListInstancePartitionsResponse.
    , instancePartitionDeadline :: (Core.Maybe Core.DateTime)
      -- | Number of instance partitions to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListInstancePartitionsResponse.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The instance whose instance partitions should be listed. Values are of the form @projects\/\/instances\/@. Use @{instance} = \'-\'@ to list instance partitions for all Instances in a project, e.g., @projects\/myproject\/instances\/-@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesInstancePartitionsList' with the minimum fields required to make a request.
newSpannerProjectsInstancesInstancePartitionsList 
    ::  Core.Text
       -- ^  Required. The instance whose instance partitions should be listed. Values are of the form @projects\/\/instances\/@. Use @{instance} = \'-\'@ to list instance partitions for all Instances in a project, e.g., @projects\/myproject\/instances\/-@. See 'parent'.
    -> SpannerProjectsInstancesInstancePartitionsList
newSpannerProjectsInstancesInstancePartitionsList parent =
  SpannerProjectsInstancesInstancePartitionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instancePartitionDeadline = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesInstancePartitionsList
         where
        type Rs
               SpannerProjectsInstancesInstancePartitionsList
             = ListInstancePartitionsResponse
        type Scopes
               SpannerProjectsInstancesInstancePartitionsList
             = '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesInstancePartitionsList{..}
          = go parent xgafv accessToken callback
              instancePartitionDeadline
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesInstancePartitionsListResource)
                      Core.mempty

