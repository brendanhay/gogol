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
-- Module      : Network.Google.Resource.Compute.TargetInstances.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of target instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.aggregatedList@.
module Network.Google.Resource.Compute.TargetInstances.AggregatedList
    (
    -- * REST Resource
      TargetInstancesAggregatedListResource

    -- * Creating a Request
    , targetInstancesAggregatedList
    , TargetInstancesAggregatedList

    -- * Request Lenses
    , tialIncludeAllScopes
    , tialReturnPartialSuccess
    , tialOrderBy
    , tialProject
    , tialFilter
    , tialPageToken
    , tialMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetInstances.aggregatedList@ method which the
-- 'TargetInstancesAggregatedList' request conforms to.
type TargetInstancesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetInstances" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetInstanceAggregatedList

-- | Retrieves an aggregated list of target instances.
--
-- /See:/ 'targetInstancesAggregatedList' smart constructor.
data TargetInstancesAggregatedList =
  TargetInstancesAggregatedList'
    { _tialIncludeAllScopes :: !(Maybe Bool)
    , _tialReturnPartialSuccess :: !(Maybe Bool)
    , _tialOrderBy :: !(Maybe Text)
    , _tialProject :: !Text
    , _tialFilter :: !(Maybe Text)
    , _tialPageToken :: !(Maybe Text)
    , _tialMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetInstancesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialIncludeAllScopes'
--
-- * 'tialReturnPartialSuccess'
--
-- * 'tialOrderBy'
--
-- * 'tialProject'
--
-- * 'tialFilter'
--
-- * 'tialPageToken'
--
-- * 'tialMaxResults'
targetInstancesAggregatedList
    :: Text -- ^ 'tialProject'
    -> TargetInstancesAggregatedList
targetInstancesAggregatedList pTialProject_ =
  TargetInstancesAggregatedList'
    { _tialIncludeAllScopes = Nothing
    , _tialReturnPartialSuccess = Nothing
    , _tialOrderBy = Nothing
    , _tialProject = pTialProject_
    , _tialFilter = Nothing
    , _tialPageToken = Nothing
    , _tialMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
tialIncludeAllScopes :: Lens' TargetInstancesAggregatedList (Maybe Bool)
tialIncludeAllScopes
  = lens _tialIncludeAllScopes
      (\ s a -> s{_tialIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
tialReturnPartialSuccess :: Lens' TargetInstancesAggregatedList (Maybe Bool)
tialReturnPartialSuccess
  = lens _tialReturnPartialSuccess
      (\ s a -> s{_tialReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
tialOrderBy :: Lens' TargetInstancesAggregatedList (Maybe Text)
tialOrderBy
  = lens _tialOrderBy (\ s a -> s{_tialOrderBy = a})

-- | Project ID for this request.
tialProject :: Lens' TargetInstancesAggregatedList Text
tialProject
  = lens _tialProject (\ s a -> s{_tialProject = a})

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
tialFilter :: Lens' TargetInstancesAggregatedList (Maybe Text)
tialFilter
  = lens _tialFilter (\ s a -> s{_tialFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
tialPageToken :: Lens' TargetInstancesAggregatedList (Maybe Text)
tialPageToken
  = lens _tialPageToken
      (\ s a -> s{_tialPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
tialMaxResults :: Lens' TargetInstancesAggregatedList Word32
tialMaxResults
  = lens _tialMaxResults
      (\ s a -> s{_tialMaxResults = a})
      . _Coerce

instance GoogleRequest TargetInstancesAggregatedList
         where
        type Rs TargetInstancesAggregatedList =
             TargetInstanceAggregatedList
        type Scopes TargetInstancesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetInstancesAggregatedList'{..}
          = go _tialProject _tialIncludeAllScopes
              _tialReturnPartialSuccess
              _tialOrderBy
              _tialFilter
              _tialPageToken
              (Just _tialMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetInstancesAggregatedListResource)
                      mempty
