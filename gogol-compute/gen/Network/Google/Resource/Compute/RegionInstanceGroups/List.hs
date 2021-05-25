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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instance group resources contained within the
-- specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroups.list@.
module Network.Google.Resource.Compute.RegionInstanceGroups.List
    (
    -- * REST Resource
      RegionInstanceGroupsListResource

    -- * Creating a Request
    , regionInstanceGroupsList
    , RegionInstanceGroupsList

    -- * Request Lenses
    , riglReturnPartialSuccess
    , riglOrderBy
    , riglProject
    , riglFilter
    , riglRegion
    , riglPageToken
    , riglMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroups.list@ method which the
-- 'RegionInstanceGroupsList' request conforms to.
type RegionInstanceGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroups" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] RegionInstanceGroupList

-- | Retrieves the list of instance group resources contained within the
-- specified region.
--
-- /See:/ 'regionInstanceGroupsList' smart constructor.
data RegionInstanceGroupsList =
  RegionInstanceGroupsList'
    { _riglReturnPartialSuccess :: !(Maybe Bool)
    , _riglOrderBy :: !(Maybe Text)
    , _riglProject :: !Text
    , _riglFilter :: !(Maybe Text)
    , _riglRegion :: !Text
    , _riglPageToken :: !(Maybe Text)
    , _riglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riglReturnPartialSuccess'
--
-- * 'riglOrderBy'
--
-- * 'riglProject'
--
-- * 'riglFilter'
--
-- * 'riglRegion'
--
-- * 'riglPageToken'
--
-- * 'riglMaxResults'
regionInstanceGroupsList
    :: Text -- ^ 'riglProject'
    -> Text -- ^ 'riglRegion'
    -> RegionInstanceGroupsList
regionInstanceGroupsList pRiglProject_ pRiglRegion_ =
  RegionInstanceGroupsList'
    { _riglReturnPartialSuccess = Nothing
    , _riglOrderBy = Nothing
    , _riglProject = pRiglProject_
    , _riglFilter = Nothing
    , _riglRegion = pRiglRegion_
    , _riglPageToken = Nothing
    , _riglMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
riglReturnPartialSuccess :: Lens' RegionInstanceGroupsList (Maybe Bool)
riglReturnPartialSuccess
  = lens _riglReturnPartialSuccess
      (\ s a -> s{_riglReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
riglOrderBy :: Lens' RegionInstanceGroupsList (Maybe Text)
riglOrderBy
  = lens _riglOrderBy (\ s a -> s{_riglOrderBy = a})

-- | Project ID for this request.
riglProject :: Lens' RegionInstanceGroupsList Text
riglProject
  = lens _riglProject (\ s a -> s{_riglProject = a})

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
riglFilter :: Lens' RegionInstanceGroupsList (Maybe Text)
riglFilter
  = lens _riglFilter (\ s a -> s{_riglFilter = a})

-- | Name of the region scoping this request.
riglRegion :: Lens' RegionInstanceGroupsList Text
riglRegion
  = lens _riglRegion (\ s a -> s{_riglRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
riglPageToken :: Lens' RegionInstanceGroupsList (Maybe Text)
riglPageToken
  = lens _riglPageToken
      (\ s a -> s{_riglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
riglMaxResults :: Lens' RegionInstanceGroupsList Word32
riglMaxResults
  = lens _riglMaxResults
      (\ s a -> s{_riglMaxResults = a})
      . _Coerce

instance GoogleRequest RegionInstanceGroupsList where
        type Rs RegionInstanceGroupsList =
             RegionInstanceGroupList
        type Scopes RegionInstanceGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupsList'{..}
          = go _riglProject _riglRegion
              _riglReturnPartialSuccess
              _riglOrderBy
              _riglFilter
              _riglPageToken
              (Just _riglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionInstanceGroupsListResource)
                      mempty
