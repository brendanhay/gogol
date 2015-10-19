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
-- Module      : Network.Google.Resource.Compute.Instances.SetDiskAutoDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the auto-delete flag for a disk attached to an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetDiskAutoDelete@.
module Network.Google.Resource.Compute.Instances.SetDiskAutoDelete
    (
    -- * REST Resource
      InstancesSetDiskAutoDeleteResource

    -- * Creating a Request
    , instancesSetDiskAutoDelete'
    , InstancesSetDiskAutoDelete'

    -- * Request Lenses
    , isdadProject
    , isdadAutoDelete
    , isdadZone
    , isdadDeviceName
    , isdadInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetDiskAutoDelete@ method which the
-- 'InstancesSetDiskAutoDelete'' request conforms to.
type InstancesSetDiskAutoDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setDiskAutoDelete" :>
                 QueryParam "autoDelete" Bool :>
                   QueryParam "deviceName" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Sets the auto-delete flag for a disk attached to an instance.
--
-- /See:/ 'instancesSetDiskAutoDelete'' smart constructor.
data InstancesSetDiskAutoDelete' = InstancesSetDiskAutoDelete'
    { _isdadProject    :: !Text
    , _isdadAutoDelete :: !Bool
    , _isdadZone       :: !Text
    , _isdadDeviceName :: !Text
    , _isdadInstance   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetDiskAutoDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isdadProject'
--
-- * 'isdadAutoDelete'
--
-- * 'isdadZone'
--
-- * 'isdadDeviceName'
--
-- * 'isdadInstance'
instancesSetDiskAutoDelete'
    :: Text -- ^ 'project'
    -> Bool -- ^ 'autoDelete'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'deviceName'
    -> Text -- ^ 'instance'
    -> InstancesSetDiskAutoDelete'
instancesSetDiskAutoDelete' pIsdadProject_ pIsdadAutoDelete_ pIsdadZone_ pIsdadDeviceName_ pIsdadInstance_ =
    InstancesSetDiskAutoDelete'
    { _isdadProject = pIsdadProject_
    , _isdadAutoDelete = pIsdadAutoDelete_
    , _isdadZone = pIsdadZone_
    , _isdadDeviceName = pIsdadDeviceName_
    , _isdadInstance = pIsdadInstance_
    }

-- | Project ID for this request.
isdadProject :: Lens' InstancesSetDiskAutoDelete' Text
isdadProject
  = lens _isdadProject (\ s a -> s{_isdadProject = a})

-- | Whether to auto-delete the disk when the instance is deleted.
isdadAutoDelete :: Lens' InstancesSetDiskAutoDelete' Bool
isdadAutoDelete
  = lens _isdadAutoDelete
      (\ s a -> s{_isdadAutoDelete = a})

-- | The name of the zone for this request.
isdadZone :: Lens' InstancesSetDiskAutoDelete' Text
isdadZone
  = lens _isdadZone (\ s a -> s{_isdadZone = a})

-- | The device name of the disk to modify.
isdadDeviceName :: Lens' InstancesSetDiskAutoDelete' Text
isdadDeviceName
  = lens _isdadDeviceName
      (\ s a -> s{_isdadDeviceName = a})

-- | The instance name.
isdadInstance :: Lens' InstancesSetDiskAutoDelete' Text
isdadInstance
  = lens _isdadInstance
      (\ s a -> s{_isdadInstance = a})

instance GoogleRequest InstancesSetDiskAutoDelete'
         where
        type Rs InstancesSetDiskAutoDelete' = Operation
        requestClient InstancesSetDiskAutoDelete'{..}
          = go _isdadProject _isdadZone _isdadInstance
              (Just _isdadAutoDelete)
              (Just _isdadDeviceName)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetDiskAutoDeleteResource)
                      mempty
