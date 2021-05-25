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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.ListNetworkEndpoints
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the network endpoints in the specified network endpoint group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.listNetworkEndpoints@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.ListNetworkEndpoints
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsListNetworkEndpointsResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsListNetworkEndpoints
    , GlobalNetworkEndpointGroupsListNetworkEndpoints

    -- * Request Lenses
    , gneglneReturnPartialSuccess
    , gneglneOrderBy
    , gneglneProject
    , gneglneNetworkEndpointGroup
    , gneglneFilter
    , gneglnePageToken
    , gneglneMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.listNetworkEndpoints@ method which the
-- 'GlobalNetworkEndpointGroupsListNetworkEndpoints' request conforms to.
type GlobalNetworkEndpointGroupsListNetworkEndpointsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 Capture "networkEndpointGroup" Text :>
                   "listNetworkEndpoints" :>
                     QueryParam "returnPartialSuccess" Bool :>
                       QueryParam "orderBy" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON]
                                   NetworkEndpointGroupsListNetworkEndpoints

-- | Lists the network endpoints in the specified network endpoint group.
--
-- /See:/ 'globalNetworkEndpointGroupsListNetworkEndpoints' smart constructor.
data GlobalNetworkEndpointGroupsListNetworkEndpoints =
  GlobalNetworkEndpointGroupsListNetworkEndpoints'
    { _gneglneReturnPartialSuccess :: !(Maybe Bool)
    , _gneglneOrderBy :: !(Maybe Text)
    , _gneglneProject :: !Text
    , _gneglneNetworkEndpointGroup :: !Text
    , _gneglneFilter :: !(Maybe Text)
    , _gneglnePageToken :: !(Maybe Text)
    , _gneglneMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsListNetworkEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gneglneReturnPartialSuccess'
--
-- * 'gneglneOrderBy'
--
-- * 'gneglneProject'
--
-- * 'gneglneNetworkEndpointGroup'
--
-- * 'gneglneFilter'
--
-- * 'gneglnePageToken'
--
-- * 'gneglneMaxResults'
globalNetworkEndpointGroupsListNetworkEndpoints
    :: Text -- ^ 'gneglneProject'
    -> Text -- ^ 'gneglneNetworkEndpointGroup'
    -> GlobalNetworkEndpointGroupsListNetworkEndpoints
globalNetworkEndpointGroupsListNetworkEndpoints pGneglneProject_ pGneglneNetworkEndpointGroup_ =
  GlobalNetworkEndpointGroupsListNetworkEndpoints'
    { _gneglneReturnPartialSuccess = Nothing
    , _gneglneOrderBy = Nothing
    , _gneglneProject = pGneglneProject_
    , _gneglneNetworkEndpointGroup = pGneglneNetworkEndpointGroup_
    , _gneglneFilter = Nothing
    , _gneglnePageToken = Nothing
    , _gneglneMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
gneglneReturnPartialSuccess :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints (Maybe Bool)
gneglneReturnPartialSuccess
  = lens _gneglneReturnPartialSuccess
      (\ s a -> s{_gneglneReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
gneglneOrderBy :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints (Maybe Text)
gneglneOrderBy
  = lens _gneglneOrderBy
      (\ s a -> s{_gneglneOrderBy = a})

-- | Project ID for this request.
gneglneProject :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints Text
gneglneProject
  = lens _gneglneProject
      (\ s a -> s{_gneglneProject = a})

-- | The name of the network endpoint group from which you want to generate a
-- list of included network endpoints. It should comply with RFC1035.
gneglneNetworkEndpointGroup :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints Text
gneglneNetworkEndpointGroup
  = lens _gneglneNetworkEndpointGroup
      (\ s a -> s{_gneglneNetworkEndpointGroup = a})

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
gneglneFilter :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints (Maybe Text)
gneglneFilter
  = lens _gneglneFilter
      (\ s a -> s{_gneglneFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
gneglnePageToken :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints (Maybe Text)
gneglnePageToken
  = lens _gneglnePageToken
      (\ s a -> s{_gneglnePageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
gneglneMaxResults :: Lens' GlobalNetworkEndpointGroupsListNetworkEndpoints Word32
gneglneMaxResults
  = lens _gneglneMaxResults
      (\ s a -> s{_gneglneMaxResults = a})
      . _Coerce

instance GoogleRequest
           GlobalNetworkEndpointGroupsListNetworkEndpoints
         where
        type Rs
               GlobalNetworkEndpointGroupsListNetworkEndpoints
             = NetworkEndpointGroupsListNetworkEndpoints
        type Scopes
               GlobalNetworkEndpointGroupsListNetworkEndpoints
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          GlobalNetworkEndpointGroupsListNetworkEndpoints'{..}
          = go _gneglneProject _gneglneNetworkEndpointGroup
              _gneglneReturnPartialSuccess
              _gneglneOrderBy
              _gneglneFilter
              _gneglnePageToken
              (Just _gneglneMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           GlobalNetworkEndpointGroupsListNetworkEndpointsResource)
                      mempty
