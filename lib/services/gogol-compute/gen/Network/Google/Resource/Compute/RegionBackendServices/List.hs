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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of regional BackendService resources available to the
-- specified project in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.list@.
module Network.Google.Resource.Compute.RegionBackendServices.List
    (
    -- * REST Resource
      RegionBackendServicesListResource

    -- * Creating a Request
    , regionBackendServicesList
    , RegionBackendServicesList

    -- * Request Lenses
    , rbslReturnPartialSuccess
    , rbslOrderBy
    , rbslProject
    , rbslFilter
    , rbslRegion
    , rbslPageToken
    , rbslMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.list@ method which the
-- 'RegionBackendServicesList' request conforms to.
type RegionBackendServicesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] BackendServiceList

-- | Retrieves the list of regional BackendService resources available to the
-- specified project in the given region.
--
-- /See:/ 'regionBackendServicesList' smart constructor.
data RegionBackendServicesList =
  RegionBackendServicesList'
    { _rbslReturnPartialSuccess :: !(Maybe Bool)
    , _rbslOrderBy :: !(Maybe Text)
    , _rbslProject :: !Text
    , _rbslFilter :: !(Maybe Text)
    , _rbslRegion :: !Text
    , _rbslPageToken :: !(Maybe Text)
    , _rbslMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionBackendServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbslReturnPartialSuccess'
--
-- * 'rbslOrderBy'
--
-- * 'rbslProject'
--
-- * 'rbslFilter'
--
-- * 'rbslRegion'
--
-- * 'rbslPageToken'
--
-- * 'rbslMaxResults'
regionBackendServicesList
    :: Text -- ^ 'rbslProject'
    -> Text -- ^ 'rbslRegion'
    -> RegionBackendServicesList
regionBackendServicesList pRbslProject_ pRbslRegion_ =
  RegionBackendServicesList'
    { _rbslReturnPartialSuccess = Nothing
    , _rbslOrderBy = Nothing
    , _rbslProject = pRbslProject_
    , _rbslFilter = Nothing
    , _rbslRegion = pRbslRegion_
    , _rbslPageToken = Nothing
    , _rbslMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rbslReturnPartialSuccess :: Lens' RegionBackendServicesList (Maybe Bool)
rbslReturnPartialSuccess
  = lens _rbslReturnPartialSuccess
      (\ s a -> s{_rbslReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rbslOrderBy :: Lens' RegionBackendServicesList (Maybe Text)
rbslOrderBy
  = lens _rbslOrderBy (\ s a -> s{_rbslOrderBy = a})

-- | Project ID for this request.
rbslProject :: Lens' RegionBackendServicesList Text
rbslProject
  = lens _rbslProject (\ s a -> s{_rbslProject = a})

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
rbslFilter :: Lens' RegionBackendServicesList (Maybe Text)
rbslFilter
  = lens _rbslFilter (\ s a -> s{_rbslFilter = a})

-- | Name of the region scoping this request.
rbslRegion :: Lens' RegionBackendServicesList Text
rbslRegion
  = lens _rbslRegion (\ s a -> s{_rbslRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rbslPageToken :: Lens' RegionBackendServicesList (Maybe Text)
rbslPageToken
  = lens _rbslPageToken
      (\ s a -> s{_rbslPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rbslMaxResults :: Lens' RegionBackendServicesList Word32
rbslMaxResults
  = lens _rbslMaxResults
      (\ s a -> s{_rbslMaxResults = a})
      . _Coerce

instance GoogleRequest RegionBackendServicesList
         where
        type Rs RegionBackendServicesList =
             BackendServiceList
        type Scopes RegionBackendServicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionBackendServicesList'{..}
          = go _rbslProject _rbslRegion
              _rbslReturnPartialSuccess
              _rbslOrderBy
              _rbslFilter
              _rbslPageToken
              (Just _rbslMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesListResource)
                      mempty
