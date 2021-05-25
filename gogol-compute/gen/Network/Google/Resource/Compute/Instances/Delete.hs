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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Instance resource. For more information, see
-- Deleting an instance.
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
    , idRequestId
    , idProject
    , idZone
    , idInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.delete@ method which the
-- 'InstancesDelete' request conforms to.
type InstancesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Instance resource. For more information, see
-- Deleting an instance.
--
-- /See:/ 'instancesDelete' smart constructor.
data InstancesDelete =
  InstancesDelete'
    { _idRequestId :: !(Maybe Text)
    , _idProject :: !Text
    , _idZone :: !Text
    , _idInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idRequestId'
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
  InstancesDelete'
    { _idRequestId = Nothing
    , _idProject = pIdProject_
    , _idZone = pIdZone_
    , _idInstance = pIdInstance_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
idRequestId :: Lens' InstancesDelete (Maybe Text)
idRequestId
  = lens _idRequestId (\ s a -> s{_idRequestId = a})

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
        type Scopes InstancesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesDelete'{..}
          = go _idProject _idZone _idInstance _idRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDeleteResource)
                      mempty
