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
-- Module      : Network.Google.Resource.Compute.RegionNetworkEndpointGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of regional network endpoint groups available to the
-- specified project in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.list@.
module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.List
    (
    -- * REST Resource
      RegionNetworkEndpointGroupsListResource

    -- * Creating a Request
    , regionNetworkEndpointGroupsList
    , RegionNetworkEndpointGroupsList

    -- * Request Lenses
    , rneglReturnPartialSuccess
    , rneglOrderBy
    , rneglProject
    , rneglFilter
    , rneglRegion
    , rneglPageToken
    , rneglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNetworkEndpointGroups.list@ method which the
-- 'RegionNetworkEndpointGroupsList' request conforms to.
type RegionNetworkEndpointGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "networkEndpointGroups" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] NetworkEndpointGroupList

-- | Retrieves the list of regional network endpoint groups available to the
-- specified project in the given region.
--
-- /See:/ 'regionNetworkEndpointGroupsList' smart constructor.
data RegionNetworkEndpointGroupsList =
  RegionNetworkEndpointGroupsList'
    { _rneglReturnPartialSuccess :: !(Maybe Bool)
    , _rneglOrderBy :: !(Maybe Text)
    , _rneglProject :: !Text
    , _rneglFilter :: !(Maybe Text)
    , _rneglRegion :: !Text
    , _rneglPageToken :: !(Maybe Text)
    , _rneglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNetworkEndpointGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rneglReturnPartialSuccess'
--
-- * 'rneglOrderBy'
--
-- * 'rneglProject'
--
-- * 'rneglFilter'
--
-- * 'rneglRegion'
--
-- * 'rneglPageToken'
--
-- * 'rneglMaxResults'
regionNetworkEndpointGroupsList
    :: Text -- ^ 'rneglProject'
    -> Text -- ^ 'rneglRegion'
    -> RegionNetworkEndpointGroupsList
regionNetworkEndpointGroupsList pRneglProject_ pRneglRegion_ =
  RegionNetworkEndpointGroupsList'
    { _rneglReturnPartialSuccess = Nothing
    , _rneglOrderBy = Nothing
    , _rneglProject = pRneglProject_
    , _rneglFilter = Nothing
    , _rneglRegion = pRneglRegion_
    , _rneglPageToken = Nothing
    , _rneglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rneglReturnPartialSuccess :: Lens' RegionNetworkEndpointGroupsList (Maybe Bool)
rneglReturnPartialSuccess
  = lens _rneglReturnPartialSuccess
      (\ s a -> s{_rneglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rneglOrderBy :: Lens' RegionNetworkEndpointGroupsList (Maybe Text)
rneglOrderBy
  = lens _rneglOrderBy (\ s a -> s{_rneglOrderBy = a})

-- | Project ID for this request.
rneglProject :: Lens' RegionNetworkEndpointGroupsList Text
rneglProject
  = lens _rneglProject (\ s a -> s{_rneglProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
rneglFilter :: Lens' RegionNetworkEndpointGroupsList (Maybe Text)
rneglFilter
  = lens _rneglFilter (\ s a -> s{_rneglFilter = a})

-- | The name of the region where the network endpoint group is located. It
-- should comply with RFC1035.
rneglRegion :: Lens' RegionNetworkEndpointGroupsList Text
rneglRegion
  = lens _rneglRegion (\ s a -> s{_rneglRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rneglPageToken :: Lens' RegionNetworkEndpointGroupsList (Maybe Text)
rneglPageToken
  = lens _rneglPageToken
      (\ s a -> s{_rneglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rneglMaxResults :: Lens' RegionNetworkEndpointGroupsList Word32
rneglMaxResults
  = lens _rneglMaxResults
      (\ s a -> s{_rneglMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionNetworkEndpointGroupsList
         where
        type Rs RegionNetworkEndpointGroupsList =
             NetworkEndpointGroupList
        type Scopes RegionNetworkEndpointGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionNetworkEndpointGroupsList'{..}
          = go _rneglProject _rneglRegion
              _rneglReturnPartialSuccess
              _rneglOrderBy
              _rneglFilter
              _rneglPageToken
              (Just _rneglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNetworkEndpointGroupsListResource)
                      mempty
