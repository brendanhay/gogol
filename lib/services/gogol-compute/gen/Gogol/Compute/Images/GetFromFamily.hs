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
-- Module      : Gogol.Compute.Images.GetFromFamily
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the latest image that is part of an image family and is not deprecated. For more information on image families, see Public image families documentation.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.images.getFromFamily@.
module Gogol.Compute.Images.GetFromFamily
    (
    -- * Resource
      ComputeImagesGetFromFamilyResource

    -- ** Constructing a Request
    , ComputeImagesGetFromFamily (..)
    , newComputeImagesGetFromFamily
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.images.getFromFamily@ method which the
-- 'ComputeImagesGetFromFamily' request conforms to.
type ComputeImagesGetFromFamilyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "images" Core.:>
                 "family" Core.:>
                   Core.Capture "family" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] Image

-- | Returns the latest image that is part of an image family and is not deprecated. For more information on image families, see Public image families documentation.
--
-- /See:/ 'newComputeImagesGetFromFamily' smart constructor.
data ComputeImagesGetFromFamily = ComputeImagesGetFromFamily
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the image family to search for.
    , family :: Core.Text
      -- | The image project that the image belongs to. For example, to get a CentOS image, specify centos-cloud as the image project.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeImagesGetFromFamily' with the minimum fields required to make a request.
newComputeImagesGetFromFamily 
    ::  Core.Text
       -- ^  Name of the image family to search for. See 'family'.
    -> Core.Text
       -- ^  The image project that the image belongs to. For example, to get a CentOS image, specify centos-cloud as the image project. See 'project'.
    -> ComputeImagesGetFromFamily
newComputeImagesGetFromFamily family project =
  ComputeImagesGetFromFamily
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , family = family
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeImagesGetFromFamily
         where
        type Rs ComputeImagesGetFromFamily = Image
        type Scopes ComputeImagesGetFromFamily =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeImagesGetFromFamily{..}
          = go project family xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeImagesGetFromFamilyResource)
                      Core.mempty

