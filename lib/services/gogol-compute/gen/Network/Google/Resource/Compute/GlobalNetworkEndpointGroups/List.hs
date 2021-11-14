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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of network endpoint groups that are located in the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.list@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.List
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsListResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsList
    , GlobalNetworkEndpointGroupsList

    -- * Request Lenses
    , gneglReturnPartialSuccess
    , gneglOrderBy
    , gneglProject
    , gneglFilter
    , gneglPageToken
    , gneglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.list@ method which the
-- 'GlobalNetworkEndpointGroupsList' request conforms to.
type GlobalNetworkEndpointGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] NetworkEndpointGroupList

-- | Retrieves the list of network endpoint groups that are located in the
-- specified project.
--
-- /See:/ 'globalNetworkEndpointGroupsList' smart constructor.
data GlobalNetworkEndpointGroupsList =
  GlobalNetworkEndpointGroupsList'
    { _gneglReturnPartialSuccess :: !(Maybe Bool)
    , _gneglOrderBy :: !(Maybe Text)
    , _gneglProject :: !Text
    , _gneglFilter :: !(Maybe Text)
    , _gneglPageToken :: !(Maybe Text)
    , _gneglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gneglReturnPartialSuccess'
--
-- * 'gneglOrderBy'
--
-- * 'gneglProject'
--
-- * 'gneglFilter'
--
-- * 'gneglPageToken'
--
-- * 'gneglMaxResults'
globalNetworkEndpointGroupsList
    :: Text -- ^ 'gneglProject'
    -> GlobalNetworkEndpointGroupsList
globalNetworkEndpointGroupsList pGneglProject_ =
  GlobalNetworkEndpointGroupsList'
    { _gneglReturnPartialSuccess = Nothing
    , _gneglOrderBy = Nothing
    , _gneglProject = pGneglProject_
    , _gneglFilter = Nothing
    , _gneglPageToken = Nothing
    , _gneglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
gneglReturnPartialSuccess :: Lens' GlobalNetworkEndpointGroupsList (Maybe Bool)
gneglReturnPartialSuccess
  = lens _gneglReturnPartialSuccess
      (\ s a -> s{_gneglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
gneglOrderBy :: Lens' GlobalNetworkEndpointGroupsList (Maybe Text)
gneglOrderBy
  = lens _gneglOrderBy (\ s a -> s{_gneglOrderBy = a})

-- | Project ID for this request.
gneglProject :: Lens' GlobalNetworkEndpointGroupsList Text
gneglProject
  = lens _gneglProject (\ s a -> s{_gneglProject = a})

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
gneglFilter :: Lens' GlobalNetworkEndpointGroupsList (Maybe Text)
gneglFilter
  = lens _gneglFilter (\ s a -> s{_gneglFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
gneglPageToken :: Lens' GlobalNetworkEndpointGroupsList (Maybe Text)
gneglPageToken
  = lens _gneglPageToken
      (\ s a -> s{_gneglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
gneglMaxResults :: Lens' GlobalNetworkEndpointGroupsList Word32
gneglMaxResults
  = lens _gneglMaxResults
      (\ s a -> s{_gneglMaxResults = a})
      . _Coerce

instance GoogleRequest
           GlobalNetworkEndpointGroupsList
         where
        type Rs GlobalNetworkEndpointGroupsList =
             NetworkEndpointGroupList
        type Scopes GlobalNetworkEndpointGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalNetworkEndpointGroupsList'{..}
          = go _gneglProject _gneglReturnPartialSuccess
              _gneglOrderBy
              _gneglFilter
              _gneglPageToken
              (Just _gneglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalNetworkEndpointGroupsListResource)
                      mempty
