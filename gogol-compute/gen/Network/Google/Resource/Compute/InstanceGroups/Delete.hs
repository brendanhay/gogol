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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified instance group. The instances in the group are not
-- deleted.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsDelete@.
module Network.Google.Resource.Compute.InstanceGroups.Delete
    (
    -- * REST Resource
      InstanceGroupsDeleteResource

    -- * Creating a Request
    , instanceGroupsDelete'
    , InstanceGroupsDelete'

    -- * Request Lenses
    , igdProject
    , igdZone
    , igdInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsDelete@ method which the
-- 'InstanceGroupsDelete'' request conforms to.
type InstanceGroupsDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified instance group. The instances in the group are not
-- deleted.
--
-- /See:/ 'instanceGroupsDelete'' smart constructor.
data InstanceGroupsDelete' = InstanceGroupsDelete'
    { _igdProject       :: !Text
    , _igdZone          :: !Text
    , _igdInstanceGroup :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igdProject'
--
-- * 'igdZone'
--
-- * 'igdInstanceGroup'
instanceGroupsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsDelete'
instanceGroupsDelete' pIgdProject_ pIgdZone_ pIgdInstanceGroup_ =
    InstanceGroupsDelete'
    { _igdProject = pIgdProject_
    , _igdZone = pIgdZone_
    , _igdInstanceGroup = pIgdInstanceGroup_
    }

-- | The project ID for this request.
igdProject :: Lens' InstanceGroupsDelete' Text
igdProject
  = lens _igdProject (\ s a -> s{_igdProject = a})

-- | The name of the zone where the instance group is located.
igdZone :: Lens' InstanceGroupsDelete' Text
igdZone = lens _igdZone (\ s a -> s{_igdZone = a})

-- | The name of the instance group to delete.
igdInstanceGroup :: Lens' InstanceGroupsDelete' Text
igdInstanceGroup
  = lens _igdInstanceGroup
      (\ s a -> s{_igdInstanceGroup = a})

instance GoogleRequest InstanceGroupsDelete' where
        type Rs InstanceGroupsDelete' = Operation
        requestClient InstanceGroupsDelete'{..}
          = go _igdProject _igdZone _igdInstanceGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsDeleteResource)
                      mempty
