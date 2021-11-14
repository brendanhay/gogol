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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of network endpoint groups that are located in the
-- specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.list@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.List
    (
    -- * REST Resource
      NetworkEndpointGroupsListResource

    -- * Creating a Request
    , networkEndpointGroupsList
    , NetworkEndpointGroupsList

    -- * Request Lenses
    , neglReturnPartialSuccess
    , neglOrderBy
    , neglProject
    , neglZone
    , neglFilter
    , neglPageToken
    , neglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.list@ method which the
-- 'NetworkEndpointGroupsList' request conforms to.
type NetworkEndpointGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] NetworkEndpointGroupList

-- | Retrieves the list of network endpoint groups that are located in the
-- specified project and zone.
--
-- /See:/ 'networkEndpointGroupsList' smart constructor.
data NetworkEndpointGroupsList =
  NetworkEndpointGroupsList'
    { _neglReturnPartialSuccess :: !(Maybe Bool)
    , _neglOrderBy :: !(Maybe Text)
    , _neglProject :: !Text
    , _neglZone :: !Text
    , _neglFilter :: !(Maybe Text)
    , _neglPageToken :: !(Maybe Text)
    , _neglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neglReturnPartialSuccess'
--
-- * 'neglOrderBy'
--
-- * 'neglProject'
--
-- * 'neglZone'
--
-- * 'neglFilter'
--
-- * 'neglPageToken'
--
-- * 'neglMaxResults'
networkEndpointGroupsList
    :: Text -- ^ 'neglProject'
    -> Text -- ^ 'neglZone'
    -> NetworkEndpointGroupsList
networkEndpointGroupsList pNeglProject_ pNeglZone_ =
  NetworkEndpointGroupsList'
    { _neglReturnPartialSuccess = Nothing
    , _neglOrderBy = Nothing
    , _neglProject = pNeglProject_
    , _neglZone = pNeglZone_
    , _neglFilter = Nothing
    , _neglPageToken = Nothing
    , _neglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
neglReturnPartialSuccess :: Lens' NetworkEndpointGroupsList (Maybe Bool)
neglReturnPartialSuccess
  = lens _neglReturnPartialSuccess
      (\ s a -> s{_neglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
neglOrderBy :: Lens' NetworkEndpointGroupsList (Maybe Text)
neglOrderBy
  = lens _neglOrderBy (\ s a -> s{_neglOrderBy = a})

-- | Project ID for this request.
neglProject :: Lens' NetworkEndpointGroupsList Text
neglProject
  = lens _neglProject (\ s a -> s{_neglProject = a})

-- | The name of the zone where the network endpoint group is located. It
-- should comply with RFC1035.
neglZone :: Lens' NetworkEndpointGroupsList Text
neglZone = lens _neglZone (\ s a -> s{_neglZone = a})

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
neglFilter :: Lens' NetworkEndpointGroupsList (Maybe Text)
neglFilter
  = lens _neglFilter (\ s a -> s{_neglFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
neglPageToken :: Lens' NetworkEndpointGroupsList (Maybe Text)
neglPageToken
  = lens _neglPageToken
      (\ s a -> s{_neglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
neglMaxResults :: Lens' NetworkEndpointGroupsList Word32
neglMaxResults
  = lens _neglMaxResults
      (\ s a -> s{_neglMaxResults = a})
      . _Coerce

instance GoogleRequest NetworkEndpointGroupsList
         where
        type Rs NetworkEndpointGroupsList =
             NetworkEndpointGroupList
        type Scopes NetworkEndpointGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworkEndpointGroupsList'{..}
          = go _neglProject _neglZone _neglReturnPartialSuccess
              _neglOrderBy
              _neglFilter
              _neglPageToken
              (Just _neglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworkEndpointGroupsListResource)
                      mempty
