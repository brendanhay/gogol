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
-- Module      : Network.Google.Resource.Compute.Networks.ListPeeringRoutes
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the peering routes exchanged over peering connection.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.listPeeringRoutes@.
module Network.Google.Resource.Compute.Networks.ListPeeringRoutes
    (
    -- * REST Resource
      NetworksListPeeringRoutesResource

    -- * Creating a Request
    , networksListPeeringRoutes
    , NetworksListPeeringRoutes

    -- * Request Lenses
    , nlprReturnPartialSuccess
    , nlprOrderBy
    , nlprProject
    , nlprDirection
    , nlprNetwork
    , nlprPeeringName
    , nlprFilter
    , nlprRegion
    , nlprPageToken
    , nlprMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networks.listPeeringRoutes@ method which the
-- 'NetworksListPeeringRoutes' request conforms to.
type NetworksListPeeringRoutesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   "listPeeringRoutes" :>
                     QueryParam "returnPartialSuccess" Bool :>
                       QueryParam "orderBy" Text :>
                         QueryParam "direction"
                           NetworksListPeeringRoutesDirection
                           :>
                           QueryParam "peeringName" Text :>
                             QueryParam "filter" Text :>
                               QueryParam "region" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "maxResults" (Textual Word32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ExchangedPeeringRoutesList

-- | Lists the peering routes exchanged over peering connection.
--
-- /See:/ 'networksListPeeringRoutes' smart constructor.
data NetworksListPeeringRoutes =
  NetworksListPeeringRoutes'
    { _nlprReturnPartialSuccess :: !(Maybe Bool)
    , _nlprOrderBy :: !(Maybe Text)
    , _nlprProject :: !Text
    , _nlprDirection :: !(Maybe NetworksListPeeringRoutesDirection)
    , _nlprNetwork :: !Text
    , _nlprPeeringName :: !(Maybe Text)
    , _nlprFilter :: !(Maybe Text)
    , _nlprRegion :: !(Maybe Text)
    , _nlprPageToken :: !(Maybe Text)
    , _nlprMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworksListPeeringRoutes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlprReturnPartialSuccess'
--
-- * 'nlprOrderBy'
--
-- * 'nlprProject'
--
-- * 'nlprDirection'
--
-- * 'nlprNetwork'
--
-- * 'nlprPeeringName'
--
-- * 'nlprFilter'
--
-- * 'nlprRegion'
--
-- * 'nlprPageToken'
--
-- * 'nlprMaxResults'
networksListPeeringRoutes
    :: Text -- ^ 'nlprProject'
    -> Text -- ^ 'nlprNetwork'
    -> NetworksListPeeringRoutes
networksListPeeringRoutes pNlprProject_ pNlprNetwork_ =
  NetworksListPeeringRoutes'
    { _nlprReturnPartialSuccess = Nothing
    , _nlprOrderBy = Nothing
    , _nlprProject = pNlprProject_
    , _nlprDirection = Nothing
    , _nlprNetwork = pNlprNetwork_
    , _nlprPeeringName = Nothing
    , _nlprFilter = Nothing
    , _nlprRegion = Nothing
    , _nlprPageToken = Nothing
    , _nlprMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
nlprReturnPartialSuccess :: Lens' NetworksListPeeringRoutes (Maybe Bool)
nlprReturnPartialSuccess
  = lens _nlprReturnPartialSuccess
      (\ s a -> s{_nlprReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
nlprOrderBy :: Lens' NetworksListPeeringRoutes (Maybe Text)
nlprOrderBy
  = lens _nlprOrderBy (\ s a -> s{_nlprOrderBy = a})

-- | Project ID for this request.
nlprProject :: Lens' NetworksListPeeringRoutes Text
nlprProject
  = lens _nlprProject (\ s a -> s{_nlprProject = a})

-- | The direction of the exchanged routes.
nlprDirection :: Lens' NetworksListPeeringRoutes (Maybe NetworksListPeeringRoutesDirection)
nlprDirection
  = lens _nlprDirection
      (\ s a -> s{_nlprDirection = a})

-- | Name of the network for this request.
nlprNetwork :: Lens' NetworksListPeeringRoutes Text
nlprNetwork
  = lens _nlprNetwork (\ s a -> s{_nlprNetwork = a})

-- | The response will show routes exchanged over the given peering
-- connection.
nlprPeeringName :: Lens' NetworksListPeeringRoutes (Maybe Text)
nlprPeeringName
  = lens _nlprPeeringName
      (\ s a -> s{_nlprPeeringName = a})

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
nlprFilter :: Lens' NetworksListPeeringRoutes (Maybe Text)
nlprFilter
  = lens _nlprFilter (\ s a -> s{_nlprFilter = a})

-- | The region of the request. The response will include all subnet routes,
-- static routes and dynamic routes in the region.
nlprRegion :: Lens' NetworksListPeeringRoutes (Maybe Text)
nlprRegion
  = lens _nlprRegion (\ s a -> s{_nlprRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
nlprPageToken :: Lens' NetworksListPeeringRoutes (Maybe Text)
nlprPageToken
  = lens _nlprPageToken
      (\ s a -> s{_nlprPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
nlprMaxResults :: Lens' NetworksListPeeringRoutes Word32
nlprMaxResults
  = lens _nlprMaxResults
      (\ s a -> s{_nlprMaxResults = a})
      . _Coerce

instance GoogleRequest NetworksListPeeringRoutes
         where
        type Rs NetworksListPeeringRoutes =
             ExchangedPeeringRoutesList
        type Scopes NetworksListPeeringRoutes =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworksListPeeringRoutes'{..}
          = go _nlprProject _nlprNetwork
              _nlprReturnPartialSuccess
              _nlprOrderBy
              _nlprDirection
              _nlprPeeringName
              _nlprFilter
              _nlprRegion
              _nlprPageToken
              (Just _nlprMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworksListPeeringRoutesResource)
                      mempty
