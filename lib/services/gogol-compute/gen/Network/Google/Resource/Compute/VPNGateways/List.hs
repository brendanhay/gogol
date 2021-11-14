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
-- Module      : Network.Google.Resource.Compute.VPNGateways.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of VPN gateways available to the specified project and
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.list@.
module Network.Google.Resource.Compute.VPNGateways.List
    (
    -- * REST Resource
      VPNGatewaysListResource

    -- * Creating a Request
    , vpnGatewaysList
    , VPNGatewaysList

    -- * Request Lenses
    , vglReturnPartialSuccess
    , vglOrderBy
    , vglProject
    , vglFilter
    , vglRegion
    , vglPageToken
    , vglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.list@ method which the
-- 'VPNGatewaysList' request conforms to.
type VPNGatewaysListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] VPNGatewayList

-- | Retrieves a list of VPN gateways available to the specified project and
-- region.
--
-- /See:/ 'vpnGatewaysList' smart constructor.
data VPNGatewaysList =
  VPNGatewaysList'
    { _vglReturnPartialSuccess :: !(Maybe Bool)
    , _vglOrderBy :: !(Maybe Text)
    , _vglProject :: !Text
    , _vglFilter :: !(Maybe Text)
    , _vglRegion :: !Text
    , _vglPageToken :: !(Maybe Text)
    , _vglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vglReturnPartialSuccess'
--
-- * 'vglOrderBy'
--
-- * 'vglProject'
--
-- * 'vglFilter'
--
-- * 'vglRegion'
--
-- * 'vglPageToken'
--
-- * 'vglMaxResults'
vpnGatewaysList
    :: Text -- ^ 'vglProject'
    -> Text -- ^ 'vglRegion'
    -> VPNGatewaysList
vpnGatewaysList pVglProject_ pVglRegion_ =
  VPNGatewaysList'
    { _vglReturnPartialSuccess = Nothing
    , _vglOrderBy = Nothing
    , _vglProject = pVglProject_
    , _vglFilter = Nothing
    , _vglRegion = pVglRegion_
    , _vglPageToken = Nothing
    , _vglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
vglReturnPartialSuccess :: Lens' VPNGatewaysList (Maybe Bool)
vglReturnPartialSuccess
  = lens _vglReturnPartialSuccess
      (\ s a -> s{_vglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
vglOrderBy :: Lens' VPNGatewaysList (Maybe Text)
vglOrderBy
  = lens _vglOrderBy (\ s a -> s{_vglOrderBy = a})

-- | Project ID for this request.
vglProject :: Lens' VPNGatewaysList Text
vglProject
  = lens _vglProject (\ s a -> s{_vglProject = a})

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
vglFilter :: Lens' VPNGatewaysList (Maybe Text)
vglFilter
  = lens _vglFilter (\ s a -> s{_vglFilter = a})

-- | Name of the region for this request.
vglRegion :: Lens' VPNGatewaysList Text
vglRegion
  = lens _vglRegion (\ s a -> s{_vglRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
vglPageToken :: Lens' VPNGatewaysList (Maybe Text)
vglPageToken
  = lens _vglPageToken (\ s a -> s{_vglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
vglMaxResults :: Lens' VPNGatewaysList Word32
vglMaxResults
  = lens _vglMaxResults
      (\ s a -> s{_vglMaxResults = a})
      . _Coerce

instance GoogleRequest VPNGatewaysList where
        type Rs VPNGatewaysList = VPNGatewayList
        type Scopes VPNGatewaysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNGatewaysList'{..}
          = go _vglProject _vglRegion _vglReturnPartialSuccess
              _vglOrderBy
              _vglFilter
              _vglPageToken
              (Just _vglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNGatewaysListResource)
                      mempty
