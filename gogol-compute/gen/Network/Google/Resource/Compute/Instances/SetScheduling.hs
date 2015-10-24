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
-- Copyright   : (c) 2015 Brendan Hay
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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Scheduling :> Post '[JSON] Operation

-- | Sets an instance\'s scheduling options.
--
-- /See:/ 'instancesSetScheduling' smart constructor.
data InstancesSetScheduling = InstancesSetScheduling
    { _issProject  :: !Text
    , _issZone     :: !Text
    , _issPayload  :: !Scheduling
    , _issInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetScheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    InstancesSetScheduling
    { _issProject = pIssProject_
    , _issZone = pIssZone_
    , _issPayload = pIssPayload_
    , _issInstance = pIssInstance_
    }

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

-- | Instance name.
issInstance :: Lens' InstancesSetScheduling Text
issInstance
  = lens _issInstance (\ s a -> s{_issInstance = a})

instance GoogleRequest InstancesSetScheduling where
        type Rs InstancesSetScheduling = Operation
        requestClient InstancesSetScheduling{..}
          = go _issProject _issZone _issInstance (Just AltJSON)
              _issPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetSchedulingResource)
                      mempty
