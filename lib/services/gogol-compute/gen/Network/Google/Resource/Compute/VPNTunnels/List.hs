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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.list@.
module Network.Google.Resource.Compute.VPNTunnels.List
    (
    -- * REST Resource
      VPNTunnelsListResource

    -- * Creating a Request
    , vpnTunnelsList
    , VPNTunnelsList

    -- * Request Lenses
    , vtlReturnPartialSuccess
    , vtlOrderBy
    , vtlProject
    , vtlFilter
    , vtlRegion
    , vtlPageToken
    , vtlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.list@ method which the
-- 'VPNTunnelsList' request conforms to.
type VPNTunnelsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] VPNTunnelList

-- | Retrieves a list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ 'vpnTunnelsList' smart constructor.
data VPNTunnelsList =
  VPNTunnelsList'
    { _vtlReturnPartialSuccess :: !(Maybe Bool)
    , _vtlOrderBy :: !(Maybe Text)
    , _vtlProject :: !Text
    , _vtlFilter :: !(Maybe Text)
    , _vtlRegion :: !Text
    , _vtlPageToken :: !(Maybe Text)
    , _vtlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNTunnelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtlReturnPartialSuccess'
--
-- * 'vtlOrderBy'
--
-- * 'vtlProject'
--
-- * 'vtlFilter'
--
-- * 'vtlRegion'
--
-- * 'vtlPageToken'
--
-- * 'vtlMaxResults'
vpnTunnelsList
    :: Text -- ^ 'vtlProject'
    -> Text -- ^ 'vtlRegion'
    -> VPNTunnelsList
vpnTunnelsList pVtlProject_ pVtlRegion_ =
  VPNTunnelsList'
    { _vtlReturnPartialSuccess = Nothing
    , _vtlOrderBy = Nothing
    , _vtlProject = pVtlProject_
    , _vtlFilter = Nothing
    , _vtlRegion = pVtlRegion_
    , _vtlPageToken = Nothing
    , _vtlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
vtlReturnPartialSuccess :: Lens' VPNTunnelsList (Maybe Bool)
vtlReturnPartialSuccess
  = lens _vtlReturnPartialSuccess
      (\ s a -> s{_vtlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
vtlOrderBy :: Lens' VPNTunnelsList (Maybe Text)
vtlOrderBy
  = lens _vtlOrderBy (\ s a -> s{_vtlOrderBy = a})

-- | Project ID for this request.
vtlProject :: Lens' VPNTunnelsList Text
vtlProject
  = lens _vtlProject (\ s a -> s{_vtlProject = a})

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
vtlFilter :: Lens' VPNTunnelsList (Maybe Text)
vtlFilter
  = lens _vtlFilter (\ s a -> s{_vtlFilter = a})

-- | Name of the region for this request.
vtlRegion :: Lens' VPNTunnelsList Text
vtlRegion
  = lens _vtlRegion (\ s a -> s{_vtlRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
vtlPageToken :: Lens' VPNTunnelsList (Maybe Text)
vtlPageToken
  = lens _vtlPageToken (\ s a -> s{_vtlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
vtlMaxResults :: Lens' VPNTunnelsList Word32
vtlMaxResults
  = lens _vtlMaxResults
      (\ s a -> s{_vtlMaxResults = a})
      . _Coerce

instance GoogleRequest VPNTunnelsList where
        type Rs VPNTunnelsList = VPNTunnelList
        type Scopes VPNTunnelsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNTunnelsList'{..}
          = go _vtlProject _vtlRegion _vtlReturnPartialSuccess
              _vtlOrderBy
              _vtlFilter
              _vtlPageToken
              (Just _vtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy VPNTunnelsListResource)
                      mempty
