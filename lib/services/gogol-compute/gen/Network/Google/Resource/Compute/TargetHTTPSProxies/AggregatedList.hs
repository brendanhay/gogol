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
-- Module      : Network.Google.Resource.Compute.TargetHTTPSProxies.AggregatedList
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all TargetHttpsProxy resources, regional and
-- global, available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetHttpsProxies.aggregatedList@.
module Network.Google.Resource.Compute.TargetHTTPSProxies.AggregatedList
    (
    -- * REST Resource
      TargetHTTPSProxiesAggregatedListResource

    -- * Creating a Request
    , targetHTTPSProxiesAggregatedList
    , TargetHTTPSProxiesAggregatedList

    -- * Request Lenses
    , thpalIncludeAllScopes
    , thpalReturnPartialSuccess
    , thpalOrderBy
    , thpalProject
    , thpalFilter
    , thpalPageToken
    , thpalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetHttpsProxies.aggregatedList@ method which the
-- 'TargetHTTPSProxiesAggregatedList' request conforms to.
type TargetHTTPSProxiesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetHttpsProxies" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetHTTPSProxyAggregatedList

-- | Retrieves the list of all TargetHttpsProxy resources, regional and
-- global, available to the specified project.
--
-- /See:/ 'targetHTTPSProxiesAggregatedList' smart constructor.
data TargetHTTPSProxiesAggregatedList =
  TargetHTTPSProxiesAggregatedList'
    { _thpalIncludeAllScopes :: !(Maybe Bool)
    , _thpalReturnPartialSuccess :: !(Maybe Bool)
    , _thpalOrderBy :: !(Maybe Text)
    , _thpalProject :: !Text
    , _thpalFilter :: !(Maybe Text)
    , _thpalPageToken :: !(Maybe Text)
    , _thpalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetHTTPSProxiesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpalIncludeAllScopes'
--
-- * 'thpalReturnPartialSuccess'
--
-- * 'thpalOrderBy'
--
-- * 'thpalProject'
--
-- * 'thpalFilter'
--
-- * 'thpalPageToken'
--
-- * 'thpalMaxResults'
targetHTTPSProxiesAggregatedList
    :: Text -- ^ 'thpalProject'
    -> TargetHTTPSProxiesAggregatedList
targetHTTPSProxiesAggregatedList pThpalProject_ =
  TargetHTTPSProxiesAggregatedList'
    { _thpalIncludeAllScopes = Nothing
    , _thpalReturnPartialSuccess = Nothing
    , _thpalOrderBy = Nothing
    , _thpalProject = pThpalProject_
    , _thpalFilter = Nothing
    , _thpalPageToken = Nothing
    , _thpalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
thpalIncludeAllScopes :: Lens' TargetHTTPSProxiesAggregatedList (Maybe Bool)
thpalIncludeAllScopes
  = lens _thpalIncludeAllScopes
      (\ s a -> s{_thpalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
thpalReturnPartialSuccess :: Lens' TargetHTTPSProxiesAggregatedList (Maybe Bool)
thpalReturnPartialSuccess
  = lens _thpalReturnPartialSuccess
      (\ s a -> s{_thpalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
thpalOrderBy :: Lens' TargetHTTPSProxiesAggregatedList (Maybe Text)
thpalOrderBy
  = lens _thpalOrderBy (\ s a -> s{_thpalOrderBy = a})

-- | Name of the project scoping this request.
thpalProject :: Lens' TargetHTTPSProxiesAggregatedList Text
thpalProject
  = lens _thpalProject (\ s a -> s{_thpalProject = a})

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
thpalFilter :: Lens' TargetHTTPSProxiesAggregatedList (Maybe Text)
thpalFilter
  = lens _thpalFilter (\ s a -> s{_thpalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
thpalPageToken :: Lens' TargetHTTPSProxiesAggregatedList (Maybe Text)
thpalPageToken
  = lens _thpalPageToken
      (\ s a -> s{_thpalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
thpalMaxResults :: Lens' TargetHTTPSProxiesAggregatedList Word32
thpalMaxResults
  = lens _thpalMaxResults
      (\ s a -> s{_thpalMaxResults = a})
      . _Coerce

instance GoogleRequest
           TargetHTTPSProxiesAggregatedList
         where
        type Rs TargetHTTPSProxiesAggregatedList =
             TargetHTTPSProxyAggregatedList
        type Scopes TargetHTTPSProxiesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetHTTPSProxiesAggregatedList'{..}
          = go _thpalProject _thpalIncludeAllScopes
              _thpalReturnPartialSuccess
              _thpalOrderBy
              _thpalFilter
              _thpalPageToken
              (Just _thpalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetHTTPSProxiesAggregatedListResource)
                      mempty
