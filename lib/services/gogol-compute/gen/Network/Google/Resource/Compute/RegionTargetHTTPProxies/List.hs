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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPProxies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetHttpProxy resources available to the
-- specified project in the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpProxies.list@.
module Network.Google.Resource.Compute.RegionTargetHTTPProxies.List
    (
    -- * REST Resource
      RegionTargetHTTPProxiesListResource

    -- * Creating a Request
    , regionTargetHTTPProxiesList
    , RegionTargetHTTPProxiesList

    -- * Request Lenses
    , rthttpplReturnPartialSuccess
    , rthttpplOrderBy
    , rthttpplProject
    , rthttpplFilter
    , rthttpplRegion
    , rthttpplPageToken
    , rthttpplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpProxies.list@ method which the
-- 'RegionTargetHTTPProxiesList' request conforms to.
type RegionTargetHTTPProxiesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpProxies" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetHTTPProxyList

-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project in the specified region.
--
-- /See:/ 'regionTargetHTTPProxiesList' smart constructor.
data RegionTargetHTTPProxiesList =
  RegionTargetHTTPProxiesList'
    { _rthttpplReturnPartialSuccess :: !(Maybe Bool)
    , _rthttpplOrderBy :: !(Maybe Text)
    , _rthttpplProject :: !Text
    , _rthttpplFilter :: !(Maybe Text)
    , _rthttpplRegion :: !Text
    , _rthttpplPageToken :: !(Maybe Text)
    , _rthttpplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPProxiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthttpplReturnPartialSuccess'
--
-- * 'rthttpplOrderBy'
--
-- * 'rthttpplProject'
--
-- * 'rthttpplFilter'
--
-- * 'rthttpplRegion'
--
-- * 'rthttpplPageToken'
--
-- * 'rthttpplMaxResults'
regionTargetHTTPProxiesList
    :: Text -- ^ 'rthttpplProject'
    -> Text -- ^ 'rthttpplRegion'
    -> RegionTargetHTTPProxiesList
regionTargetHTTPProxiesList pRthttpplProject_ pRthttpplRegion_ =
  RegionTargetHTTPProxiesList'
    { _rthttpplReturnPartialSuccess = Nothing
    , _rthttpplOrderBy = Nothing
    , _rthttpplProject = pRthttpplProject_
    , _rthttpplFilter = Nothing
    , _rthttpplRegion = pRthttpplRegion_
    , _rthttpplPageToken = Nothing
    , _rthttpplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rthttpplReturnPartialSuccess :: Lens' RegionTargetHTTPProxiesList (Maybe Bool)
rthttpplReturnPartialSuccess
  = lens _rthttpplReturnPartialSuccess
      (\ s a -> s{_rthttpplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rthttpplOrderBy :: Lens' RegionTargetHTTPProxiesList (Maybe Text)
rthttpplOrderBy
  = lens _rthttpplOrderBy
      (\ s a -> s{_rthttpplOrderBy = a})

-- | Project ID for this request.
rthttpplProject :: Lens' RegionTargetHTTPProxiesList Text
rthttpplProject
  = lens _rthttpplProject
      (\ s a -> s{_rthttpplProject = a})

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
rthttpplFilter :: Lens' RegionTargetHTTPProxiesList (Maybe Text)
rthttpplFilter
  = lens _rthttpplFilter
      (\ s a -> s{_rthttpplFilter = a})

-- | Name of the region scoping this request.
rthttpplRegion :: Lens' RegionTargetHTTPProxiesList Text
rthttpplRegion
  = lens _rthttpplRegion
      (\ s a -> s{_rthttpplRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rthttpplPageToken :: Lens' RegionTargetHTTPProxiesList (Maybe Text)
rthttpplPageToken
  = lens _rthttpplPageToken
      (\ s a -> s{_rthttpplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rthttpplMaxResults :: Lens' RegionTargetHTTPProxiesList Word32
rthttpplMaxResults
  = lens _rthttpplMaxResults
      (\ s a -> s{_rthttpplMaxResults = a})
      . _Coerce

instance GoogleRequest RegionTargetHTTPProxiesList
         where
        type Rs RegionTargetHTTPProxiesList =
             TargetHTTPProxyList
        type Scopes RegionTargetHTTPProxiesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionTargetHTTPProxiesList'{..}
          = go _rthttpplProject _rthttpplRegion
              _rthttpplReturnPartialSuccess
              _rthttpplOrderBy
              _rthttpplFilter
              _rthttpplPageToken
              (Just _rthttpplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionTargetHTTPProxiesListResource)
                      mempty
