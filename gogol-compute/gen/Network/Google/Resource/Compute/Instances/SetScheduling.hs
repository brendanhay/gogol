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
-- Module      : Network.Google.Resource.Compute.Instances.SetScheduling
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets an instance\'s scheduling options.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setScheduling@.
module Network.Google.Resource.Compute.Instances.SetScheduling
    (
    -- * REST Resource
      InstancesSetSchedulingResource

    -- * Creating a Request
    , instancesSetScheduling
    , InstancesSetScheduling

    -- * Request Lenses
    , issRequestId
    , issProject
    , issZone
    , issPayload
    , issInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setScheduling@ method which the
-- 'InstancesSetScheduling' request conforms to.
type InstancesSetSchedulingResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setScheduling" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Scheduling :> Post '[JSON] Operation

-- | Sets an instance\'s scheduling options.
--
-- /See:/ 'instancesSetScheduling' smart constructor.
data InstancesSetScheduling = InstancesSetScheduling'
    { _issRequestId :: !(Maybe Text)
    , _issProject   :: !Text
    , _issZone      :: !Text
    , _issPayload   :: !Scheduling
    , _issInstance  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetScheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issRequestId'
--
-- * 'issProject'
--
-- * 'issZone'
--
-- * 'issPayload'
--
-- * 'issInstance'
instancesSetScheduling
    :: Text -- ^ 'issProject'
    -> Text -- ^ 'issZone'
    -> Scheduling -- ^ 'issPayload'
    -> Text -- ^ 'issInstance'
    -> InstancesSetScheduling
instancesSetScheduling pIssProject_ pIssZone_ pIssPayload_ pIssInstance_ =
    InstancesSetScheduling'
    { _issRequestId = Nothing
    , _issProject = pIssProject_
    , _issZone = pIssZone_
    , _issPayload = pIssPayload_
    , _issInstance = pIssInstance_
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
issRequestId :: Lens' InstancesSetScheduling (Maybe Text)
issRequestId
  = lens _issRequestId (\ s a -> s{_issRequestId = a})

-- | Project ID for this request.
issProject :: Lens' InstancesSetScheduling Text
issProject
  = lens _issProject (\ s a -> s{_issProject = a})

-- | The name of the zone for this request.
issZone :: Lens' InstancesSetScheduling Text
issZone = lens _issZone (\ s a -> s{_issZone = a})

-- | Multipart request metadata.
issPayload :: Lens' InstancesSetScheduling Scheduling
issPayload
  = lens _issPayload (\ s a -> s{_issPayload = a})

-- | Instance name for this request.
issInstance :: Lens' InstancesSetScheduling Text
issInstance
  = lens _issInstance (\ s a -> s{_issInstance = a})

instance GoogleRequest InstancesSetScheduling where
        type Rs InstancesSetScheduling = Operation
        type Scopes InstancesSetScheduling =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetScheduling'{..}
          = go _issProject _issZone _issInstance _issRequestId
              (Just AltJSON)
              _issPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetSchedulingResource)
                      mempty
