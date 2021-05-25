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
-- Module      : Network.Google.Resource.Compute.BackendServices.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all BackendService resources, regional and global,
-- available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.aggregatedList@.
module Network.Google.Resource.Compute.BackendServices.AggregatedList
    (
    -- * REST Resource
      BackendServicesAggregatedListResource

    -- * Creating a Request
    , backendServicesAggregatedList
    , BackendServicesAggregatedList

    -- * Request Lenses
    , bsalIncludeAllScopes
    , bsalReturnPartialSuccess
    , bsalOrderBy
    , bsalProject
    , bsalFilter
    , bsalPageToken
    , bsalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendServices.aggregatedList@ method which the
-- 'BackendServicesAggregatedList' request conforms to.
type BackendServicesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "backendServices" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] BackendServiceAggregatedList

-- | Retrieves the list of all BackendService resources, regional and global,
-- available to the specified project.
--
-- /See:/ 'backendServicesAggregatedList' smart constructor.
data BackendServicesAggregatedList =
  BackendServicesAggregatedList'
    { _bsalIncludeAllScopes :: !(Maybe Bool)
    , _bsalReturnPartialSuccess :: !(Maybe Bool)
    , _bsalOrderBy :: !(Maybe Text)
    , _bsalProject :: !Text
    , _bsalFilter :: !(Maybe Text)
    , _bsalPageToken :: !(Maybe Text)
    , _bsalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendServicesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsalIncludeAllScopes'
--
-- * 'bsalReturnPartialSuccess'
--
-- * 'bsalOrderBy'
--
-- * 'bsalProject'
--
-- * 'bsalFilter'
--
-- * 'bsalPageToken'
--
-- * 'bsalMaxResults'
backendServicesAggregatedList
    :: Text -- ^ 'bsalProject'
    -> BackendServicesAggregatedList
backendServicesAggregatedList pBsalProject_ =
  BackendServicesAggregatedList'
    { _bsalIncludeAllScopes = Nothing
    , _bsalReturnPartialSuccess = Nothing
    , _bsalOrderBy = Nothing
    , _bsalProject = pBsalProject_
    , _bsalFilter = Nothing
    , _bsalPageToken = Nothing
    , _bsalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
bsalIncludeAllScopes :: Lens' BackendServicesAggregatedList (Maybe Bool)
bsalIncludeAllScopes
  = lens _bsalIncludeAllScopes
      (\ s a -> s{_bsalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
bsalReturnPartialSuccess :: Lens' BackendServicesAggregatedList (Maybe Bool)
bsalReturnPartialSuccess
  = lens _bsalReturnPartialSuccess
      (\ s a -> s{_bsalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
bsalOrderBy :: Lens' BackendServicesAggregatedList (Maybe Text)
bsalOrderBy
  = lens _bsalOrderBy (\ s a -> s{_bsalOrderBy = a})

-- | Name of the project scoping this request.
bsalProject :: Lens' BackendServicesAggregatedList Text
bsalProject
  = lens _bsalProject (\ s a -> s{_bsalProject = a})

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
bsalFilter :: Lens' BackendServicesAggregatedList (Maybe Text)
bsalFilter
  = lens _bsalFilter (\ s a -> s{_bsalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
bsalPageToken :: Lens' BackendServicesAggregatedList (Maybe Text)
bsalPageToken
  = lens _bsalPageToken
      (\ s a -> s{_bsalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
bsalMaxResults :: Lens' BackendServicesAggregatedList Word32
bsalMaxResults
  = lens _bsalMaxResults
      (\ s a -> s{_bsalMaxResults = a})
      . _Coerce

instance GoogleRequest BackendServicesAggregatedList
         where
        type Rs BackendServicesAggregatedList =
             BackendServiceAggregatedList
        type Scopes BackendServicesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient BackendServicesAggregatedList'{..}
          = go _bsalProject _bsalIncludeAllScopes
              _bsalReturnPartialSuccess
              _bsalOrderBy
              _bsalFilter
              _bsalPageToken
              (Just _bsalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BackendServicesAggregatedListResource)
                      mempty
