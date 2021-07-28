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
-- Module      : Network.Google.Resource.Compute.NodeTypes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of node types.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTypes.aggregatedList@.
module Network.Google.Resource.Compute.NodeTypes.AggregatedList
    (
    -- * REST Resource
      NodeTypesAggregatedListResource

    -- * Creating a Request
    , nodeTypesAggregatedList
    , NodeTypesAggregatedList

    -- * Request Lenses
    , ntalIncludeAllScopes
    , ntalReturnPartialSuccess
    , ntalOrderBy
    , ntalProject
    , ntalFilter
    , ntalPageToken
    , ntalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTypes.aggregatedList@ method which the
-- 'NodeTypesAggregatedList' request conforms to.
type NodeTypesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "nodeTypes" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] NodeTypeAggregatedList

-- | Retrieves an aggregated list of node types.
--
-- /See:/ 'nodeTypesAggregatedList' smart constructor.
data NodeTypesAggregatedList =
  NodeTypesAggregatedList'
    { _ntalIncludeAllScopes :: !(Maybe Bool)
    , _ntalReturnPartialSuccess :: !(Maybe Bool)
    , _ntalOrderBy :: !(Maybe Text)
    , _ntalProject :: !Text
    , _ntalFilter :: !(Maybe Text)
    , _ntalPageToken :: !(Maybe Text)
    , _ntalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTypesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntalIncludeAllScopes'
--
-- * 'ntalReturnPartialSuccess'
--
-- * 'ntalOrderBy'
--
-- * 'ntalProject'
--
-- * 'ntalFilter'
--
-- * 'ntalPageToken'
--
-- * 'ntalMaxResults'
nodeTypesAggregatedList
    :: Text -- ^ 'ntalProject'
    -> NodeTypesAggregatedList
nodeTypesAggregatedList pNtalProject_ =
  NodeTypesAggregatedList'
    { _ntalIncludeAllScopes = Nothing
    , _ntalReturnPartialSuccess = Nothing
    , _ntalOrderBy = Nothing
    , _ntalProject = pNtalProject_
    , _ntalFilter = Nothing
    , _ntalPageToken = Nothing
    , _ntalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
ntalIncludeAllScopes :: Lens' NodeTypesAggregatedList (Maybe Bool)
ntalIncludeAllScopes
  = lens _ntalIncludeAllScopes
      (\ s a -> s{_ntalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ntalReturnPartialSuccess :: Lens' NodeTypesAggregatedList (Maybe Bool)
ntalReturnPartialSuccess
  = lens _ntalReturnPartialSuccess
      (\ s a -> s{_ntalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ntalOrderBy :: Lens' NodeTypesAggregatedList (Maybe Text)
ntalOrderBy
  = lens _ntalOrderBy (\ s a -> s{_ntalOrderBy = a})

-- | Project ID for this request.
ntalProject :: Lens' NodeTypesAggregatedList Text
ntalProject
  = lens _ntalProject (\ s a -> s{_ntalProject = a})

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
ntalFilter :: Lens' NodeTypesAggregatedList (Maybe Text)
ntalFilter
  = lens _ntalFilter (\ s a -> s{_ntalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ntalPageToken :: Lens' NodeTypesAggregatedList (Maybe Text)
ntalPageToken
  = lens _ntalPageToken
      (\ s a -> s{_ntalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ntalMaxResults :: Lens' NodeTypesAggregatedList Word32
ntalMaxResults
  = lens _ntalMaxResults
      (\ s a -> s{_ntalMaxResults = a})
      . _Coerce

instance GoogleRequest NodeTypesAggregatedList where
        type Rs NodeTypesAggregatedList =
             NodeTypeAggregatedList
        type Scopes NodeTypesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTypesAggregatedList'{..}
          = go _ntalProject _ntalIncludeAllScopes
              _ntalReturnPartialSuccess
              _ntalOrderBy
              _ntalFilter
              _ntalPageToken
              (Just _ntalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeTypesAggregatedListResource)
                      mempty
