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
-- Module      : Gogol.Compute.PublicAdvertisedPrefixes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified PublicAdvertisedPrefix resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.publicAdvertisedPrefixes.get@.
module Gogol.Compute.PublicAdvertisedPrefixes.Get
    (
    -- * Resource
      ComputePublicAdvertisedPrefixesGetResource

    -- ** Constructing a Request
    , newComputePublicAdvertisedPrefixesGet
    , ComputePublicAdvertisedPrefixesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.publicAdvertisedPrefixes.get@ method which the
-- 'ComputePublicAdvertisedPrefixesGet' request conforms to.
type ComputePublicAdvertisedPrefixesGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "publicAdvertisedPrefixes" Core.:>
                 Core.Capture "publicAdvertisedPrefix" Core.Text
                   Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] PublicAdvertisedPrefix

-- | Returns the specified PublicAdvertisedPrefix resource.
--
-- /See:/ 'newComputePublicAdvertisedPrefixesGet' smart constructor.
data ComputePublicAdvertisedPrefixesGet = ComputePublicAdvertisedPrefixesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the PublicAdvertisedPrefix resource to return.
    , publicAdvertisedPrefix :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputePublicAdvertisedPrefixesGet' with the minimum fields required to make a request.
newComputePublicAdvertisedPrefixesGet 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the PublicAdvertisedPrefix resource to return. See 'publicAdvertisedPrefix'.
    -> ComputePublicAdvertisedPrefixesGet
newComputePublicAdvertisedPrefixesGet project publicAdvertisedPrefix =
  ComputePublicAdvertisedPrefixesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , project = project
    , publicAdvertisedPrefix = publicAdvertisedPrefix
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputePublicAdvertisedPrefixesGet
         where
        type Rs ComputePublicAdvertisedPrefixesGet =
             PublicAdvertisedPrefix
        type Scopes ComputePublicAdvertisedPrefixesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ComputePublicAdvertisedPrefixesGet{..}
          = go project publicAdvertisedPrefix xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputePublicAdvertisedPrefixesGetResource)
                      Core.mempty

