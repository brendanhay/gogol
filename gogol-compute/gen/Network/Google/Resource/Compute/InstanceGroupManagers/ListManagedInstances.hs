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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the instances in the managed instance group. Each instance
-- in the list has a currentAction, which indicates the action that the
-- managed instance group is performing on the instance. For example, if
-- the group is still creating an instance, the currentAction is CREATING.
-- If a previous action failed, the list displays the errors for that
-- failed action.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.listManagedInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
    (
    -- * REST Resource
      InstanceGroupManagersListManagedInstancesResource

    -- * Creating a Request
    , instanceGroupManagersListManagedInstances
    , InstanceGroupManagersListManagedInstances

    -- * Request Lenses
    , igmlmiProject
    , igmlmiInstanceGroupManager
    , igmlmiZone
    , igmlmiOrderBy
    , igmlmiFilter
    , igmlmiPageToken
    , igmlmiMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.listManagedInstances@ method which the
-- 'InstanceGroupManagersListManagedInstances' request conforms to.
type InstanceGroupManagersListManagedInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listManagedInstances" :>
                       QueryParam "order_by" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON]
                                   InstanceGroupManagersListManagedInstancesResponse

-- | Lists all of the instances in the managed instance group. Each instance
-- in the list has a currentAction, which indicates the action that the
-- managed instance group is performing on the instance. For example, if
-- the group is still creating an instance, the currentAction is CREATING.
-- If a previous action failed, the list displays the errors for that
-- failed action.
--
-- /See:/ 'instanceGroupManagersListManagedInstances' smart constructor.
data InstanceGroupManagersListManagedInstances = InstanceGroupManagersListManagedInstances'
    { _igmlmiProject              :: !Text
    , _igmlmiInstanceGroupManager :: !Text
    , _igmlmiZone                 :: !Text
    , _igmlmiOrderBy              :: !(Maybe Text)
    , _igmlmiFilter               :: !(Maybe Text)
    , _igmlmiPageToken            :: !(Maybe Text)
    , _igmlmiMaxResults           :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersListManagedInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlmiProject'
--
-- * 'igmlmiInstanceGroupManager'
--
-- * 'igmlmiZone'
--
-- * 'igmlmiOrderBy'
--
-- * 'igmlmiFilter'
--
-- * 'igmlmiPageToken'
--
-- * 'igmlmiMaxResults'
instanceGroupManagersListManagedInstances
    :: Text -- ^ 'igmlmiProject'
    -> Text -- ^ 'igmlmiInstanceGroupManager'
    -> Text -- ^ 'igmlmiZone'
    -> InstanceGroupManagersListManagedInstances
instanceGroupManagersListManagedInstances pIgmlmiProject_ pIgmlmiInstanceGroupManager_ pIgmlmiZone_ =
    InstanceGroupManagersListManagedInstances'
    { _igmlmiProject = pIgmlmiProject_
    , _igmlmiInstanceGroupManager = pIgmlmiInstanceGroupManager_
    , _igmlmiZone = pIgmlmiZone_
    , _igmlmiOrderBy = Nothing
    , _igmlmiFilter = Nothing
    , _igmlmiPageToken = Nothing
    , _igmlmiMaxResults = 500
    }

-- | Project ID for this request.
igmlmiProject :: Lens' InstanceGroupManagersListManagedInstances Text
igmlmiProject
  = lens _igmlmiProject
      (\ s a -> s{_igmlmiProject = a})

-- | The name of the managed instance group.
igmlmiInstanceGroupManager :: Lens' InstanceGroupManagersListManagedInstances Text
igmlmiInstanceGroupManager
  = lens _igmlmiInstanceGroupManager
      (\ s a -> s{_igmlmiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmlmiZone :: Lens' InstanceGroupManagersListManagedInstances Text
igmlmiZone
  = lens _igmlmiZone (\ s a -> s{_igmlmiZone = a})

igmlmiOrderBy :: Lens' InstanceGroupManagersListManagedInstances (Maybe Text)
igmlmiOrderBy
  = lens _igmlmiOrderBy
      (\ s a -> s{_igmlmiOrderBy = a})

igmlmiFilter :: Lens' InstanceGroupManagersListManagedInstances (Maybe Text)
igmlmiFilter
  = lens _igmlmiFilter (\ s a -> s{_igmlmiFilter = a})

igmlmiPageToken :: Lens' InstanceGroupManagersListManagedInstances (Maybe Text)
igmlmiPageToken
  = lens _igmlmiPageToken
      (\ s a -> s{_igmlmiPageToken = a})

igmlmiMaxResults :: Lens' InstanceGroupManagersListManagedInstances Word32
igmlmiMaxResults
  = lens _igmlmiMaxResults
      (\ s a -> s{_igmlmiMaxResults = a})
      . _Coerce

instance GoogleRequest
         InstanceGroupManagersListManagedInstances where
        type Rs InstanceGroupManagersListManagedInstances =
             InstanceGroupManagersListManagedInstancesResponse
        type Scopes InstanceGroupManagersListManagedInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InstanceGroupManagersListManagedInstances'{..}
          = go _igmlmiProject _igmlmiZone
              _igmlmiInstanceGroupManager
              _igmlmiOrderBy
              _igmlmiFilter
              _igmlmiPageToken
              (Just _igmlmiMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersListManagedInstancesResource)
                      mempty
