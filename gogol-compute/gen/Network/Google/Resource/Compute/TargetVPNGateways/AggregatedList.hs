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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of target VPN gateways.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.aggregatedList@.
module Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
    (
    -- * REST Resource
      TargetVPNGatewaysAggregatedListResource

    -- * Creating a Request
    , targetVPNGatewaysAggregatedList
    , TargetVPNGatewaysAggregatedList

    -- * Request Lenses
    , tvgalIncludeAllScopes
    , tvgalReturnPartialSuccess
    , tvgalOrderBy
    , tvgalProject
    , tvgalFilter
    , tvgalPageToken
    , tvgalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetVpnGateways.aggregatedList@ method which the
-- 'TargetVPNGatewaysAggregatedList' request conforms to.
type TargetVPNGatewaysAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetVpnGateways" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetVPNGatewayAggregatedList

-- | Retrieves an aggregated list of target VPN gateways.
--
-- /See:/ 'targetVPNGatewaysAggregatedList' smart constructor.
data TargetVPNGatewaysAggregatedList =
  TargetVPNGatewaysAggregatedList'
    { _tvgalIncludeAllScopes :: !(Maybe Bool)
    , _tvgalReturnPartialSuccess :: !(Maybe Bool)
    , _tvgalOrderBy :: !(Maybe Text)
    , _tvgalProject :: !Text
    , _tvgalFilter :: !(Maybe Text)
    , _tvgalPageToken :: !(Maybe Text)
    , _tvgalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetVPNGatewaysAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgalIncludeAllScopes'
--
-- * 'tvgalReturnPartialSuccess'
--
-- * 'tvgalOrderBy'
--
-- * 'tvgalProject'
--
-- * 'tvgalFilter'
--
-- * 'tvgalPageToken'
--
-- * 'tvgalMaxResults'
targetVPNGatewaysAggregatedList
    :: Text -- ^ 'tvgalProject'
    -> TargetVPNGatewaysAggregatedList
targetVPNGatewaysAggregatedList pTvgalProject_ =
  TargetVPNGatewaysAggregatedList'
    { _tvgalIncludeAllScopes = Nothing
    , _tvgalReturnPartialSuccess = Nothing
    , _tvgalOrderBy = Nothing
    , _tvgalProject = pTvgalProject_
    , _tvgalFilter = Nothing
    , _tvgalPageToken = Nothing
    , _tvgalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
tvgalIncludeAllScopes :: Lens' TargetVPNGatewaysAggregatedList (Maybe Bool)
tvgalIncludeAllScopes
  = lens _tvgalIncludeAllScopes
      (\ s a -> s{_tvgalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
tvgalReturnPartialSuccess :: Lens' TargetVPNGatewaysAggregatedList (Maybe Bool)
tvgalReturnPartialSuccess
  = lens _tvgalReturnPartialSuccess
      (\ s a -> s{_tvgalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
tvgalOrderBy :: Lens' TargetVPNGatewaysAggregatedList (Maybe Text)
tvgalOrderBy
  = lens _tvgalOrderBy (\ s a -> s{_tvgalOrderBy = a})

-- | Project ID for this request.
tvgalProject :: Lens' TargetVPNGatewaysAggregatedList Text
tvgalProject
  = lens _tvgalProject (\ s a -> s{_tvgalProject = a})

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
tvgalFilter :: Lens' TargetVPNGatewaysAggregatedList (Maybe Text)
tvgalFilter
  = lens _tvgalFilter (\ s a -> s{_tvgalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
tvgalPageToken :: Lens' TargetVPNGatewaysAggregatedList (Maybe Text)
tvgalPageToken
  = lens _tvgalPageToken
      (\ s a -> s{_tvgalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
tvgalMaxResults :: Lens' TargetVPNGatewaysAggregatedList Word32
tvgalMaxResults
  = lens _tvgalMaxResults
      (\ s a -> s{_tvgalMaxResults = a})
      . _Coerce

instance GoogleRequest
           TargetVPNGatewaysAggregatedList
         where
        type Rs TargetVPNGatewaysAggregatedList =
             TargetVPNGatewayAggregatedList
        type Scopes TargetVPNGatewaysAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetVPNGatewaysAggregatedList'{..}
          = go _tvgalProject _tvgalIncludeAllScopes
              _tvgalReturnPartialSuccess
              _tvgalOrderBy
              _tvgalFilter
              _tvgalPageToken
              (Just _tvgalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetVPNGatewaysAggregatedListResource)
                      mempty
