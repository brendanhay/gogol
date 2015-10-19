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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a managed instance group using the information that you specify
-- in the request. After the group is created, it schedules an action to
-- create instances in the group using the specified instance template.
-- This operation is marked as DONE when the group is created even if the
-- instances in the group have not yet been created. You must separately
-- verify the status of the individual instances with the
-- listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersInsert@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Insert
    (
    -- * REST Resource
      InstanceGroupManagersInsertResource

    -- * Creating a Request
    , instanceGroupManagersInsert'
    , InstanceGroupManagersInsert'

    -- * Request Lenses
    , igmiProject
    , igmiZone
    , igmiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersInsert@ method which the
-- 'InstanceGroupManagersInsert'' request conforms to.
type InstanceGroupManagersInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] InstanceGroupManager :>
                 Post '[JSON] Operation

-- | Creates a managed instance group using the information that you specify
-- in the request. After the group is created, it schedules an action to
-- create instances in the group using the specified instance template.
-- This operation is marked as DONE when the group is created even if the
-- instances in the group have not yet been created. You must separately
-- verify the status of the individual instances with the
-- listmanagedinstances method.
--
-- /See:/ 'instanceGroupManagersInsert'' smart constructor.
data InstanceGroupManagersInsert' = InstanceGroupManagersInsert'
    { _igmiProject :: !Text
    , _igmiZone    :: !Text
    , _igmiPayload :: !InstanceGroupManager
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmiProject'
--
-- * 'igmiZone'
--
-- * 'igmiPayload'
instanceGroupManagersInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupManager -- ^ 'payload'
    -> InstanceGroupManagersInsert'
instanceGroupManagersInsert' pIgmiProject_ pIgmiZone_ pIgmiPayload_ =
    InstanceGroupManagersInsert'
    { _igmiProject = pIgmiProject_
    , _igmiZone = pIgmiZone_
    , _igmiPayload = pIgmiPayload_
    }

-- | The project ID for this request.
igmiProject :: Lens' InstanceGroupManagersInsert' Text
igmiProject
  = lens _igmiProject (\ s a -> s{_igmiProject = a})

-- | The name of the zone where you want to create the managed instance
-- group.
igmiZone :: Lens' InstanceGroupManagersInsert' Text
igmiZone = lens _igmiZone (\ s a -> s{_igmiZone = a})

-- | Multipart request metadata.
igmiPayload :: Lens' InstanceGroupManagersInsert' InstanceGroupManager
igmiPayload
  = lens _igmiPayload (\ s a -> s{_igmiPayload = a})

instance GoogleRequest InstanceGroupManagersInsert'
         where
        type Rs InstanceGroupManagersInsert' = Operation
        requestClient InstanceGroupManagersInsert'{..}
          = go _igmiProject _igmiZone (Just AltJSON)
              _igmiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersInsertResource)
                      mempty
