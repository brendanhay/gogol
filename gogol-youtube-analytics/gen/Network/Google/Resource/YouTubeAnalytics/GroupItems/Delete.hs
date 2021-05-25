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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an item from a group.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.delete@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
    (
    -- * REST Resource
      GroupItemsDeleteResource

    -- * Creating a Request
    , groupItemsDelete
    , GroupItemsDelete

    -- * Request Lenses
    , gidXgafv
    , gidUploadProtocol
    , gidAccessToken
    , gidUploadType
    , gidOnBehalfOfContentOwner
    , gidId
    , gidCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.delete@ method which the
-- 'GroupItemsDelete' request conforms to.
type GroupItemsDeleteResource =
     "v2" :>
       "groupItems" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "id" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Delete '[JSON] EmptyResponse

-- | Removes an item from a group.
--
-- /See:/ 'groupItemsDelete' smart constructor.
data GroupItemsDelete =
  GroupItemsDelete'
    { _gidXgafv :: !(Maybe Xgafv)
    , _gidUploadProtocol :: !(Maybe Text)
    , _gidAccessToken :: !(Maybe Text)
    , _gidUploadType :: !(Maybe Text)
    , _gidOnBehalfOfContentOwner :: !(Maybe Text)
    , _gidId :: !(Maybe Text)
    , _gidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupItemsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gidXgafv'
--
-- * 'gidUploadProtocol'
--
-- * 'gidAccessToken'
--
-- * 'gidUploadType'
--
-- * 'gidOnBehalfOfContentOwner'
--
-- * 'gidId'
--
-- * 'gidCallback'
groupItemsDelete
    :: GroupItemsDelete
groupItemsDelete =
  GroupItemsDelete'
    { _gidXgafv = Nothing
    , _gidUploadProtocol = Nothing
    , _gidAccessToken = Nothing
    , _gidUploadType = Nothing
    , _gidOnBehalfOfContentOwner = Nothing
    , _gidId = Nothing
    , _gidCallback = Nothing
    }


-- | V1 error format.
gidXgafv :: Lens' GroupItemsDelete (Maybe Xgafv)
gidXgafv = lens _gidXgafv (\ s a -> s{_gidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gidUploadProtocol :: Lens' GroupItemsDelete (Maybe Text)
gidUploadProtocol
  = lens _gidUploadProtocol
      (\ s a -> s{_gidUploadProtocol = a})

-- | OAuth access token.
gidAccessToken :: Lens' GroupItemsDelete (Maybe Text)
gidAccessToken
  = lens _gidAccessToken
      (\ s a -> s{_gidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gidUploadType :: Lens' GroupItemsDelete (Maybe Text)
gidUploadType
  = lens _gidUploadType
      (\ s a -> s{_gidUploadType = a})

-- | This parameter can only be used in a properly authorized request.
-- **Note:** This parameter is intended exclusively for YouTube content
-- partners that own and manage many different YouTube channels. The
-- \`onBehalfOfContentOwner\` parameter indicates that the request\'s
-- authorization credentials identify a YouTube user who is acting on
-- behalf of the content owner specified in the parameter value. It allows
-- content owners to authenticate once and get access to all their video
-- and channel data, without having to provide authentication credentials
-- for each individual channel. The account that the user authenticates
-- with must be linked to the specified YouTube content owner.
gidOnBehalfOfContentOwner :: Lens' GroupItemsDelete (Maybe Text)
gidOnBehalfOfContentOwner
  = lens _gidOnBehalfOfContentOwner
      (\ s a -> s{_gidOnBehalfOfContentOwner = a})

-- | The \`id\` parameter specifies the YouTube group item ID of the group
-- item that is being deleted.
gidId :: Lens' GroupItemsDelete (Maybe Text)
gidId = lens _gidId (\ s a -> s{_gidId = a})

-- | JSONP
gidCallback :: Lens' GroupItemsDelete (Maybe Text)
gidCallback
  = lens _gidCallback (\ s a -> s{_gidCallback = a})

instance GoogleRequest GroupItemsDelete where
        type Rs GroupItemsDelete = EmptyResponse
        type Scopes GroupItemsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupItemsDelete'{..}
          = go _gidXgafv _gidUploadProtocol _gidAccessToken
              _gidUploadType
              _gidOnBehalfOfContentOwner
              _gidId
              _gidCallback
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupItemsDeleteResource)
                      mempty
