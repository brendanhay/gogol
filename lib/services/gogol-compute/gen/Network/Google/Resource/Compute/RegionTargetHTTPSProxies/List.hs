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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPSProxies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetHttpsProxy resources available to the
-- specified project in the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpsProxies.list@.
module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.List
    (
    -- * REST Resource
      RegionTargetHTTPSProxiesListResource

    -- * Creating a Request
    , regionTargetHTTPSProxiesList
    , RegionTargetHTTPSProxiesList

    -- * Request Lenses
    , rthplReturnPartialSuccess
    , rthplOrderBy
    , rthplProject
    , rthplFilter
    , rthplRegion
    , rthplPageToken
    , rthplMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpsProxies.list@ method which the
-- 'RegionTargetHTTPSProxiesList' request conforms to.
type RegionTargetHTTPSProxiesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpsProxies" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetHTTPSProxyList

-- | Retrieves the list of TargetHttpsProxy resources available to the
-- specified project in the specified region.
--
-- /See:/ 'regionTargetHTTPSProxiesList' smart constructor.
data RegionTargetHTTPSProxiesList =
  RegionTargetHTTPSProxiesList'
    { _rthplReturnPartialSuccess :: !(Maybe Bool)
    , _rthplOrderBy :: !(Maybe Text)
    , _rthplProject :: !Text
    , _rthplFilter :: !(Maybe Text)
    , _rthplRegion :: !Text
    , _rthplPageToken :: !(Maybe Text)
    , _rthplMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPSProxiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthplReturnPartialSuccess'
--
-- * 'rthplOrderBy'
--
-- * 'rthplProject'
--
-- * 'rthplFilter'
--
-- * 'rthplRegion'
--
-- * 'rthplPageToken'
--
-- * 'rthplMaxResults'
regionTargetHTTPSProxiesList
    :: Text -- ^ 'rthplProject'
    -> Text -- ^ 'rthplRegion'
    -> RegionTargetHTTPSProxiesList
regionTargetHTTPSProxiesList pRthplProject_ pRthplRegion_ =
  RegionTargetHTTPSProxiesList'
    { _rthplReturnPartialSuccess = Nothing
    , _rthplOrderBy = Nothing
    , _rthplProject = pRthplProject_
    , _rthplFilter = Nothing
    , _rthplRegion = pRthplRegion_
    , _rthplPageToken = Nothing
    , _rthplMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rthplReturnPartialSuccess :: Lens' RegionTargetHTTPSProxiesList (Maybe Bool)
rthplReturnPartialSuccess
  = lens _rthplReturnPartialSuccess
      (\ s a -> s{_rthplReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rthplOrderBy :: Lens' RegionTargetHTTPSProxiesList (Maybe Text)
rthplOrderBy
  = lens _rthplOrderBy (\ s a -> s{_rthplOrderBy = a})

-- | Project ID for this request.
rthplProject :: Lens' RegionTargetHTTPSProxiesList Text
rthplProject
  = lens _rthplProject (\ s a -> s{_rthplProject = a})

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
rthplFilter :: Lens' RegionTargetHTTPSProxiesList (Maybe Text)
rthplFilter
  = lens _rthplFilter (\ s a -> s{_rthplFilter = a})

-- | Name of the region scoping this request.
rthplRegion :: Lens' RegionTargetHTTPSProxiesList Text
rthplRegion
  = lens _rthplRegion (\ s a -> s{_rthplRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rthplPageToken :: Lens' RegionTargetHTTPSProxiesList (Maybe Text)
rthplPageToken
  = lens _rthplPageToken
      (\ s a -> s{_rthplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rthplMaxResults :: Lens' RegionTargetHTTPSProxiesList Word32
rthplMaxResults
  = lens _rthplMaxResults
      (\ s a -> s{_rthplMaxResults = a})
      . _Coerce

instance GoogleRequest RegionTargetHTTPSProxiesList
         where
        type Rs RegionTargetHTTPSProxiesList =
             TargetHTTPSProxyList
        type Scopes RegionTargetHTTPSProxiesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionTargetHTTPSProxiesList'{..}
          = go _rthplProject _rthplRegion
              _rthplReturnPartialSuccess
              _rthplOrderBy
              _rthplFilter
              _rthplPageToken
              (Just _rthplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionTargetHTTPSProxiesListResource)
                      mempty
