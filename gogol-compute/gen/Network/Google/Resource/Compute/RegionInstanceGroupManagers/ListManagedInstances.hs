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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances in the managed instance group and instances that are
-- scheduled to be created. The list includes any current actions that the
-- group has scheduled for its instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.listManagedInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ListManagedInstances
    (
    -- * REST Resource
      RegionInstanceGroupManagersListManagedInstancesResource

    -- * Creating a Request
    , regionInstanceGroupManagersListManagedInstances
    , RegionInstanceGroupManagersListManagedInstances

    -- * Request Lenses
    , rigmlmiProject
    , rigmlmiInstanceGroupManager
    , rigmlmiOrderBy
    , rigmlmiFilter
    , rigmlmiRegion
    , rigmlmiPageToken
    , rigmlmiMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.listManagedInstances@ method which the
-- 'RegionInstanceGroupManagersListManagedInstances' request conforms to.
type RegionInstanceGroupManagersListManagedInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "listManagedInstances" :>
                       QueryParam "order_by" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON]
                                   RegionInstanceGroupManagersListInstancesResponse

-- | Lists the instances in the managed instance group and instances that are
-- scheduled to be created. The list includes any current actions that the
-- group has scheduled for its instances.
--
-- /See:/ 'regionInstanceGroupManagersListManagedInstances' smart constructor.
data RegionInstanceGroupManagersListManagedInstances = RegionInstanceGroupManagersListManagedInstances'
    { _rigmlmiProject              :: !Text
    , _rigmlmiInstanceGroupManager :: !Text
    , _rigmlmiOrderBy              :: !(Maybe Text)
    , _rigmlmiFilter               :: !(Maybe Text)
    , _rigmlmiRegion               :: !Text
    , _rigmlmiPageToken            :: !(Maybe Text)
    , _rigmlmiMaxResults           :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersListManagedInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmlmiProject'
--
-- * 'rigmlmiInstanceGroupManager'
--
-- * 'rigmlmiOrderBy'
--
-- * 'rigmlmiFilter'
--
-- * 'rigmlmiRegion'
--
-- * 'rigmlmiPageToken'
--
-- * 'rigmlmiMaxResults'
regionInstanceGroupManagersListManagedInstances
    :: Text -- ^ 'rigmlmiProject'
    -> Text -- ^ 'rigmlmiInstanceGroupManager'
    -> Text -- ^ 'rigmlmiRegion'
    -> RegionInstanceGroupManagersListManagedInstances
regionInstanceGroupManagersListManagedInstances pRigmlmiProject_ pRigmlmiInstanceGroupManager_ pRigmlmiRegion_ =
    RegionInstanceGroupManagersListManagedInstances'
    { _rigmlmiProject = pRigmlmiProject_
    , _rigmlmiInstanceGroupManager = pRigmlmiInstanceGroupManager_
    , _rigmlmiOrderBy = Nothing
    , _rigmlmiFilter = Nothing
    , _rigmlmiRegion = pRigmlmiRegion_
    , _rigmlmiPageToken = Nothing
    , _rigmlmiMaxResults = 500
    }

-- | Project ID for this request.
rigmlmiProject :: Lens' RegionInstanceGroupManagersListManagedInstances Text
rigmlmiProject
  = lens _rigmlmiProject
      (\ s a -> s{_rigmlmiProject = a})

-- | The name of the managed instance group.
rigmlmiInstanceGroupManager :: Lens' RegionInstanceGroupManagersListManagedInstances Text
rigmlmiInstanceGroupManager
  = lens _rigmlmiInstanceGroupManager
      (\ s a -> s{_rigmlmiInstanceGroupManager = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rigmlmiOrderBy :: Lens' RegionInstanceGroupManagersListManagedInstances (Maybe Text)
rigmlmiOrderBy
  = lens _rigmlmiOrderBy
      (\ s a -> s{_rigmlmiOrderBy = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
rigmlmiFilter :: Lens' RegionInstanceGroupManagersListManagedInstances (Maybe Text)
rigmlmiFilter
  = lens _rigmlmiFilter
      (\ s a -> s{_rigmlmiFilter = a})

-- | Name of the region scoping this request.
rigmlmiRegion :: Lens' RegionInstanceGroupManagersListManagedInstances Text
rigmlmiRegion
  = lens _rigmlmiRegion
      (\ s a -> s{_rigmlmiRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rigmlmiPageToken :: Lens' RegionInstanceGroupManagersListManagedInstances (Maybe Text)
rigmlmiPageToken
  = lens _rigmlmiPageToken
      (\ s a -> s{_rigmlmiPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rigmlmiMaxResults :: Lens' RegionInstanceGroupManagersListManagedInstances Word32
rigmlmiMaxResults
  = lens _rigmlmiMaxResults
      (\ s a -> s{_rigmlmiMaxResults = a})
      . _Coerce

instance GoogleRequest
         RegionInstanceGroupManagersListManagedInstances where
        type Rs
               RegionInstanceGroupManagersListManagedInstances
             = RegionInstanceGroupManagersListInstancesResponse
        type Scopes
               RegionInstanceGroupManagersListManagedInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          RegionInstanceGroupManagersListManagedInstances'{..}
          = go _rigmlmiProject _rigmlmiRegion
              _rigmlmiInstanceGroupManager
              _rigmlmiOrderBy
              _rigmlmiFilter
              _rigmlmiPageToken
              (Just _rigmlmiMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersListManagedInstancesResource)
                      mempty
