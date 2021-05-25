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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of VPN tunnels.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.aggregatedList@.
module Network.Google.Resource.Compute.VPNTunnels.AggregatedList
    (
    -- * REST Resource
      VPNTunnelsAggregatedListResource

    -- * Creating a Request
    , vpnTunnelsAggregatedList
    , VPNTunnelsAggregatedList

    -- * Request Lenses
    , vtalIncludeAllScopes
    , vtalReturnPartialSuccess
    , vtalOrderBy
    , vtalProject
    , vtalFilter
    , vtalPageToken
    , vtalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.aggregatedList@ method which the
-- 'VPNTunnelsAggregatedList' request conforms to.
type VPNTunnelsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "vpnTunnels" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] VPNTunnelAggregatedList

-- | Retrieves an aggregated list of VPN tunnels.
--
-- /See:/ 'vpnTunnelsAggregatedList' smart constructor.
data VPNTunnelsAggregatedList =
  VPNTunnelsAggregatedList'
    { _vtalIncludeAllScopes :: !(Maybe Bool)
    , _vtalReturnPartialSuccess :: !(Maybe Bool)
    , _vtalOrderBy :: !(Maybe Text)
    , _vtalProject :: !Text
    , _vtalFilter :: !(Maybe Text)
    , _vtalPageToken :: !(Maybe Text)
    , _vtalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNTunnelsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtalIncludeAllScopes'
--
-- * 'vtalReturnPartialSuccess'
--
-- * 'vtalOrderBy'
--
-- * 'vtalProject'
--
-- * 'vtalFilter'
--
-- * 'vtalPageToken'
--
-- * 'vtalMaxResults'
vpnTunnelsAggregatedList
    :: Text -- ^ 'vtalProject'
    -> VPNTunnelsAggregatedList
vpnTunnelsAggregatedList pVtalProject_ =
  VPNTunnelsAggregatedList'
    { _vtalIncludeAllScopes = Nothing
    , _vtalReturnPartialSuccess = Nothing
    , _vtalOrderBy = Nothing
    , _vtalProject = pVtalProject_
    , _vtalFilter = Nothing
    , _vtalPageToken = Nothing
    , _vtalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
vtalIncludeAllScopes :: Lens' VPNTunnelsAggregatedList (Maybe Bool)
vtalIncludeAllScopes
  = lens _vtalIncludeAllScopes
      (\ s a -> s{_vtalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
vtalReturnPartialSuccess :: Lens' VPNTunnelsAggregatedList (Maybe Bool)
vtalReturnPartialSuccess
  = lens _vtalReturnPartialSuccess
      (\ s a -> s{_vtalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
vtalOrderBy :: Lens' VPNTunnelsAggregatedList (Maybe Text)
vtalOrderBy
  = lens _vtalOrderBy (\ s a -> s{_vtalOrderBy = a})

-- | Project ID for this request.
vtalProject :: Lens' VPNTunnelsAggregatedList Text
vtalProject
  = lens _vtalProject (\ s a -> s{_vtalProject = a})

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
vtalFilter :: Lens' VPNTunnelsAggregatedList (Maybe Text)
vtalFilter
  = lens _vtalFilter (\ s a -> s{_vtalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
vtalPageToken :: Lens' VPNTunnelsAggregatedList (Maybe Text)
vtalPageToken
  = lens _vtalPageToken
      (\ s a -> s{_vtalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
vtalMaxResults :: Lens' VPNTunnelsAggregatedList Word32
vtalMaxResults
  = lens _vtalMaxResults
      (\ s a -> s{_vtalMaxResults = a})
      . _Coerce

instance GoogleRequest VPNTunnelsAggregatedList where
        type Rs VPNTunnelsAggregatedList =
             VPNTunnelAggregatedList
        type Scopes VPNTunnelsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNTunnelsAggregatedList'{..}
          = go _vtalProject _vtalIncludeAllScopes
              _vtalReturnPartialSuccess
              _vtalOrderBy
              _vtalFilter
              _vtalPageToken
              (Just _vtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNTunnelsAggregatedListResource)
                      mempty
