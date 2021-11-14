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
-- Module      : Network.Google.Resource.Compute.Instances.AggregatedList
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves aggregated list of all of the instances in your project across
-- all regions and zones.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.aggregatedList@.
module Network.Google.Resource.Compute.Instances.AggregatedList
    (
    -- * REST Resource
      InstancesAggregatedListResource

    -- * Creating a Request
    , instancesAggregatedList
    , InstancesAggregatedList

    -- * Request Lenses
    , ialaIncludeAllScopes
    , ialaReturnPartialSuccess
    , ialaOrderBy
    , ialaProject
    , ialaFilter
    , ialaPageToken
    , ialaMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instances.aggregatedList@ method which the
-- 'InstancesAggregatedList' request conforms to.
type InstancesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instances" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InstanceAggregatedList

-- | Retrieves aggregated list of all of the instances in your project across
-- all regions and zones.
--
-- /See:/ 'instancesAggregatedList' smart constructor.
data InstancesAggregatedList =
  InstancesAggregatedList'
    { _ialaIncludeAllScopes :: !(Maybe Bool)
    , _ialaReturnPartialSuccess :: !(Maybe Bool)
    , _ialaOrderBy :: !(Maybe Text)
    , _ialaProject :: !Text
    , _ialaFilter :: !(Maybe Text)
    , _ialaPageToken :: !(Maybe Text)
    , _ialaMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialaIncludeAllScopes'
--
-- * 'ialaReturnPartialSuccess'
--
-- * 'ialaOrderBy'
--
-- * 'ialaProject'
--
-- * 'ialaFilter'
--
-- * 'ialaPageToken'
--
-- * 'ialaMaxResults'
instancesAggregatedList
    :: Text -- ^ 'ialaProject'
    -> InstancesAggregatedList
instancesAggregatedList pIalaProject_ =
  InstancesAggregatedList'
    { _ialaIncludeAllScopes = Nothing
    , _ialaReturnPartialSuccess = Nothing
    , _ialaOrderBy = Nothing
    , _ialaProject = pIalaProject_
    , _ialaFilter = Nothing
    , _ialaPageToken = Nothing
    , _ialaMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
ialaIncludeAllScopes :: Lens' InstancesAggregatedList (Maybe Bool)
ialaIncludeAllScopes
  = lens _ialaIncludeAllScopes
      (\ s a -> s{_ialaIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
ialaReturnPartialSuccess :: Lens' InstancesAggregatedList (Maybe Bool)
ialaReturnPartialSuccess
  = lens _ialaReturnPartialSuccess
      (\ s a -> s{_ialaReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
ialaOrderBy :: Lens' InstancesAggregatedList (Maybe Text)
ialaOrderBy
  = lens _ialaOrderBy (\ s a -> s{_ialaOrderBy = a})

-- | Project ID for this request.
ialaProject :: Lens' InstancesAggregatedList Text
ialaProject
  = lens _ialaProject (\ s a -> s{_ialaProject = a})

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
ialaFilter :: Lens' InstancesAggregatedList (Maybe Text)
ialaFilter
  = lens _ialaFilter (\ s a -> s{_ialaFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
ialaPageToken :: Lens' InstancesAggregatedList (Maybe Text)
ialaPageToken
  = lens _ialaPageToken
      (\ s a -> s{_ialaPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
ialaMaxResults :: Lens' InstancesAggregatedList Word32
ialaMaxResults
  = lens _ialaMaxResults
      (\ s a -> s{_ialaMaxResults = a})
      . _Coerce

instance GoogleRequest InstancesAggregatedList where
        type Rs InstancesAggregatedList =
             InstanceAggregatedList
        type Scopes InstancesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesAggregatedList'{..}
          = go _ialaProject _ialaIncludeAllScopes
              _ialaReturnPartialSuccess
              _ialaOrderBy
              _ialaFilter
              _ialaPageToken
              (Just _ialaMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAggregatedListResource)
                      mempty
