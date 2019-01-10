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
-- Module      : Network.Google.Resource.Compute.Instances.Start
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an instance that was stopped using the instances().stop method.
-- For more information, see Restart an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.start@.
module Network.Google.Resource.Compute.Instances.Start
    (
    -- * REST Resource
      InstancesStartResource

    -- * Creating a Request
    , instancesStart
    , InstancesStart

    -- * Request Lenses
    , insnRequestId
    , insnProject
    , insnZone
    , insnInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.start@ method which the
-- 'InstancesStart' request conforms to.
type InstancesStartResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "start" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Starts an instance that was stopped using the instances().stop method.
-- For more information, see Restart an instance.
--
-- /See:/ 'instancesStart' smart constructor.
data InstancesStart = InstancesStart'
    { _insnRequestId :: !(Maybe Text)
    , _insnProject   :: !Text
    , _insnZone      :: !Text
    , _insnInstance  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insnRequestId'
--
-- * 'insnProject'
--
-- * 'insnZone'
--
-- * 'insnInstance'
instancesStart
    :: Text -- ^ 'insnProject'
    -> Text -- ^ 'insnZone'
    -> Text -- ^ 'insnInstance'
    -> InstancesStart
instancesStart pInsnProject_ pInsnZone_ pInsnInstance_ =
    InstancesStart'
    { _insnRequestId = Nothing
    , _insnProject = pInsnProject_
    , _insnZone = pInsnZone_
    , _insnInstance = pInsnInstance_
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
insnRequestId :: Lens' InstancesStart (Maybe Text)
insnRequestId
  = lens _insnRequestId
      (\ s a -> s{_insnRequestId = a})

-- | Project ID for this request.
insnProject :: Lens' InstancesStart Text
insnProject
  = lens _insnProject (\ s a -> s{_insnProject = a})

-- | The name of the zone for this request.
insnZone :: Lens' InstancesStart Text
insnZone = lens _insnZone (\ s a -> s{_insnZone = a})

-- | Name of the instance resource to start.
insnInstance :: Lens' InstancesStart Text
insnInstance
  = lens _insnInstance (\ s a -> s{_insnInstance = a})

instance GoogleRequest InstancesStart where
        type Rs InstancesStart = Operation
        type Scopes InstancesStart =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesStart'{..}
          = go _insnProject _insnZone _insnInstance
              _insnRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesStartResource)
                      mempty
