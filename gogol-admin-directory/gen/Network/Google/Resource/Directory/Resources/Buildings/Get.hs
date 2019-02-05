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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.buildings.get@.
module Network.Google.Resource.Directory.Resources.Buildings.Get
    (
    -- * REST Resource
      ResourcesBuildingsGetResource

    -- * Creating a Request
    , resourcesBuildingsGet
    , ResourcesBuildingsGet

    -- * Request Lenses
    , rbgBuildingId
    , rbgCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.get@ method which the
-- 'ResourcesBuildingsGet' request conforms to.
type ResourcesBuildingsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   Capture "buildingId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Building

-- | Retrieves a building.
--
-- /See:/ 'resourcesBuildingsGet' smart constructor.
data ResourcesBuildingsGet = ResourcesBuildingsGet'
    { _rbgBuildingId :: !Text
    , _rbgCustomer   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesBuildingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbgBuildingId'
--
-- * 'rbgCustomer'
resourcesBuildingsGet
    :: Text -- ^ 'rbgBuildingId'
    -> Text -- ^ 'rbgCustomer'
    -> ResourcesBuildingsGet
resourcesBuildingsGet pRbgBuildingId_ pRbgCustomer_ =
    ResourcesBuildingsGet'
    { _rbgBuildingId = pRbgBuildingId_
    , _rbgCustomer = pRbgCustomer_
    }

-- | The unique ID of the building to retrieve.
rbgBuildingId :: Lens' ResourcesBuildingsGet Text
rbgBuildingId
  = lens _rbgBuildingId
      (\ s a -> s{_rbgBuildingId = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rbgCustomer :: Lens' ResourcesBuildingsGet Text
rbgCustomer
  = lens _rbgCustomer (\ s a -> s{_rbgCustomer = a})

instance GoogleRequest ResourcesBuildingsGet where
        type Rs ResourcesBuildingsGet = Building
        type Scopes ResourcesBuildingsGet =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesBuildingsGet'{..}
          = go _rbgCustomer _rbgBuildingId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsGetResource)
                      mempty
