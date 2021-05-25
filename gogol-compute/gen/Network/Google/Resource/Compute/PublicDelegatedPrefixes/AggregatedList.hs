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
-- Module      : Network.Google.Resource.Compute.PublicDelegatedPrefixes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all PublicDelegatedPrefix resources owned by the specific project
-- across all scopes.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.aggregatedList@.
module Network.Google.Resource.Compute.PublicDelegatedPrefixes.AggregatedList
    (
    -- * REST Resource
      PublicDelegatedPrefixesAggregatedListResource

    -- * Creating a Request
    , publicDelegatedPrefixesAggregatedList
    , PublicDelegatedPrefixesAggregatedList

    -- * Request Lenses
    , pdpalIncludeAllScopes
    , pdpalReturnPartialSuccess
    , pdpalOrderBy
    , pdpalProject
    , pdpalFilter
    , pdpalPageToken
    , pdpalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicDelegatedPrefixes.aggregatedList@ method which the
-- 'PublicDelegatedPrefixesAggregatedList' request conforms to.
type PublicDelegatedPrefixesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "publicDelegatedPrefixes" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PublicDelegatedPrefixAggregatedList

-- | Lists all PublicDelegatedPrefix resources owned by the specific project
-- across all scopes.
--
-- /See:/ 'publicDelegatedPrefixesAggregatedList' smart constructor.
data PublicDelegatedPrefixesAggregatedList =
  PublicDelegatedPrefixesAggregatedList'
    { _pdpalIncludeAllScopes :: !(Maybe Bool)
    , _pdpalReturnPartialSuccess :: !(Maybe Bool)
    , _pdpalOrderBy :: !(Maybe Text)
    , _pdpalProject :: !Text
    , _pdpalFilter :: !(Maybe Text)
    , _pdpalPageToken :: !(Maybe Text)
    , _pdpalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicDelegatedPrefixesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdpalIncludeAllScopes'
--
-- * 'pdpalReturnPartialSuccess'
--
-- * 'pdpalOrderBy'
--
-- * 'pdpalProject'
--
-- * 'pdpalFilter'
--
-- * 'pdpalPageToken'
--
-- * 'pdpalMaxResults'
publicDelegatedPrefixesAggregatedList
    :: Text -- ^ 'pdpalProject'
    -> PublicDelegatedPrefixesAggregatedList
publicDelegatedPrefixesAggregatedList pPdpalProject_ =
  PublicDelegatedPrefixesAggregatedList'
    { _pdpalIncludeAllScopes = Nothing
    , _pdpalReturnPartialSuccess = Nothing
    , _pdpalOrderBy = Nothing
    , _pdpalProject = pPdpalProject_
    , _pdpalFilter = Nothing
    , _pdpalPageToken = Nothing
    , _pdpalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
pdpalIncludeAllScopes :: Lens' PublicDelegatedPrefixesAggregatedList (Maybe Bool)
pdpalIncludeAllScopes
  = lens _pdpalIncludeAllScopes
      (\ s a -> s{_pdpalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
pdpalReturnPartialSuccess :: Lens' PublicDelegatedPrefixesAggregatedList (Maybe Bool)
pdpalReturnPartialSuccess
  = lens _pdpalReturnPartialSuccess
      (\ s a -> s{_pdpalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
pdpalOrderBy :: Lens' PublicDelegatedPrefixesAggregatedList (Maybe Text)
pdpalOrderBy
  = lens _pdpalOrderBy (\ s a -> s{_pdpalOrderBy = a})

-- | Name of the project scoping this request.
pdpalProject :: Lens' PublicDelegatedPrefixesAggregatedList Text
pdpalProject
  = lens _pdpalProject (\ s a -> s{_pdpalProject = a})

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
pdpalFilter :: Lens' PublicDelegatedPrefixesAggregatedList (Maybe Text)
pdpalFilter
  = lens _pdpalFilter (\ s a -> s{_pdpalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
pdpalPageToken :: Lens' PublicDelegatedPrefixesAggregatedList (Maybe Text)
pdpalPageToken
  = lens _pdpalPageToken
      (\ s a -> s{_pdpalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
pdpalMaxResults :: Lens' PublicDelegatedPrefixesAggregatedList Word32
pdpalMaxResults
  = lens _pdpalMaxResults
      (\ s a -> s{_pdpalMaxResults = a})
      . _Coerce

instance GoogleRequest
           PublicDelegatedPrefixesAggregatedList
         where
        type Rs PublicDelegatedPrefixesAggregatedList =
             PublicDelegatedPrefixAggregatedList
        type Scopes PublicDelegatedPrefixesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          PublicDelegatedPrefixesAggregatedList'{..}
          = go _pdpalProject _pdpalIncludeAllScopes
              _pdpalReturnPartialSuccess
              _pdpalOrderBy
              _pdpalFilter
              _pdpalPageToken
              (Just _pdpalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PublicDelegatedPrefixesAggregatedListResource)
                      mempty
