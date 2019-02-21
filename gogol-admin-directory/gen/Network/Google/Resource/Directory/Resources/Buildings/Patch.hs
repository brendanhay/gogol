{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a building. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.buildings.patch@.
module Network.Google.Resource.Directory.Resources.Buildings.Patch
    (
    -- * REST Resource
      ResourcesBuildingsPatchResource

    -- * Creating a Request
    , resourcesBuildingsPatch
    , ResourcesBuildingsPatch

    -- * Request Lenses
    , rbpBuildingId
    , rbpPayload
    , rbpCustomer
    , rbpCoordinatesSource
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.patch@ method which the
-- 'ResourcesBuildingsPatch' request conforms to.
type ResourcesBuildingsPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   Capture "buildingId" Text :>
                     QueryParam "coordinatesSource"
                       ResourcesBuildingsPatchCoordinatesSource
                       :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Building :> Patch '[JSON] Building

-- | Updates a building. This method supports patch semantics.
--
-- /See:/ 'resourcesBuildingsPatch' smart constructor.
data ResourcesBuildingsPatch =
  ResourcesBuildingsPatch'
    { _rbpBuildingId        :: !Text
    , _rbpPayload           :: !Building
    , _rbpCustomer          :: !Text
    , _rbpCoordinatesSource :: !ResourcesBuildingsPatchCoordinatesSource
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbpBuildingId'
--
-- * 'rbpPayload'
--
-- * 'rbpCustomer'
--
-- * 'rbpCoordinatesSource'
resourcesBuildingsPatch
    :: Text -- ^ 'rbpBuildingId'
    -> Building -- ^ 'rbpPayload'
    -> Text -- ^ 'rbpCustomer'
    -> ResourcesBuildingsPatch
resourcesBuildingsPatch pRbpBuildingId_ pRbpPayload_ pRbpCustomer_ =
  ResourcesBuildingsPatch'
    { _rbpBuildingId = pRbpBuildingId_
    , _rbpPayload = pRbpPayload_
    , _rbpCustomer = pRbpCustomer_
    , _rbpCoordinatesSource = SourceUnspecified
    }


-- | The ID of the building to update.
rbpBuildingId :: Lens' ResourcesBuildingsPatch Text
rbpBuildingId
  = lens _rbpBuildingId
      (\ s a -> s{_rbpBuildingId = a})

-- | Multipart request metadata.
rbpPayload :: Lens' ResourcesBuildingsPatch Building
rbpPayload
  = lens _rbpPayload (\ s a -> s{_rbpPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rbpCustomer :: Lens' ResourcesBuildingsPatch Text
rbpCustomer
  = lens _rbpCustomer (\ s a -> s{_rbpCustomer = a})

-- | Source from which Building.coordinates are derived.
rbpCoordinatesSource :: Lens' ResourcesBuildingsPatch ResourcesBuildingsPatchCoordinatesSource
rbpCoordinatesSource
  = lens _rbpCoordinatesSource
      (\ s a -> s{_rbpCoordinatesSource = a})

instance GoogleRequest ResourcesBuildingsPatch where
        type Rs ResourcesBuildingsPatch = Building
        type Scopes ResourcesBuildingsPatch =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsPatch'{..}
          = go _rbpCustomer _rbpBuildingId
              (Just _rbpCoordinatesSource)
              (Just AltJSON)
              _rbpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsPatchResource)
                      mempty
