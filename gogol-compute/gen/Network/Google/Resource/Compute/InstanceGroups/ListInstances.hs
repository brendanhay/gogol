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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.ListInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances in the specified instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.listInstances@.
module Network.Google.Resource.Compute.InstanceGroups.ListInstances
    (
    -- * REST Resource
      InstanceGroupsListInstancesResource

    -- * Creating a Request
    , instanceGroupsListInstances'
    , InstanceGroupsListInstances'

    -- * Request Lenses
    , igliOrderBy
    , igliProject
    , igliZone
    , igliPayload
    , igliFilter
    , igliPageToken
    , igliInstanceGroup
    , igliMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.listInstances@ method which the
-- 'InstanceGroupsListInstances'' request conforms to.
type InstanceGroupsListInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "listInstances" :>
                       QueryParam "orderBy" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON]
                                   InstanceGroupsListInstancesRequest
                                   :> Post '[JSON] InstanceGroupsListInstances

-- | Lists the instances in the specified instance group.
--
-- /See:/ 'instanceGroupsListInstances'' smart constructor.
data InstanceGroupsListInstances' =
  InstanceGroupsListInstances''
    { _igliOrderBy       :: !(Maybe Text)
    , _igliProject       :: !Text
    , _igliZone          :: !Text
    , _igliPayload       :: !InstanceGroupsListInstancesRequest
    , _igliFilter        :: !(Maybe Text)
    , _igliPageToken     :: !(Maybe Text)
    , _igliInstanceGroup :: !Text
    , _igliMaxResults    :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupsListInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igliOrderBy'
--
-- * 'igliProject'
--
-- * 'igliZone'
--
-- * 'igliPayload'
--
-- * 'igliFilter'
--
-- * 'igliPageToken'
--
-- * 'igliInstanceGroup'
--
-- * 'igliMaxResults'
instanceGroupsListInstances'
    :: Text -- ^ 'igliProject'
    -> Text -- ^ 'igliZone'
    -> InstanceGroupsListInstancesRequest -- ^ 'igliPayload'
    -> Text -- ^ 'igliInstanceGroup'
    -> InstanceGroupsListInstances'
instanceGroupsListInstances' pIgliProject_ pIgliZone_ pIgliPayload_ pIgliInstanceGroup_ =
  InstanceGroupsListInstances''
    { _igliOrderBy = Nothing
    , _igliProject = pIgliProject_
    , _igliZone = pIgliZone_
    , _igliPayload = pIgliPayload_
    , _igliFilter = Nothing
    , _igliPageToken = Nothing
    , _igliInstanceGroup = pIgliInstanceGroup_
    , _igliMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
igliOrderBy :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliOrderBy
  = lens _igliOrderBy (\ s a -> s{_igliOrderBy = a})

-- | Project ID for this request.
igliProject :: Lens' InstanceGroupsListInstances' Text
igliProject
  = lens _igliProject (\ s a -> s{_igliProject = a})

-- | The name of the zone where the instance group is located.
igliZone :: Lens' InstanceGroupsListInstances' Text
igliZone = lens _igliZone (\ s a -> s{_igliZone = a})

-- | Multipart request metadata.
igliPayload :: Lens' InstanceGroupsListInstances' InstanceGroupsListInstancesRequest
igliPayload
  = lens _igliPayload (\ s a -> s{_igliPayload = a})

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
igliFilter :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliFilter
  = lens _igliFilter (\ s a -> s{_igliFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
igliPageToken :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliPageToken
  = lens _igliPageToken
      (\ s a -> s{_igliPageToken = a})

-- | The name of the instance group from which you want to generate a list of
-- included instances.
igliInstanceGroup :: Lens' InstanceGroupsListInstances' Text
igliInstanceGroup
  = lens _igliInstanceGroup
      (\ s a -> s{_igliInstanceGroup = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
igliMaxResults :: Lens' InstanceGroupsListInstances' Word32
igliMaxResults
  = lens _igliMaxResults
      (\ s a -> s{_igliMaxResults = a})
      . _Coerce

instance GoogleRequest InstanceGroupsListInstances'
         where
        type Rs InstanceGroupsListInstances' =
             InstanceGroupsListInstances
        type Scopes InstanceGroupsListInstances' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceGroupsListInstances''{..}
          = go _igliProject _igliZone _igliInstanceGroup
              _igliOrderBy
              _igliFilter
              _igliPageToken
              (Just _igliMaxResults)
              (Just AltJSON)
              _igliPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsListInstancesResource)
                      mempty
