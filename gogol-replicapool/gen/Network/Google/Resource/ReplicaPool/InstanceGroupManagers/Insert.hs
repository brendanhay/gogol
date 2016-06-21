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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance group manager, as well as the instance group and the
-- specified number of instances.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.insert@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Insert
    (
    -- * REST Resource
      InstanceGroupManagersInsertResource

    -- * Creating a Request
    , instanceGroupManagersInsert
    , InstanceGroupManagersInsert

    -- * Request Lenses
    , igmiProject
    , igmiSize
    , igmiZone
    , igmiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.instanceGroupManagers.insert@ method which the
-- 'InstanceGroupManagersInsert' request conforms to.
type InstanceGroupManagersInsertResource =
     "replicapool" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "size" (Textual Int32) :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InstanceGroupManager :>
                         Post '[JSON] Operation

-- | Creates an instance group manager, as well as the instance group and the
-- specified number of instances.
--
-- /See:/ 'instanceGroupManagersInsert' smart constructor.
data InstanceGroupManagersInsert = InstanceGroupManagersInsert'
    { _igmiProject :: !Text
    , _igmiSize    :: !(Textual Int32)
    , _igmiZone    :: !Text
    , _igmiPayload :: !InstanceGroupManager
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmiProject'
--
-- * 'igmiSize'
--
-- * 'igmiZone'
--
-- * 'igmiPayload'
instanceGroupManagersInsert
    :: Text -- ^ 'igmiProject'
    -> Int32 -- ^ 'igmiSize'
    -> Text -- ^ 'igmiZone'
    -> InstanceGroupManager -- ^ 'igmiPayload'
    -> InstanceGroupManagersInsert
instanceGroupManagersInsert pIgmiProject_ pIgmiSize_ pIgmiZone_ pIgmiPayload_ =
    InstanceGroupManagersInsert'
    { _igmiProject = pIgmiProject_
    , _igmiSize = _Coerce # pIgmiSize_
    , _igmiZone = pIgmiZone_
    , _igmiPayload = pIgmiPayload_
    }

-- | The Google Developers Console project name.
igmiProject :: Lens' InstanceGroupManagersInsert Text
igmiProject
  = lens _igmiProject (\ s a -> s{_igmiProject = a})

-- | Number of instances that should exist.
igmiSize :: Lens' InstanceGroupManagersInsert Int32
igmiSize
  = lens _igmiSize (\ s a -> s{_igmiSize = a}) .
      _Coerce

-- | The name of the zone in which the instance group manager resides.
igmiZone :: Lens' InstanceGroupManagersInsert Text
igmiZone = lens _igmiZone (\ s a -> s{_igmiZone = a})

-- | Multipart request metadata.
igmiPayload :: Lens' InstanceGroupManagersInsert InstanceGroupManager
igmiPayload
  = lens _igmiPayload (\ s a -> s{_igmiPayload = a})

instance GoogleRequest InstanceGroupManagersInsert
         where
        type Rs InstanceGroupManagersInsert = Operation
        type Scopes InstanceGroupManagersInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupManagersInsert'{..}
          = go _igmiProject _igmiZone (Just _igmiSize)
              (Just AltJSON)
              _igmiPayload
              replicaPoolService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersInsertResource)
                      mempty
