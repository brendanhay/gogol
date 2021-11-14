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
-- Module      : Network.Google.Resource.Compute.RegionNotificationEndpoints.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the NotificationEndpoints for a project in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNotificationEndpoints.list@.
module Network.Google.Resource.Compute.RegionNotificationEndpoints.List
    (
    -- * REST Resource
      RegionNotificationEndpointsListResource

    -- * Creating a Request
    , regionNotificationEndpointsList
    , RegionNotificationEndpointsList

    -- * Request Lenses
    , rnelReturnPartialSuccess
    , rnelOrderBy
    , rnelProject
    , rnelFilter
    , rnelRegion
    , rnelPageToken
    , rnelMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNotificationEndpoints.list@ method which the
-- 'RegionNotificationEndpointsList' request conforms to.
type RegionNotificationEndpointsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "notificationEndpoints" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] NotificationEndpointList

-- | Lists the NotificationEndpoints for a project in the given region.
--
-- /See:/ 'regionNotificationEndpointsList' smart constructor.
data RegionNotificationEndpointsList =
  RegionNotificationEndpointsList'
    { _rnelReturnPartialSuccess :: !(Maybe Bool)
    , _rnelOrderBy :: !(Maybe Text)
    , _rnelProject :: !Text
    , _rnelFilter :: !(Maybe Text)
    , _rnelRegion :: !Text
    , _rnelPageToken :: !(Maybe Text)
    , _rnelMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNotificationEndpointsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnelReturnPartialSuccess'
--
-- * 'rnelOrderBy'
--
-- * 'rnelProject'
--
-- * 'rnelFilter'
--
-- * 'rnelRegion'
--
-- * 'rnelPageToken'
--
-- * 'rnelMaxResults'
regionNotificationEndpointsList
    :: Text -- ^ 'rnelProject'
    -> Text -- ^ 'rnelRegion'
    -> RegionNotificationEndpointsList
regionNotificationEndpointsList pRnelProject_ pRnelRegion_ =
  RegionNotificationEndpointsList'
    { _rnelReturnPartialSuccess = Nothing
    , _rnelOrderBy = Nothing
    , _rnelProject = pRnelProject_
    , _rnelFilter = Nothing
    , _rnelRegion = pRnelRegion_
    , _rnelPageToken = Nothing
    , _rnelMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rnelReturnPartialSuccess :: Lens' RegionNotificationEndpointsList (Maybe Bool)
rnelReturnPartialSuccess
  = lens _rnelReturnPartialSuccess
      (\ s a -> s{_rnelReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rnelOrderBy :: Lens' RegionNotificationEndpointsList (Maybe Text)
rnelOrderBy
  = lens _rnelOrderBy (\ s a -> s{_rnelOrderBy = a})

-- | Project ID for this request.
rnelProject :: Lens' RegionNotificationEndpointsList Text
rnelProject
  = lens _rnelProject (\ s a -> s{_rnelProject = a})

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
rnelFilter :: Lens' RegionNotificationEndpointsList (Maybe Text)
rnelFilter
  = lens _rnelFilter (\ s a -> s{_rnelFilter = a})

-- | Name of the region scoping this request.
rnelRegion :: Lens' RegionNotificationEndpointsList Text
rnelRegion
  = lens _rnelRegion (\ s a -> s{_rnelRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rnelPageToken :: Lens' RegionNotificationEndpointsList (Maybe Text)
rnelPageToken
  = lens _rnelPageToken
      (\ s a -> s{_rnelPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rnelMaxResults :: Lens' RegionNotificationEndpointsList Word32
rnelMaxResults
  = lens _rnelMaxResults
      (\ s a -> s{_rnelMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionNotificationEndpointsList
         where
        type Rs RegionNotificationEndpointsList =
             NotificationEndpointList
        type Scopes RegionNotificationEndpointsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionNotificationEndpointsList'{..}
          = go _rnelProject _rnelRegion
              _rnelReturnPartialSuccess
              _rnelOrderBy
              _rnelFilter
              _rnelPageToken
              (Just _rnelMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNotificationEndpointsListResource)
                      mempty
