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
-- Module      : Network.Google.Resource.Compute.URLMaps.AggregatedList
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of all UrlMap resources, regional and global,
-- available to the specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.aggregatedList@.
module Network.Google.Resource.Compute.URLMaps.AggregatedList
    (
    -- * REST Resource
      URLMapsAggregatedListResource

    -- * Creating a Request
    , urlMapsAggregatedList'
    , URLMapsAggregatedList'

    -- * Request Lenses
    , umalIncludeAllScopes
    , umalReturnPartialSuccess
    , umalOrderBy
    , umalProject
    , umalFilter
    , umalPageToken
    , umalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.aggregatedList@ method which the
-- 'URLMapsAggregatedList'' request conforms to.
type URLMapsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "urlMaps" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] URLMapsAggregatedList

-- | Retrieves the list of all UrlMap resources, regional and global,
-- available to the specified project.
--
-- /See:/ 'urlMapsAggregatedList'' smart constructor.
data URLMapsAggregatedList' =
  URLMapsAggregatedList''
    { _umalIncludeAllScopes :: !(Maybe Bool)
    , _umalReturnPartialSuccess :: !(Maybe Bool)
    , _umalOrderBy :: !(Maybe Text)
    , _umalProject :: !Text
    , _umalFilter :: !(Maybe Text)
    , _umalPageToken :: !(Maybe Text)
    , _umalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLMapsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umalIncludeAllScopes'
--
-- * 'umalReturnPartialSuccess'
--
-- * 'umalOrderBy'
--
-- * 'umalProject'
--
-- * 'umalFilter'
--
-- * 'umalPageToken'
--
-- * 'umalMaxResults'
urlMapsAggregatedList'
    :: Text -- ^ 'umalProject'
    -> URLMapsAggregatedList'
urlMapsAggregatedList' pUmalProject_ =
  URLMapsAggregatedList''
    { _umalIncludeAllScopes = Nothing
    , _umalReturnPartialSuccess = Nothing
    , _umalOrderBy = Nothing
    , _umalProject = pUmalProject_
    , _umalFilter = Nothing
    , _umalPageToken = Nothing
    , _umalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
umalIncludeAllScopes :: Lens' URLMapsAggregatedList' (Maybe Bool)
umalIncludeAllScopes
  = lens _umalIncludeAllScopes
      (\ s a -> s{_umalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
umalReturnPartialSuccess :: Lens' URLMapsAggregatedList' (Maybe Bool)
umalReturnPartialSuccess
  = lens _umalReturnPartialSuccess
      (\ s a -> s{_umalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
umalOrderBy :: Lens' URLMapsAggregatedList' (Maybe Text)
umalOrderBy
  = lens _umalOrderBy (\ s a -> s{_umalOrderBy = a})

-- | Name of the project scoping this request.
umalProject :: Lens' URLMapsAggregatedList' Text
umalProject
  = lens _umalProject (\ s a -> s{_umalProject = a})

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
umalFilter :: Lens' URLMapsAggregatedList' (Maybe Text)
umalFilter
  = lens _umalFilter (\ s a -> s{_umalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
umalPageToken :: Lens' URLMapsAggregatedList' (Maybe Text)
umalPageToken
  = lens _umalPageToken
      (\ s a -> s{_umalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
umalMaxResults :: Lens' URLMapsAggregatedList' Word32
umalMaxResults
  = lens _umalMaxResults
      (\ s a -> s{_umalMaxResults = a})
      . _Coerce

instance GoogleRequest URLMapsAggregatedList' where
        type Rs URLMapsAggregatedList' =
             URLMapsAggregatedList
        type Scopes URLMapsAggregatedList' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient URLMapsAggregatedList''{..}
          = go _umalProject _umalIncludeAllScopes
              _umalReturnPartialSuccess
              _umalOrderBy
              _umalFilter
              _umalPageToken
              (Just _umalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy URLMapsAggregatedListResource)
                      mempty
