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
-- Module      : Network.Google.Resource.Compute.Autoscalers.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of autoscalers.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.aggregatedList@.
module Network.Google.Resource.Compute.Autoscalers.AggregatedList
    (
    -- * REST Resource
      AutoscalersAggregatedListResource

    -- * Creating a Request
    , autoscalersAggregatedList
    , AutoscalersAggregatedList

    -- * Request Lenses
    , autIncludeAllScopes
    , autReturnPartialSuccess
    , autOrderBy
    , autProject
    , autFilter
    , autPageToken
    , autMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.aggregatedList@ method which the
-- 'AutoscalersAggregatedList' request conforms to.
type AutoscalersAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "autoscalers" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] AutoscalerAggregatedList

-- | Retrieves an aggregated list of autoscalers.
--
-- /See:/ 'autoscalersAggregatedList' smart constructor.
data AutoscalersAggregatedList =
  AutoscalersAggregatedList'
    { _autIncludeAllScopes :: !(Maybe Bool)
    , _autReturnPartialSuccess :: !(Maybe Bool)
    , _autOrderBy :: !(Maybe Text)
    , _autProject :: !Text
    , _autFilter :: !(Maybe Text)
    , _autPageToken :: !(Maybe Text)
    , _autMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalersAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autIncludeAllScopes'
--
-- * 'autReturnPartialSuccess'
--
-- * 'autOrderBy'
--
-- * 'autProject'
--
-- * 'autFilter'
--
-- * 'autPageToken'
--
-- * 'autMaxResults'
autoscalersAggregatedList
    :: Text -- ^ 'autProject'
    -> AutoscalersAggregatedList
autoscalersAggregatedList pAutProject_ =
  AutoscalersAggregatedList'
    { _autIncludeAllScopes = Nothing
    , _autReturnPartialSuccess = Nothing
    , _autOrderBy = Nothing
    , _autProject = pAutProject_
    , _autFilter = Nothing
    , _autPageToken = Nothing
    , _autMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
autIncludeAllScopes :: Lens' AutoscalersAggregatedList (Maybe Bool)
autIncludeAllScopes
  = lens _autIncludeAllScopes
      (\ s a -> s{_autIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
autReturnPartialSuccess :: Lens' AutoscalersAggregatedList (Maybe Bool)
autReturnPartialSuccess
  = lens _autReturnPartialSuccess
      (\ s a -> s{_autReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
autOrderBy :: Lens' AutoscalersAggregatedList (Maybe Text)
autOrderBy
  = lens _autOrderBy (\ s a -> s{_autOrderBy = a})

-- | Project ID for this request.
autProject :: Lens' AutoscalersAggregatedList Text
autProject
  = lens _autProject (\ s a -> s{_autProject = a})

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
autFilter :: Lens' AutoscalersAggregatedList (Maybe Text)
autFilter
  = lens _autFilter (\ s a -> s{_autFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
autPageToken :: Lens' AutoscalersAggregatedList (Maybe Text)
autPageToken
  = lens _autPageToken (\ s a -> s{_autPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
autMaxResults :: Lens' AutoscalersAggregatedList Word32
autMaxResults
  = lens _autMaxResults
      (\ s a -> s{_autMaxResults = a})
      . _Coerce

instance GoogleRequest AutoscalersAggregatedList
         where
        type Rs AutoscalersAggregatedList =
             AutoscalerAggregatedList
        type Scopes AutoscalersAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AutoscalersAggregatedList'{..}
          = go _autProject _autIncludeAllScopes
              _autReturnPartialSuccess
              _autOrderBy
              _autFilter
              _autPageToken
              (Just _autMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersAggregatedListResource)
                      mempty
