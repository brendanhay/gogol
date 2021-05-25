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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.ListNetworkEndpoints
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the network endpoints in the specified network endpoint group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.listNetworkEndpoints@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.ListNetworkEndpoints
    (
    -- * REST Resource
      NetworkEndpointGroupsListNetworkEndpointsResource

    -- * Creating a Request
    , networkEndpointGroupsListNetworkEndpoints'
    , NetworkEndpointGroupsListNetworkEndpoints'

    -- * Request Lenses
    , neglneReturnPartialSuccess
    , neglneOrderBy
    , neglneProject
    , neglneZone
    , neglnePayload
    , neglneNetworkEndpointGroup
    , neglneFilter
    , neglnePageToken
    , neglneMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.listNetworkEndpoints@ method which the
-- 'NetworkEndpointGroupsListNetworkEndpoints'' request conforms to.
type NetworkEndpointGroupsListNetworkEndpointsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     "listNetworkEndpoints" :>
                       QueryParam "returnPartialSuccess" Bool :>
                         QueryParam "orderBy" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     NetworkEndpointGroupsListEndpointsRequest
                                     :>
                                     Post '[JSON]
                                       NetworkEndpointGroupsListNetworkEndpoints

-- | Lists the network endpoints in the specified network endpoint group.
--
-- /See:/ 'networkEndpointGroupsListNetworkEndpoints'' smart constructor.
data NetworkEndpointGroupsListNetworkEndpoints' =
  NetworkEndpointGroupsListNetworkEndpoints''
    { _neglneReturnPartialSuccess :: !(Maybe Bool)
    , _neglneOrderBy :: !(Maybe Text)
    , _neglneProject :: !Text
    , _neglneZone :: !Text
    , _neglnePayload :: !NetworkEndpointGroupsListEndpointsRequest
    , _neglneNetworkEndpointGroup :: !Text
    , _neglneFilter :: !(Maybe Text)
    , _neglnePageToken :: !(Maybe Text)
    , _neglneMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsListNetworkEndpoints'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neglneReturnPartialSuccess'
--
-- * 'neglneOrderBy'
--
-- * 'neglneProject'
--
-- * 'neglneZone'
--
-- * 'neglnePayload'
--
-- * 'neglneNetworkEndpointGroup'
--
-- * 'neglneFilter'
--
-- * 'neglnePageToken'
--
-- * 'neglneMaxResults'
networkEndpointGroupsListNetworkEndpoints'
    :: Text -- ^ 'neglneProject'
    -> Text -- ^ 'neglneZone'
    -> NetworkEndpointGroupsListEndpointsRequest -- ^ 'neglnePayload'
    -> Text -- ^ 'neglneNetworkEndpointGroup'
    -> NetworkEndpointGroupsListNetworkEndpoints'
networkEndpointGroupsListNetworkEndpoints' pNeglneProject_ pNeglneZone_ pNeglnePayload_ pNeglneNetworkEndpointGroup_ =
  NetworkEndpointGroupsListNetworkEndpoints''
    { _neglneReturnPartialSuccess = Nothing
    , _neglneOrderBy = Nothing
    , _neglneProject = pNeglneProject_
    , _neglneZone = pNeglneZone_
    , _neglnePayload = pNeglnePayload_
    , _neglneNetworkEndpointGroup = pNeglneNetworkEndpointGroup_
    , _neglneFilter = Nothing
    , _neglnePageToken = Nothing
    , _neglneMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
neglneReturnPartialSuccess :: Lens' NetworkEndpointGroupsListNetworkEndpoints' (Maybe Bool)
neglneReturnPartialSuccess
  = lens _neglneReturnPartialSuccess
      (\ s a -> s{_neglneReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
neglneOrderBy :: Lens' NetworkEndpointGroupsListNetworkEndpoints' (Maybe Text)
neglneOrderBy
  = lens _neglneOrderBy
      (\ s a -> s{_neglneOrderBy = a})

-- | Project ID for this request.
neglneProject :: Lens' NetworkEndpointGroupsListNetworkEndpoints' Text
neglneProject
  = lens _neglneProject
      (\ s a -> s{_neglneProject = a})

-- | The name of the zone where the network endpoint group is located. It
-- should comply with RFC1035.
neglneZone :: Lens' NetworkEndpointGroupsListNetworkEndpoints' Text
neglneZone
  = lens _neglneZone (\ s a -> s{_neglneZone = a})

-- | Multipart request metadata.
neglnePayload :: Lens' NetworkEndpointGroupsListNetworkEndpoints' NetworkEndpointGroupsListEndpointsRequest
neglnePayload
  = lens _neglnePayload
      (\ s a -> s{_neglnePayload = a})

-- | The name of the network endpoint group from which you want to generate a
-- list of included network endpoints. It should comply with RFC1035.
neglneNetworkEndpointGroup :: Lens' NetworkEndpointGroupsListNetworkEndpoints' Text
neglneNetworkEndpointGroup
  = lens _neglneNetworkEndpointGroup
      (\ s a -> s{_neglneNetworkEndpointGroup = a})

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
neglneFilter :: Lens' NetworkEndpointGroupsListNetworkEndpoints' (Maybe Text)
neglneFilter
  = lens _neglneFilter (\ s a -> s{_neglneFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
neglnePageToken :: Lens' NetworkEndpointGroupsListNetworkEndpoints' (Maybe Text)
neglnePageToken
  = lens _neglnePageToken
      (\ s a -> s{_neglnePageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
neglneMaxResults :: Lens' NetworkEndpointGroupsListNetworkEndpoints' Word32
neglneMaxResults
  = lens _neglneMaxResults
      (\ s a -> s{_neglneMaxResults = a})
      . _Coerce

instance GoogleRequest
           NetworkEndpointGroupsListNetworkEndpoints'
         where
        type Rs NetworkEndpointGroupsListNetworkEndpoints' =
             NetworkEndpointGroupsListNetworkEndpoints
        type Scopes
               NetworkEndpointGroupsListNetworkEndpoints'
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          NetworkEndpointGroupsListNetworkEndpoints''{..}
          = go _neglneProject _neglneZone
              _neglneNetworkEndpointGroup
              _neglneReturnPartialSuccess
              _neglneOrderBy
              _neglneFilter
              _neglnePageToken
              (Just _neglneMaxResults)
              (Just AltJSON)
              _neglnePayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           NetworkEndpointGroupsListNetworkEndpointsResource)
                      mempty
