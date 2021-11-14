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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.AggregatedList
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all TargetHttpProxy resources, regional and
-- global, available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpProxies.aggregatedList@.
module Network.Google.Resource.Compute.TargetHTTPProxies.AggregatedList
    (
    -- * REST Resource
      TargetHTTPProxiesAggregatedListResource

    -- * Creating a Request
    , targetHTTPProxiesAggregatedList
    , TargetHTTPProxiesAggregatedList

    -- * Request Lenses
    , thttppalIncludeAllScopes
    , thttppalReturnPartialSuccess
    , thttppalOrderBy
    , thttppalProject
    , thttppalFilter
    , thttppalPageToken
    , thttppalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetHttpProxies.aggregatedList@ method which the
-- 'TargetHTTPProxiesAggregatedList' request conforms to.
type TargetHTTPProxiesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetHttpProxies" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetHTTPProxyAggregatedList

-- | Retrieves the list of all TargetHttpProxy resources, regional and
-- global, available to the specified project.
--
-- /See:/ 'targetHTTPProxiesAggregatedList' smart constructor.
data TargetHTTPProxiesAggregatedList =
  TargetHTTPProxiesAggregatedList'
    { _thttppalIncludeAllScopes :: !(Maybe Bool)
    , _thttppalReturnPartialSuccess :: !(Maybe Bool)
    , _thttppalOrderBy :: !(Maybe Text)
    , _thttppalProject :: !Text
    , _thttppalFilter :: !(Maybe Text)
    , _thttppalPageToken :: !(Maybe Text)
    , _thttppalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPProxiesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppalIncludeAllScopes'
--
-- * 'thttppalReturnPartialSuccess'
--
-- * 'thttppalOrderBy'
--
-- * 'thttppalProject'
--
-- * 'thttppalFilter'
--
-- * 'thttppalPageToken'
--
-- * 'thttppalMaxResults'
targetHTTPProxiesAggregatedList
    :: Text -- ^ 'thttppalProject'
    -> TargetHTTPProxiesAggregatedList
targetHTTPProxiesAggregatedList pThttppalProject_ =
  TargetHTTPProxiesAggregatedList'
    { _thttppalIncludeAllScopes = Nothing
    , _thttppalReturnPartialSuccess = Nothing
    , _thttppalOrderBy = Nothing
    , _thttppalProject = pThttppalProject_
    , _thttppalFilter = Nothing
    , _thttppalPageToken = Nothing
    , _thttppalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
thttppalIncludeAllScopes :: Lens' TargetHTTPProxiesAggregatedList (Maybe Bool)
thttppalIncludeAllScopes
  = lens _thttppalIncludeAllScopes
      (\ s a -> s{_thttppalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
thttppalReturnPartialSuccess :: Lens' TargetHTTPProxiesAggregatedList (Maybe Bool)
thttppalReturnPartialSuccess
  = lens _thttppalReturnPartialSuccess
      (\ s a -> s{_thttppalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
thttppalOrderBy :: Lens' TargetHTTPProxiesAggregatedList (Maybe Text)
thttppalOrderBy
  = lens _thttppalOrderBy
      (\ s a -> s{_thttppalOrderBy = a})

-- | Name of the project scoping this request.
thttppalProject :: Lens' TargetHTTPProxiesAggregatedList Text
thttppalProject
  = lens _thttppalProject
      (\ s a -> s{_thttppalProject = a})

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
thttppalFilter :: Lens' TargetHTTPProxiesAggregatedList (Maybe Text)
thttppalFilter
  = lens _thttppalFilter
      (\ s a -> s{_thttppalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
thttppalPageToken :: Lens' TargetHTTPProxiesAggregatedList (Maybe Text)
thttppalPageToken
  = lens _thttppalPageToken
      (\ s a -> s{_thttppalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
thttppalMaxResults :: Lens' TargetHTTPProxiesAggregatedList Word32
thttppalMaxResults
  = lens _thttppalMaxResults
      (\ s a -> s{_thttppalMaxResults = a})
      . _Coerce

instance GoogleRequest
           TargetHTTPProxiesAggregatedList
         where
        type Rs TargetHTTPProxiesAggregatedList =
             TargetHTTPProxyAggregatedList
        type Scopes TargetHTTPProxiesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetHTTPProxiesAggregatedList'{..}
          = go _thttppalProject _thttppalIncludeAllScopes
              _thttppalReturnPartialSuccess
              _thttppalOrderBy
              _thttppalFilter
              _thttppalPageToken
              (Just _thttppalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetHTTPProxiesAggregatedListResource)
                      mempty
