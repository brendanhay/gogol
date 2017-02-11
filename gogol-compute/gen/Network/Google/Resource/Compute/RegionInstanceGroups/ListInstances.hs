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
data RegionInstanceGroupsListInstances' = RegionInstanceGroupsListInstances''
    { _rigliOrderBy       :: !(Maybe Text)
    , _rigliProject       :: !Text
    , _rigliPayload       :: !RegionInstanceGroupsListInstancesRequest
    , _rigliFilter        :: !(Maybe Text)
    , _rigliRegion        :: !Text
    , _rigliPageToken     :: !(Maybe Text)
    , _rigliInstanceGroup :: !Text
    , _rigliMaxResults    :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
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
-- in subsequent list requests.
rigliMaxResults :: Lens' RegionInstanceGroupsListInstances' Word32
rigliMaxResults
  = lens _rigliMaxResults
      (\ s a -> s{_rigliMaxResults = a})
      . _Coerce

instance GoogleRequest
         RegionInstanceGroupsListInstances' where
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
