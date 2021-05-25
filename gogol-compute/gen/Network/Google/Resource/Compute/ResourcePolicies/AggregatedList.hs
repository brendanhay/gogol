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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of resource policies.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.aggregatedList@.
module Network.Google.Resource.Compute.ResourcePolicies.AggregatedList
    (
    -- * REST Resource
      ResourcePoliciesAggregatedListResource

    -- * Creating a Request
    , resourcePoliciesAggregatedList
    , ResourcePoliciesAggregatedList

    -- * Request Lenses
    , rpalIncludeAllScopes
    , rpalReturnPartialSuccess
    , rpalOrderBy
    , rpalProject
    , rpalFilter
    , rpalPageToken
    , rpalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.aggregatedList@ method which the
-- 'ResourcePoliciesAggregatedList' request conforms to.
type ResourcePoliciesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "resourcePolicies" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ResourcePolicyAggregatedList

-- | Retrieves an aggregated list of resource policies.
--
-- /See:/ 'resourcePoliciesAggregatedList' smart constructor.
data ResourcePoliciesAggregatedList =
  ResourcePoliciesAggregatedList'
    { _rpalIncludeAllScopes :: !(Maybe Bool)
    , _rpalReturnPartialSuccess :: !(Maybe Bool)
    , _rpalOrderBy :: !(Maybe Text)
    , _rpalProject :: !Text
    , _rpalFilter :: !(Maybe Text)
    , _rpalPageToken :: !(Maybe Text)
    , _rpalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpalIncludeAllScopes'
--
-- * 'rpalReturnPartialSuccess'
--
-- * 'rpalOrderBy'
--
-- * 'rpalProject'
--
-- * 'rpalFilter'
--
-- * 'rpalPageToken'
--
-- * 'rpalMaxResults'
resourcePoliciesAggregatedList
    :: Text -- ^ 'rpalProject'
    -> ResourcePoliciesAggregatedList
resourcePoliciesAggregatedList pRpalProject_ =
  ResourcePoliciesAggregatedList'
    { _rpalIncludeAllScopes = Nothing
    , _rpalReturnPartialSuccess = Nothing
    , _rpalOrderBy = Nothing
    , _rpalProject = pRpalProject_
    , _rpalFilter = Nothing
    , _rpalPageToken = Nothing
    , _rpalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
rpalIncludeAllScopes :: Lens' ResourcePoliciesAggregatedList (Maybe Bool)
rpalIncludeAllScopes
  = lens _rpalIncludeAllScopes
      (\ s a -> s{_rpalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rpalReturnPartialSuccess :: Lens' ResourcePoliciesAggregatedList (Maybe Bool)
rpalReturnPartialSuccess
  = lens _rpalReturnPartialSuccess
      (\ s a -> s{_rpalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rpalOrderBy :: Lens' ResourcePoliciesAggregatedList (Maybe Text)
rpalOrderBy
  = lens _rpalOrderBy (\ s a -> s{_rpalOrderBy = a})

-- | Project ID for this request.
rpalProject :: Lens' ResourcePoliciesAggregatedList Text
rpalProject
  = lens _rpalProject (\ s a -> s{_rpalProject = a})

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
rpalFilter :: Lens' ResourcePoliciesAggregatedList (Maybe Text)
rpalFilter
  = lens _rpalFilter (\ s a -> s{_rpalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rpalPageToken :: Lens' ResourcePoliciesAggregatedList (Maybe Text)
rpalPageToken
  = lens _rpalPageToken
      (\ s a -> s{_rpalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rpalMaxResults :: Lens' ResourcePoliciesAggregatedList Word32
rpalMaxResults
  = lens _rpalMaxResults
      (\ s a -> s{_rpalMaxResults = a})
      . _Coerce

instance GoogleRequest ResourcePoliciesAggregatedList
         where
        type Rs ResourcePoliciesAggregatedList =
             ResourcePolicyAggregatedList
        type Scopes ResourcePoliciesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ResourcePoliciesAggregatedList'{..}
          = go _rpalProject _rpalIncludeAllScopes
              _rpalReturnPartialSuccess
              _rpalOrderBy
              _rpalFilter
              _rpalPageToken
              (Just _rpalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ResourcePoliciesAggregatedListResource)
                      mempty
