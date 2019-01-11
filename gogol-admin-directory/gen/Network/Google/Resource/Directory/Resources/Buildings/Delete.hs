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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.buildings.delete@.
module Network.Google.Resource.Directory.Resources.Buildings.Delete
    (
    -- * REST Resource
      ResourcesBuildingsDeleteResource

    -- * Creating a Request
    , resourcesBuildingsDelete
    , ResourcesBuildingsDelete

    -- * Request Lenses
    , rbdBuildingId
    , rbdCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.delete@ method which the
-- 'ResourcesBuildingsDelete' request conforms to.
type ResourcesBuildingsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   Capture "buildingId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a building.
--
-- /See:/ 'resourcesBuildingsDelete' smart constructor.
data ResourcesBuildingsDelete = ResourcesBuildingsDelete'
    { _rbdBuildingId :: !Text
    , _rbdCustomer   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesBuildingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbdBuildingId'
--
-- * 'rbdCustomer'
resourcesBuildingsDelete
    :: Text -- ^ 'rbdBuildingId'
    -> Text -- ^ 'rbdCustomer'
    -> ResourcesBuildingsDelete
resourcesBuildingsDelete pRbdBuildingId_ pRbdCustomer_ =
    ResourcesBuildingsDelete'
    { _rbdBuildingId = pRbdBuildingId_
    , _rbdCustomer = pRbdCustomer_
    }

-- | The ID of the building to delete.
rbdBuildingId :: Lens' ResourcesBuildingsDelete Text
rbdBuildingId
  = lens _rbdBuildingId
      (\ s a -> s{_rbdBuildingId = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rbdCustomer :: Lens' ResourcesBuildingsDelete Text
rbdCustomer
  = lens _rbdCustomer (\ s a -> s{_rbdCustomer = a})

instance GoogleRequest ResourcesBuildingsDelete where
        type Rs ResourcesBuildingsDelete = ()
        type Scopes ResourcesBuildingsDelete =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsDelete'{..}
          = go _rbdCustomer _rbdBuildingId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsDeleteResource)
                      mempty
