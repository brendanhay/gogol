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
-- Module      : Gogol.DLP.Organizations.Locations.FileStoreDataProfiles.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a FileStoreDataProfile. Will not prevent the profile from being regenerated if the resource is still included in a discovery configuration.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.fileStoreDataProfiles.delete@.
module Gogol.DLP.Organizations.Locations.FileStoreDataProfiles.Delete
    (
    -- * Resource
      DLPOrganizationsLocationsFileStoreDataProfilesDeleteResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsFileStoreDataProfilesDelete (..)
    , newDLPOrganizationsLocationsFileStoreDataProfilesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.fileStoreDataProfiles.delete@ method which the
-- 'DLPOrganizationsLocationsFileStoreDataProfilesDelete' request conforms to.
type DLPOrganizationsLocationsFileStoreDataProfilesDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Delete a FileStoreDataProfile. Will not prevent the profile from being regenerated if the resource is still included in a discovery configuration.
--
-- /See:/ 'newDLPOrganizationsLocationsFileStoreDataProfilesDelete' smart constructor.
data DLPOrganizationsLocationsFileStoreDataProfilesDelete = DLPOrganizationsLocationsFileStoreDataProfilesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the file store data profile.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsFileStoreDataProfilesDelete' with the minimum fields required to make a request.
newDLPOrganizationsLocationsFileStoreDataProfilesDelete 
    ::  Core.Text
       -- ^  Required. Resource name of the file store data profile. See 'name'.
    -> DLPOrganizationsLocationsFileStoreDataProfilesDelete
newDLPOrganizationsLocationsFileStoreDataProfilesDelete name =
  DLPOrganizationsLocationsFileStoreDataProfilesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsFileStoreDataProfilesDelete
         where
        type Rs
               DLPOrganizationsLocationsFileStoreDataProfilesDelete
             = GoogleProtobufEmpty
        type Scopes
               DLPOrganizationsLocationsFileStoreDataProfilesDelete
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsFileStoreDataProfilesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsFileStoreDataProfilesDeleteResource)
                      Core.mempty

