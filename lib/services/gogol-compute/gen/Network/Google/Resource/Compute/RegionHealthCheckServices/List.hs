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
-- Module      : Network.Google.Resource.Compute.RegionHealthCheckServices.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the HealthCheckService resources that have been configured for
-- the specified project in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthCheckServices.list@.
module Network.Google.Resource.Compute.RegionHealthCheckServices.List
    (
    -- * REST Resource
      RegionHealthCheckServicesListResource

    -- * Creating a Request
    , regionHealthCheckServicesList
    , RegionHealthCheckServicesList

    -- * Request Lenses
    , rhcslReturnPartialSuccess
    , rhcslOrderBy
    , rhcslProject
    , rhcslFilter
    , rhcslRegion
    , rhcslPageToken
    , rhcslMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthCheckServices.list@ method which the
-- 'RegionHealthCheckServicesList' request conforms to.
type RegionHealthCheckServicesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthCheckServices" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] HealthCheckServicesList

-- | Lists all the HealthCheckService resources that have been configured for
-- the specified project in the given region.
--
-- /See:/ 'regionHealthCheckServicesList' smart constructor.
data RegionHealthCheckServicesList =
  RegionHealthCheckServicesList'
    { _rhcslReturnPartialSuccess :: !(Maybe Bool)
    , _rhcslOrderBy :: !(Maybe Text)
    , _rhcslProject :: !Text
    , _rhcslFilter :: !(Maybe Text)
    , _rhcslRegion :: !Text
    , _rhcslPageToken :: !(Maybe Text)
    , _rhcslMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthCheckServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcslReturnPartialSuccess'
--
-- * 'rhcslOrderBy'
--
-- * 'rhcslProject'
--
-- * 'rhcslFilter'
--
-- * 'rhcslRegion'
--
-- * 'rhcslPageToken'
--
-- * 'rhcslMaxResults'
regionHealthCheckServicesList
    :: Text -- ^ 'rhcslProject'
    -> Text -- ^ 'rhcslRegion'
    -> RegionHealthCheckServicesList
regionHealthCheckServicesList pRhcslProject_ pRhcslRegion_ =
  RegionHealthCheckServicesList'
    { _rhcslReturnPartialSuccess = Nothing
    , _rhcslOrderBy = Nothing
    , _rhcslProject = pRhcslProject_
    , _rhcslFilter = Nothing
    , _rhcslRegion = pRhcslRegion_
    , _rhcslPageToken = Nothing
    , _rhcslMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rhcslReturnPartialSuccess :: Lens' RegionHealthCheckServicesList (Maybe Bool)
rhcslReturnPartialSuccess
  = lens _rhcslReturnPartialSuccess
      (\ s a -> s{_rhcslReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rhcslOrderBy :: Lens' RegionHealthCheckServicesList (Maybe Text)
rhcslOrderBy
  = lens _rhcslOrderBy (\ s a -> s{_rhcslOrderBy = a})

-- | Project ID for this request.
rhcslProject :: Lens' RegionHealthCheckServicesList Text
rhcslProject
  = lens _rhcslProject (\ s a -> s{_rhcslProject = a})

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
rhcslFilter :: Lens' RegionHealthCheckServicesList (Maybe Text)
rhcslFilter
  = lens _rhcslFilter (\ s a -> s{_rhcslFilter = a})

-- | Name of the region scoping this request.
rhcslRegion :: Lens' RegionHealthCheckServicesList Text
rhcslRegion
  = lens _rhcslRegion (\ s a -> s{_rhcslRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rhcslPageToken :: Lens' RegionHealthCheckServicesList (Maybe Text)
rhcslPageToken
  = lens _rhcslPageToken
      (\ s a -> s{_rhcslPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rhcslMaxResults :: Lens' RegionHealthCheckServicesList Word32
rhcslMaxResults
  = lens _rhcslMaxResults
      (\ s a -> s{_rhcslMaxResults = a})
      . _Coerce

instance GoogleRequest RegionHealthCheckServicesList
         where
        type Rs RegionHealthCheckServicesList =
             HealthCheckServicesList
        type Scopes RegionHealthCheckServicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionHealthCheckServicesList'{..}
          = go _rhcslProject _rhcslRegion
              _rhcslReturnPartialSuccess
              _rhcslOrderBy
              _rhcslFilter
              _rhcslPageToken
              (Just _rhcslMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionHealthCheckServicesListResource)
                      mempty
