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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroups.ListInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances in the specified instance group and displays
-- information about the named ports. Depending on the specified options,
-- this method can list all instances or only the instances that are
-- running.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroups.listInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroups.ListInstances
    (
    -- * REST Resource
      RegionInstanceGroupsListInstancesResource

    -- * Creating a Request
    , regionInstanceGroupsListInstances'
    , RegionInstanceGroupsListInstances'

    -- * Request Lenses
    , rigliOrderBy
    , rigliProject
    , rigliPayload
    , rigliFilter
    , rigliRegion
    , rigliPageToken
    , rigliInstanceGroup
    , rigliMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroups.listInstances@ method which the
-- 'RegionInstanceGroupsListInstances'' request conforms to.
type RegionInstanceGroupsListInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "listInstances" :>
                       QueryParam "orderBy" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON]
                                   RegionInstanceGroupsListInstancesRequest
                                   :>
                                   Post '[JSON]
                                     RegionInstanceGroupsListInstances

-- | Lists the instances in the specified instance group and displays
-- information about the named ports. Depending on the specified options,
-- this method can list all instances or only the instances that are
-- running.
--
-- /See:/ 'regionInstanceGroupsListInstances'' smart constructor.
data RegionInstanceGroupsListInstances' =
  RegionInstanceGroupsListInstances''
    { _rigliOrderBy       :: !(Maybe Text)
    , _rigliProject       :: !Text
    , _rigliPayload       :: !RegionInstanceGroupsListInstancesRequest
    , _rigliFilter        :: !(Maybe Text)
    , _rigliRegion        :: !Text
    , _rigliPageToken     :: !(Maybe Text)
    , _rigliInstanceGroup :: !Text
    , _rigliMaxResults    :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupsListInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigliOrderBy'
--
-- * 'rigliProject'
--
-- * 'rigliPayload'
--
-- * 'rigliFilter'
--
-- * 'rigliRegion'
--
-- * 'rigliPageToken'
--
-- * 'rigliInstanceGroup'
--
-- * 'rigliMaxResults'
regionInstanceGroupsListInstances'
    :: Text -- ^ 'rigliProject'
    -> RegionInstanceGroupsListInstancesRequest -- ^ 'rigliPayload'
    -> Text -- ^ 'rigliRegion'
    -> Text -- ^ 'rigliInstanceGroup'
    -> RegionInstanceGroupsListInstances'
regionInstanceGroupsListInstances' pRigliProject_ pRigliPayload_ pRigliRegion_ pRigliInstanceGroup_ =
  RegionInstanceGroupsListInstances''
    { _rigliOrderBy = Nothing
    , _rigliProject = pRigliProject_
    , _rigliPayload = pRigliPayload_
    , _rigliFilter = Nothing
    , _rigliRegion = pRigliRegion_
    , _rigliPageToken = Nothing
    , _rigliInstanceGroup = pRigliInstanceGroup_
    , _rigliMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rigliOrderBy :: Lens' RegionInstanceGroupsListInstances' (Maybe Text)
rigliOrderBy
  = lens _rigliOrderBy (\ s a -> s{_rigliOrderBy = a})

-- | Project ID for this request.
rigliProject :: Lens' RegionInstanceGroupsListInstances' Text
rigliProject
  = lens _rigliProject (\ s a -> s{_rigliProject = a})

-- | Multipart request metadata.
rigliPayload :: Lens' RegionInstanceGroupsListInstances' RegionInstanceGroupsListInstancesRequest
rigliPayload
  = lens _rigliPayload (\ s a -> s{_rigliPayload = a})

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
rigliFilter :: Lens' RegionInstanceGroupsListInstances' (Maybe Text)
rigliFilter
  = lens _rigliFilter (\ s a -> s{_rigliFilter = a})

-- | Name of the region scoping this request.
rigliRegion :: Lens' RegionInstanceGroupsListInstances' Text
rigliRegion
  = lens _rigliRegion (\ s a -> s{_rigliRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rigliPageToken :: Lens' RegionInstanceGroupsListInstances' (Maybe Text)
rigliPageToken
  = lens _rigliPageToken
      (\ s a -> s{_rigliPageToken = a})

-- | Name of the regional instance group for which we want to list the
-- instances.
rigliInstanceGroup :: Lens' RegionInstanceGroupsListInstances' Text
rigliInstanceGroup
  = lens _rigliInstanceGroup
      (\ s a -> s{_rigliInstanceGroup = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rigliMaxResults :: Lens' RegionInstanceGroupsListInstances' Word32
rigliMaxResults
  = lens _rigliMaxResults
      (\ s a -> s{_rigliMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionInstanceGroupsListInstances'
         where
        type Rs RegionInstanceGroupsListInstances' =
             RegionInstanceGroupsListInstances
        type Scopes RegionInstanceGroupsListInstances' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupsListInstances''{..}
          = go _rigliProject _rigliRegion _rigliInstanceGroup
              _rigliOrderBy
              _rigliFilter
              _rigliPageToken
              (Just _rigliMaxResults)
              (Just AltJSON)
              _rigliPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupsListInstancesResource)
                      mempty
