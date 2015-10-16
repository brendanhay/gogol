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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance group resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsGet@.
module Network.Google.Resource.Compute.InstanceGroups.Get
    (
    -- * REST Resource
      InstanceGroupsGetResource

    -- * Creating a Request
    , instanceGroupsGet'
    , InstanceGroupsGet'

    -- * Request Lenses
    , iggProject
    , iggZone
    , iggInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsGet@ method which the
-- 'InstanceGroupsGet'' request conforms to.
type InstanceGroupsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] InstanceGroup

-- | Returns the specified instance group resource.
--
-- /See:/ 'instanceGroupsGet'' smart constructor.
data InstanceGroupsGet' = InstanceGroupsGet'
    { _iggProject       :: !Text
    , _iggZone          :: !Text
    , _iggInstanceGroup :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iggProject'
--
-- * 'iggZone'
--
-- * 'iggInstanceGroup'
instanceGroupsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsGet'
instanceGroupsGet' pIggProject_ pIggZone_ pIggInstanceGroup_ =
    InstanceGroupsGet'
    { _iggProject = pIggProject_
    , _iggZone = pIggZone_
    , _iggInstanceGroup = pIggInstanceGroup_
    }

-- | The project ID for this request.
iggProject :: Lens' InstanceGroupsGet' Text
iggProject
  = lens _iggProject (\ s a -> s{_iggProject = a})

-- | The URL of the zone where the instance group is located.
iggZone :: Lens' InstanceGroupsGet' Text
iggZone = lens _iggZone (\ s a -> s{_iggZone = a})

-- | The name of the instance group.
iggInstanceGroup :: Lens' InstanceGroupsGet' Text
iggInstanceGroup
  = lens _iggInstanceGroup
      (\ s a -> s{_iggInstanceGroup = a})

instance GoogleRequest InstanceGroupsGet' where
        type Rs InstanceGroupsGet' = InstanceGroup
        requestClient InstanceGroupsGet'{..}
          = go _iggProject _iggZone _iggInstanceGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsGetResource)
                      mempty
