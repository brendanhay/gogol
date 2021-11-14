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
-- Module      : Network.Google.Resource.Compute.Instances.GetGuestAttributes
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified guest attributes entry.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.getGuestAttributes@.
module Network.Google.Resource.Compute.Instances.GetGuestAttributes
    (
    -- * REST Resource
      InstancesGetGuestAttributesResource

    -- * Creating a Request
    , instancesGetGuestAttributes
    , InstancesGetGuestAttributes

    -- * Request Lenses
    , iggaProject
    , iggaZone
    , iggaVariableKey
    , iggaQueryPath
    , iggaInstance
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.getGuestAttributes@ method which the
-- 'InstancesGetGuestAttributes' request conforms to.
type InstancesGetGuestAttributesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "getGuestAttributes" :>
                       QueryParam "variableKey" Text :>
                         QueryParam "queryPath" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GuestAttributes

-- | Returns the specified guest attributes entry.
--
-- /See:/ 'instancesGetGuestAttributes' smart constructor.
data InstancesGetGuestAttributes =
  InstancesGetGuestAttributes'
    { _iggaProject :: !Text
    , _iggaZone :: !Text
    , _iggaVariableKey :: !(Maybe Text)
    , _iggaQueryPath :: !(Maybe Text)
    , _iggaInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesGetGuestAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iggaProject'
--
-- * 'iggaZone'
--
-- * 'iggaVariableKey'
--
-- * 'iggaQueryPath'
--
-- * 'iggaInstance'
instancesGetGuestAttributes
    :: Text -- ^ 'iggaProject'
    -> Text -- ^ 'iggaZone'
    -> Text -- ^ 'iggaInstance'
    -> InstancesGetGuestAttributes
instancesGetGuestAttributes pIggaProject_ pIggaZone_ pIggaInstance_ =
  InstancesGetGuestAttributes'
    { _iggaProject = pIggaProject_
    , _iggaZone = pIggaZone_
    , _iggaVariableKey = Nothing
    , _iggaQueryPath = Nothing
    , _iggaInstance = pIggaInstance_
    }


-- | Project ID for this request.
iggaProject :: Lens' InstancesGetGuestAttributes Text
iggaProject
  = lens _iggaProject (\ s a -> s{_iggaProject = a})

-- | The name of the zone for this request.
iggaZone :: Lens' InstancesGetGuestAttributes Text
iggaZone = lens _iggaZone (\ s a -> s{_iggaZone = a})

-- | Specifies the key for the guest attributes entry.
iggaVariableKey :: Lens' InstancesGetGuestAttributes (Maybe Text)
iggaVariableKey
  = lens _iggaVariableKey
      (\ s a -> s{_iggaVariableKey = a})

-- | Specifies the guest attributes path to be queried.
iggaQueryPath :: Lens' InstancesGetGuestAttributes (Maybe Text)
iggaQueryPath
  = lens _iggaQueryPath
      (\ s a -> s{_iggaQueryPath = a})

-- | Name of the instance scoping this request.
iggaInstance :: Lens' InstancesGetGuestAttributes Text
iggaInstance
  = lens _iggaInstance (\ s a -> s{_iggaInstance = a})

instance GoogleRequest InstancesGetGuestAttributes
         where
        type Rs InstancesGetGuestAttributes = GuestAttributes
        type Scopes InstancesGetGuestAttributes =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesGetGuestAttributes'{..}
          = go _iggaProject _iggaZone _iggaInstance
              _iggaVariableKey
              _iggaQueryPath
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesGetGuestAttributesResource)
                      mempty
