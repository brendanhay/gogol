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
-- Module      : Network.Google.Resource.Compute.Instances.SetMachineType
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the machine type for a stopped instance to the machine type
-- specified in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setMachineType@.
module Network.Google.Resource.Compute.Instances.SetMachineType
    (
    -- * REST Resource
      InstancesSetMachineTypeResource

    -- * Creating a Request
    , instancesSetMachineType
    , InstancesSetMachineType

    -- * Request Lenses
    , ismtProject
    , ismtZone
    , ismtPayload
    , ismtInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setMachineType@ method which the
-- 'InstancesSetMachineType' request conforms to.
type InstancesSetMachineTypeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setMachineType" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstancesSetMachineTypeRequest :>
                           Post '[JSON] Operation

-- | Changes the machine type for a stopped instance to the machine type
-- specified in the request.
--
-- /See:/ 'instancesSetMachineType' smart constructor.
data InstancesSetMachineType = InstancesSetMachineType'
    { _ismtProject  :: !Text
    , _ismtZone     :: !Text
    , _ismtPayload  :: !InstancesSetMachineTypeRequest
    , _ismtInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetMachineType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismtProject'
--
-- * 'ismtZone'
--
-- * 'ismtPayload'
--
-- * 'ismtInstance'
instancesSetMachineType
    :: Text -- ^ 'ismtProject'
    -> Text -- ^ 'ismtZone'
    -> InstancesSetMachineTypeRequest -- ^ 'ismtPayload'
    -> Text -- ^ 'ismtInstance'
    -> InstancesSetMachineType
instancesSetMachineType pIsmtProject_ pIsmtZone_ pIsmtPayload_ pIsmtInstance_ =
    InstancesSetMachineType'
    { _ismtProject = pIsmtProject_
    , _ismtZone = pIsmtZone_
    , _ismtPayload = pIsmtPayload_
    , _ismtInstance = pIsmtInstance_
    }

-- | Project ID for this request.
ismtProject :: Lens' InstancesSetMachineType Text
ismtProject
  = lens _ismtProject (\ s a -> s{_ismtProject = a})

-- | The name of the zone for this request.
ismtZone :: Lens' InstancesSetMachineType Text
ismtZone = lens _ismtZone (\ s a -> s{_ismtZone = a})

-- | Multipart request metadata.
ismtPayload :: Lens' InstancesSetMachineType InstancesSetMachineTypeRequest
ismtPayload
  = lens _ismtPayload (\ s a -> s{_ismtPayload = a})

-- | Name of the instance scoping this request.
ismtInstance :: Lens' InstancesSetMachineType Text
ismtInstance
  = lens _ismtInstance (\ s a -> s{_ismtInstance = a})

instance GoogleRequest InstancesSetMachineType where
        type Rs InstancesSetMachineType = Operation
        type Scopes InstancesSetMachineType =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetMachineType'{..}
          = go _ismtProject _ismtZone _ismtInstance
              (Just AltJSON)
              _ismtPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetMachineTypeResource)
                      mempty
