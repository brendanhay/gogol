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
-- Module      : Network.Google.Resource.Compute.VPNGateways.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of VPN gateways.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.aggregatedList@.
module Network.Google.Resource.Compute.VPNGateways.AggregatedList
    (
    -- * REST Resource
      VPNGatewaysAggregatedListResource

    -- * Creating a Request
    , vpnGatewaysAggregatedList
    , VPNGatewaysAggregatedList

    -- * Request Lenses
    , vgalIncludeAllScopes
    , vgalReturnPartialSuccess
    , vgalOrderBy
    , vgalProject
    , vgalFilter
    , vgalPageToken
    , vgalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.aggregatedList@ method which the
-- 'VPNGatewaysAggregatedList' request conforms to.
type VPNGatewaysAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "vpnGateways" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] VPNGatewayAggregatedList

-- | Retrieves an aggregated list of VPN gateways.
--
-- /See:/ 'vpnGatewaysAggregatedList' smart constructor.
data VPNGatewaysAggregatedList =
  VPNGatewaysAggregatedList'
    { _vgalIncludeAllScopes :: !(Maybe Bool)
    , _vgalReturnPartialSuccess :: !(Maybe Bool)
    , _vgalOrderBy :: !(Maybe Text)
    , _vgalProject :: !Text
    , _vgalFilter :: !(Maybe Text)
    , _vgalPageToken :: !(Maybe Text)
    , _vgalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgalIncludeAllScopes'
--
-- * 'vgalReturnPartialSuccess'
--
-- * 'vgalOrderBy'
--
-- * 'vgalProject'
--
-- * 'vgalFilter'
--
-- * 'vgalPageToken'
--
-- * 'vgalMaxResults'
vpnGatewaysAggregatedList
    :: Text -- ^ 'vgalProject'
    -> VPNGatewaysAggregatedList
vpnGatewaysAggregatedList pVgalProject_ =
  VPNGatewaysAggregatedList'
    { _vgalIncludeAllScopes = Nothing
    , _vgalReturnPartialSuccess = Nothing
    , _vgalOrderBy = Nothing
    , _vgalProject = pVgalProject_
    , _vgalFilter = Nothing
    , _vgalPageToken = Nothing
    , _vgalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
vgalIncludeAllScopes :: Lens' VPNGatewaysAggregatedList (Maybe Bool)
vgalIncludeAllScopes
  = lens _vgalIncludeAllScopes
      (\ s a -> s{_vgalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
vgalReturnPartialSuccess :: Lens' VPNGatewaysAggregatedList (Maybe Bool)
vgalReturnPartialSuccess
  = lens _vgalReturnPartialSuccess
      (\ s a -> s{_vgalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
vgalOrderBy :: Lens' VPNGatewaysAggregatedList (Maybe Text)
vgalOrderBy
  = lens _vgalOrderBy (\ s a -> s{_vgalOrderBy = a})

-- | Project ID for this request.
vgalProject :: Lens' VPNGatewaysAggregatedList Text
vgalProject
  = lens _vgalProject (\ s a -> s{_vgalProject = a})

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
vgalFilter :: Lens' VPNGatewaysAggregatedList (Maybe Text)
vgalFilter
  = lens _vgalFilter (\ s a -> s{_vgalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
vgalPageToken :: Lens' VPNGatewaysAggregatedList (Maybe Text)
vgalPageToken
  = lens _vgalPageToken
      (\ s a -> s{_vgalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
vgalMaxResults :: Lens' VPNGatewaysAggregatedList Word32
vgalMaxResults
  = lens _vgalMaxResults
      (\ s a -> s{_vgalMaxResults = a})
      . _Coerce

instance GoogleRequest VPNGatewaysAggregatedList
         where
        type Rs VPNGatewaysAggregatedList =
             VPNGatewayAggregatedList
        type Scopes VPNGatewaysAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNGatewaysAggregatedList'{..}
          = go _vgalProject _vgalIncludeAllScopes
              _vgalReturnPartialSuccess
              _vgalOrderBy
              _vgalFilter
              _vgalPageToken
              (Just _vgalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNGatewaysAggregatedListResource)
                      mempty
