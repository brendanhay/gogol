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
-- Module      : Network.Google.Resource.ResourceViews.ZoneViews.ListResources
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the resources of the resource view.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference> for @resourceviews.zoneViews.listResources@.
module Network.Google.Resource.ResourceViews.ZoneViews.ListResources
    (
    -- * REST Resource
      ZoneViewsListResourcesResource

    -- * Creating a Request
    , zoneViewsListResources
    , ZoneViewsListResources

    -- * Request Lenses
    , zvlrResourceView
    , zvlrListState
    , zvlrProject
    , zvlrFormat
    , zvlrZone
    , zvlrServiceName
    , zvlrPageToken
    , zvlrMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types

-- | A resource alias for @resourceviews.zoneViews.listResources@ method which the
-- 'ZoneViewsListResources' request conforms to.
type ZoneViewsListResourcesResource =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "resources" :>
                       QueryParam "listState"
                         ZoneViewsListResourcesListState
                         :>
                         QueryParam "format" ZoneViewsListResourcesFormat :>
                           QueryParam "serviceName" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ZoneViewsListResourcesResponse

-- | List the resources of the resource view.
--
-- /See:/ 'zoneViewsListResources' smart constructor.
data ZoneViewsListResources = ZoneViewsListResources
    { _zvlrResourceView :: !Text
    , _zvlrListState    :: !ZoneViewsListResourcesListState
    , _zvlrProject      :: !Text
    , _zvlrFormat       :: !(Maybe ZoneViewsListResourcesFormat)
    , _zvlrZone         :: !Text
    , _zvlrServiceName  :: !(Maybe Text)
    , _zvlrPageToken    :: !(Maybe Text)
    , _zvlrMaxResults   :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsListResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlrResourceView'
--
-- * 'zvlrListState'
--
-- * 'zvlrProject'
--
-- * 'zvlrFormat'
--
-- * 'zvlrZone'
--
-- * 'zvlrServiceName'
--
-- * 'zvlrPageToken'
--
-- * 'zvlrMaxResults'
zoneViewsListResources
    :: Text -- ^ 'zvlrResourceView'
    -> Text -- ^ 'zvlrProject'
    -> Text -- ^ 'zvlrZone'
    -> ZoneViewsListResources
zoneViewsListResources pZvlrResourceView_ pZvlrProject_ pZvlrZone_ =
    ZoneViewsListResources
    { _zvlrResourceView = pZvlrResourceView_
    , _zvlrListState = All
    , _zvlrProject = pZvlrProject_
    , _zvlrFormat = Nothing
    , _zvlrZone = pZvlrZone_
    , _zvlrServiceName = Nothing
    , _zvlrPageToken = Nothing
    , _zvlrMaxResults = 5000
    }

-- | The name of the resource view.
zvlrResourceView :: Lens' ZoneViewsListResources Text
zvlrResourceView
  = lens _zvlrResourceView
      (\ s a -> s{_zvlrResourceView = a})

-- | The state of the instance to list. By default, it lists all instances.
zvlrListState :: Lens' ZoneViewsListResources ZoneViewsListResourcesListState
zvlrListState
  = lens _zvlrListState
      (\ s a -> s{_zvlrListState = a})

-- | The project name of the resource view.
zvlrProject :: Lens' ZoneViewsListResources Text
zvlrProject
  = lens _zvlrProject (\ s a -> s{_zvlrProject = a})

-- | The requested format of the return value. It can be URL or URL_PORT. A
-- JSON object will be included in the response based on the format. The
-- default format is NONE, which results in no JSON in the response.
zvlrFormat :: Lens' ZoneViewsListResources (Maybe ZoneViewsListResourcesFormat)
zvlrFormat
  = lens _zvlrFormat (\ s a -> s{_zvlrFormat = a})

-- | The zone name of the resource view.
zvlrZone :: Lens' ZoneViewsListResources Text
zvlrZone = lens _zvlrZone (\ s a -> s{_zvlrZone = a})

-- | The service name to return in the response. It is optional and if it is
-- not set, all the service end points will be returned.
zvlrServiceName :: Lens' ZoneViewsListResources (Maybe Text)
zvlrServiceName
  = lens _zvlrServiceName
      (\ s a -> s{_zvlrServiceName = a})

-- | Specifies a nextPageToken returned by a previous list request. This
-- token can be used to request the next page of results from a previous
-- list request.
zvlrPageToken :: Lens' ZoneViewsListResources (Maybe Text)
zvlrPageToken
  = lens _zvlrPageToken
      (\ s a -> s{_zvlrPageToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to
-- 5000, inclusive. (Default: 5000)
zvlrMaxResults :: Lens' ZoneViewsListResources Int32
zvlrMaxResults
  = lens _zvlrMaxResults
      (\ s a -> s{_zvlrMaxResults = a})
      . _Coerce

instance GoogleRequest ZoneViewsListResources where
        type Rs ZoneViewsListResources =
             ZoneViewsListResourcesResponse
        type Scopes ZoneViewsListResources =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient ZoneViewsListResources{..}
          = go _zvlrProject _zvlrZone _zvlrResourceView
              (Just _zvlrListState)
              _zvlrFormat
              _zvlrServiceName
              _zvlrPageToken
              (Just _zvlrMaxResults)
              (Just AltJSON)
              resourceViewsService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneViewsListResourcesResource)
                      mempty
