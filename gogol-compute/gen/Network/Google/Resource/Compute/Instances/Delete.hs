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
-- Module      : Network.Google.Resource.Compute.Instances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.delete@.
module Network.Google.Resource.Compute.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteResource

    -- * Creating a Request
    , instancesDelete
    , InstancesDelete

    -- * Request Lenses
    , idProject
    , idZone
    , idInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.delete@ method which the
-- 'InstancesDelete' request conforms to.
type InstancesDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Shutting down an instance.
--
-- /See:/ 'instancesDelete' smart constructor.
data InstancesDelete = InstancesDelete
    { _idProject  :: !Text
    , _idZone     :: !Text
    , _idInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idProject'
--
-- * 'idZone'
--
-- * 'idInstance'
instancesDelete
    :: Text -- ^ 'idProject'
    -> Text -- ^ 'idZone'
    -> Text -- ^ 'idInstance'
    -> InstancesDelete
instancesDelete pIdProject_ pIdZone_ pIdInstance_ =
    InstancesDelete
    { _idProject = pIdProject_
    , _idZone = pIdZone_
    , _idInstance = pIdInstance_
    }

-- | Project ID for this request.
idProject :: Lens' InstancesDelete Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

-- | The name of the zone for this request.
idZone :: Lens' InstancesDelete Text
idZone = lens _idZone (\ s a -> s{_idZone = a})

-- | Name of the instance resource to delete.
idInstance :: Lens' InstancesDelete Text
idInstance
  = lens _idInstance (\ s a -> s{_idInstance = a})

instance GoogleRequest InstancesDelete where
        type Rs InstancesDelete = Operation
        requestClient InstancesDelete{..}
          = go _idProject _idZone _idInstance (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDeleteResource)
                      mempty
