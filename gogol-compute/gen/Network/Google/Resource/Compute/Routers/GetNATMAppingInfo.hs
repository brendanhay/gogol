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
-- Module      : Network.Google.Resource.Compute.Routers.GetNATMAppingInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves runtime Nat mapping information of VM endpoints.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.getNatMappingInfo@.
module Network.Google.Resource.Compute.Routers.GetNATMAppingInfo
    (
    -- * REST Resource
      RoutersGetNATMAppingInfoResource

    -- * Creating a Request
    , routersGetNATMAppingInfo
    , RoutersGetNATMAppingInfo

    -- * Request Lenses
    , rgnatmaiOrderBy
    , rgnatmaiProject
    , rgnatmaiRouter
    , rgnatmaiFilter
    , rgnatmaiRegion
    , rgnatmaiPageToken
    , rgnatmaiMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.getNatMappingInfo@ method which the
-- 'RoutersGetNATMAppingInfo' request conforms to.
type RoutersGetNATMAppingInfoResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "routers" :>
                   Capture "router" Text :>
                     "getNatMappingInfo" :>
                       QueryParam "orderBy" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] VMEndpointNATMAppingsList

-- | Retrieves runtime Nat mapping information of VM endpoints.
--
-- /See:/ 'routersGetNATMAppingInfo' smart constructor.
data RoutersGetNATMAppingInfo = RoutersGetNATMAppingInfo'
    { _rgnatmaiOrderBy    :: !(Maybe Text)
    , _rgnatmaiProject    :: !Text
    , _rgnatmaiRouter     :: !Text
    , _rgnatmaiFilter     :: !(Maybe Text)
    , _rgnatmaiRegion     :: !Text
    , _rgnatmaiPageToken  :: !(Maybe Text)
    , _rgnatmaiMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersGetNATMAppingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgnatmaiOrderBy'
--
-- * 'rgnatmaiProject'
--
-- * 'rgnatmaiRouter'
--
-- * 'rgnatmaiFilter'
--
-- * 'rgnatmaiRegion'
--
-- * 'rgnatmaiPageToken'
--
-- * 'rgnatmaiMaxResults'
routersGetNATMAppingInfo
    :: Text -- ^ 'rgnatmaiProject'
    -> Text -- ^ 'rgnatmaiRouter'
    -> Text -- ^ 'rgnatmaiRegion'
    -> RoutersGetNATMAppingInfo
routersGetNATMAppingInfo pRgnatmaiProject_ pRgnatmaiRouter_ pRgnatmaiRegion_ =
    RoutersGetNATMAppingInfo'
    { _rgnatmaiOrderBy = Nothing
    , _rgnatmaiProject = pRgnatmaiProject_
    , _rgnatmaiRouter = pRgnatmaiRouter_
    , _rgnatmaiFilter = Nothing
    , _rgnatmaiRegion = pRgnatmaiRegion_
    , _rgnatmaiPageToken = Nothing
    , _rgnatmaiMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rgnatmaiOrderBy :: Lens' RoutersGetNATMAppingInfo (Maybe Text)
rgnatmaiOrderBy
  = lens _rgnatmaiOrderBy
      (\ s a -> s{_rgnatmaiOrderBy = a})

-- | Project ID for this request.
rgnatmaiProject :: Lens' RoutersGetNATMAppingInfo Text
rgnatmaiProject
  = lens _rgnatmaiProject
      (\ s a -> s{_rgnatmaiProject = a})

-- | Name of the Router resource to query for Nat Mapping information of VM
-- endpoints.
rgnatmaiRouter :: Lens' RoutersGetNATMAppingInfo Text
rgnatmaiRouter
  = lens _rgnatmaiRouter
      (\ s a -> s{_rgnatmaiRouter = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
rgnatmaiFilter :: Lens' RoutersGetNATMAppingInfo (Maybe Text)
rgnatmaiFilter
  = lens _rgnatmaiFilter
      (\ s a -> s{_rgnatmaiFilter = a})

-- | Name of the region for this request.
rgnatmaiRegion :: Lens' RoutersGetNATMAppingInfo Text
rgnatmaiRegion
  = lens _rgnatmaiRegion
      (\ s a -> s{_rgnatmaiRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rgnatmaiPageToken :: Lens' RoutersGetNATMAppingInfo (Maybe Text)
rgnatmaiPageToken
  = lens _rgnatmaiPageToken
      (\ s a -> s{_rgnatmaiPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rgnatmaiMaxResults :: Lens' RoutersGetNATMAppingInfo Word32
rgnatmaiMaxResults
  = lens _rgnatmaiMaxResults
      (\ s a -> s{_rgnatmaiMaxResults = a})
      . _Coerce

instance GoogleRequest RoutersGetNATMAppingInfo where
        type Rs RoutersGetNATMAppingInfo =
             VMEndpointNATMAppingsList
        type Scopes RoutersGetNATMAppingInfo =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersGetNATMAppingInfo'{..}
          = go _rgnatmaiProject _rgnatmaiRegion _rgnatmaiRouter
              _rgnatmaiOrderBy
              _rgnatmaiFilter
              _rgnatmaiPageToken
              (Just _rgnatmaiMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RoutersGetNATMAppingInfoResource)
                      mempty
