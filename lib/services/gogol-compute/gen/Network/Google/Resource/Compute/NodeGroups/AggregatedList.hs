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
-- Module      : Network.Google.Resource.Compute.NodeGroups.AggregatedList
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of node groups. Note: use
-- nodeGroups.listNodes for more details about each group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.aggregatedList@.
module Network.Google.Resource.Compute.NodeGroups.AggregatedList
    (
    -- * REST Resource
      NodeGroupsAggregatedListResource

    -- * Creating a Request
    , nodeGroupsAggregatedList
    , NodeGroupsAggregatedList

    -- * Request Lenses
    , ngalIncludeAllScopes
    , ngalReturnPartialSuccess
    , ngalOrderBy
    , ngalProject
    , ngalFilter
    , ngalPageToken
    , ngalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.aggregatedList@ method which the
-- 'NodeGroupsAggregatedList' request conforms to.
type NodeGroupsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "nodeGroups" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] NodeGroupAggregatedList

-- | Retrieves an aggregated list of node groups. Note: use
-- nodeGroups.listNodes for more details about each group.
--
-- /See:/ 'nodeGroupsAggregatedList' smart constructor.
data NodeGroupsAggregatedList =
  NodeGroupsAggregatedList'
    { _ngalIncludeAllScopes :: !(Maybe Bool)
    , _ngalReturnPartialSuccess :: !(Maybe Bool)
    , _ngalOrderBy :: !(Maybe Text)
    , _ngalProject :: !Text
    , _ngalFilter :: !(Maybe Text)
    , _ngalPageToken :: !(Maybe Text)
    , _ngalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngalIncludeAllScopes'
--
-- * 'ngalReturnPartialSuccess'
--
-- * 'ngalOrderBy'
--
-- * 'ngalProject'
--
-- * 'ngalFilter'
--
-- * 'ngalPageToken'
--
-- * 'ngalMaxResults'
nodeGroupsAggregatedList
    :: Text -- ^ 'ngalProject'
    -> NodeGroupsAggregatedList
nodeGroupsAggregatedList pNgalProject_ =
  NodeGroupsAggregatedList'
    { _ngalIncludeAllScopes = Nothing
    , _ngalReturnPartialSuccess = Nothing
    , _ngalOrderBy = Nothing
    , _ngalProject = pNgalProject_
    , _ngalFilter = Nothing
    , _ngalPageToken = Nothing
    , _ngalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
ngalIncludeAllScopes :: Lens' NodeGroupsAggregatedList (Maybe Bool)
ngalIncludeAllScopes
  = lens _ngalIncludeAllScopes
      (\ s a -> s{_ngalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ngalReturnPartialSuccess :: Lens' NodeGroupsAggregatedList (Maybe Bool)
ngalReturnPartialSuccess
  = lens _ngalReturnPartialSuccess
      (\ s a -> s{_ngalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ngalOrderBy :: Lens' NodeGroupsAggregatedList (Maybe Text)
ngalOrderBy
  = lens _ngalOrderBy (\ s a -> s{_ngalOrderBy = a})

-- | Project ID for this request.
ngalProject :: Lens' NodeGroupsAggregatedList Text
ngalProject
  = lens _ngalProject (\ s a -> s{_ngalProject = a})

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
ngalFilter :: Lens' NodeGroupsAggregatedList (Maybe Text)
ngalFilter
  = lens _ngalFilter (\ s a -> s{_ngalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ngalPageToken :: Lens' NodeGroupsAggregatedList (Maybe Text)
ngalPageToken
  = lens _ngalPageToken
      (\ s a -> s{_ngalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ngalMaxResults :: Lens' NodeGroupsAggregatedList Word32
ngalMaxResults
  = lens _ngalMaxResults
      (\ s a -> s{_ngalMaxResults = a})
      . _Coerce

instance GoogleRequest NodeGroupsAggregatedList where
        type Rs NodeGroupsAggregatedList =
             NodeGroupAggregatedList
        type Scopes NodeGroupsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeGroupsAggregatedList'{..}
          = go _ngalProject _ngalIncludeAllScopes
              _ngalReturnPartialSuccess
              _ngalOrderBy
              _ngalFilter
              _ngalPageToken
              (Just _ngalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsAggregatedListResource)
                      mempty
