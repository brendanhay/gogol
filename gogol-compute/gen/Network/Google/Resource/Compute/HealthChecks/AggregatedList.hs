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
-- Module      : Network.Google.Resource.Compute.HealthChecks.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all HealthCheck resources, regional and global,
-- available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.healthChecks.aggregatedList@.
module Network.Google.Resource.Compute.HealthChecks.AggregatedList
    (
    -- * REST Resource
      HealthChecksAggregatedListResource

    -- * Creating a Request
    , healthChecksAggregatedList'
    , HealthChecksAggregatedList'

    -- * Request Lenses
    , hcalIncludeAllScopes
    , hcalReturnPartialSuccess
    , hcalOrderBy
    , hcalProject
    , hcalFilter
    , hcalPageToken
    , hcalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.healthChecks.aggregatedList@ method which the
-- 'HealthChecksAggregatedList'' request conforms to.
type HealthChecksAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "healthChecks" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] HealthChecksAggregatedList

-- | Retrieves the list of all HealthCheck resources, regional and global,
-- available to the specified project.
--
-- /See:/ 'healthChecksAggregatedList'' smart constructor.
data HealthChecksAggregatedList' =
  HealthChecksAggregatedList''
    { _hcalIncludeAllScopes :: !(Maybe Bool)
    , _hcalReturnPartialSuccess :: !(Maybe Bool)
    , _hcalOrderBy :: !(Maybe Text)
    , _hcalProject :: !Text
    , _hcalFilter :: !(Maybe Text)
    , _hcalPageToken :: !(Maybe Text)
    , _hcalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HealthChecksAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcalIncludeAllScopes'
--
-- * 'hcalReturnPartialSuccess'
--
-- * 'hcalOrderBy'
--
-- * 'hcalProject'
--
-- * 'hcalFilter'
--
-- * 'hcalPageToken'
--
-- * 'hcalMaxResults'
healthChecksAggregatedList'
    :: Text -- ^ 'hcalProject'
    -> HealthChecksAggregatedList'
healthChecksAggregatedList' pHcalProject_ =
  HealthChecksAggregatedList''
    { _hcalIncludeAllScopes = Nothing
    , _hcalReturnPartialSuccess = Nothing
    , _hcalOrderBy = Nothing
    , _hcalProject = pHcalProject_
    , _hcalFilter = Nothing
    , _hcalPageToken = Nothing
    , _hcalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
hcalIncludeAllScopes :: Lens' HealthChecksAggregatedList' (Maybe Bool)
hcalIncludeAllScopes
  = lens _hcalIncludeAllScopes
      (\ s a -> s{_hcalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
hcalReturnPartialSuccess :: Lens' HealthChecksAggregatedList' (Maybe Bool)
hcalReturnPartialSuccess
  = lens _hcalReturnPartialSuccess
      (\ s a -> s{_hcalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
hcalOrderBy :: Lens' HealthChecksAggregatedList' (Maybe Text)
hcalOrderBy
  = lens _hcalOrderBy (\ s a -> s{_hcalOrderBy = a})

-- | Name of the project scoping this request.
hcalProject :: Lens' HealthChecksAggregatedList' Text
hcalProject
  = lens _hcalProject (\ s a -> s{_hcalProject = a})

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
hcalFilter :: Lens' HealthChecksAggregatedList' (Maybe Text)
hcalFilter
  = lens _hcalFilter (\ s a -> s{_hcalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
hcalPageToken :: Lens' HealthChecksAggregatedList' (Maybe Text)
hcalPageToken
  = lens _hcalPageToken
      (\ s a -> s{_hcalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
hcalMaxResults :: Lens' HealthChecksAggregatedList' Word32
hcalMaxResults
  = lens _hcalMaxResults
      (\ s a -> s{_hcalMaxResults = a})
      . _Coerce

instance GoogleRequest HealthChecksAggregatedList'
         where
        type Rs HealthChecksAggregatedList' =
             HealthChecksAggregatedList
        type Scopes HealthChecksAggregatedList' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HealthChecksAggregatedList''{..}
          = go _hcalProject _hcalIncludeAllScopes
              _hcalReturnPartialSuccess
              _hcalOrderBy
              _hcalFilter
              _hcalPageToken
              (Just _hcalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HealthChecksAggregatedListResource)
                      mempty
