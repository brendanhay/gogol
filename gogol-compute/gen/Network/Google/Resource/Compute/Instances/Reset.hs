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
-- Module      : Network.Google.Resource.Compute.Instances.Reset
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs a reset on the instance. This is a hard reset the VM does not
-- do a graceful shutdown. For more information, see Resetting an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.reset@.
module Network.Google.Resource.Compute.Instances.Reset
    (
    -- * REST Resource
      InstancesResetResource

    -- * Creating a Request
    , instancesReset
    , InstancesReset

    -- * Request Lenses
    , irRequestId
    , irProject
    , irZone
    , irInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.reset@ method which the
-- 'InstancesReset' request conforms to.
type InstancesResetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "reset" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Performs a reset on the instance. This is a hard reset the VM does not
-- do a graceful shutdown. For more information, see Resetting an instance.
--
-- /See:/ 'instancesReset' smart constructor.
data InstancesReset =
  InstancesReset'
    { _irRequestId :: !(Maybe Text)
    , _irProject   :: !Text
    , _irZone      :: !Text
    , _irInstance  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irRequestId'
--
-- * 'irProject'
--
-- * 'irZone'
--
-- * 'irInstance'
instancesReset
    :: Text -- ^ 'irProject'
    -> Text -- ^ 'irZone'
    -> Text -- ^ 'irInstance'
    -> InstancesReset
instancesReset pIrProject_ pIrZone_ pIrInstance_ =
  InstancesReset'
    { _irRequestId = Nothing
    , _irProject = pIrProject_
    , _irZone = pIrZone_
    , _irInstance = pIrInstance_
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
irRequestId :: Lens' InstancesReset (Maybe Text)
irRequestId
  = lens _irRequestId (\ s a -> s{_irRequestId = a})

-- | Project ID for this request.
irProject :: Lens' InstancesReset Text
irProject
  = lens _irProject (\ s a -> s{_irProject = a})

-- | The name of the zone for this request.
irZone :: Lens' InstancesReset Text
irZone = lens _irZone (\ s a -> s{_irZone = a})

-- | Name of the instance scoping this request.
irInstance :: Lens' InstancesReset Text
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance GoogleRequest InstancesReset where
        type Rs InstancesReset = Operation
        type Scopes InstancesReset =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesReset'{..}
          = go _irProject _irZone _irInstance _irRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesResetResource)
                      mempty
