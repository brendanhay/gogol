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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a group.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groups.delete@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete
    , GroupsDelete

    -- * Request Lenses
    , gdXgafv
    , gdUploadProtocol
    , gdAccessToken
    , gdUploadType
    , gdOnBehalfOfContentOwner
    , gdId
    , gdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.delete@ method which the
-- 'GroupsDelete' request conforms to.
type GroupsDeleteResource =
     "v2" :>
       "groups" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "id" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Delete '[JSON] EmptyResponse

-- | Deletes a group.
--
-- /See:/ 'groupsDelete' smart constructor.
data GroupsDelete =
  GroupsDelete'
    { _gdXgafv :: !(Maybe Xgafv)
    , _gdUploadProtocol :: !(Maybe Text)
    , _gdAccessToken :: !(Maybe Text)
    , _gdUploadType :: !(Maybe Text)
    , _gdOnBehalfOfContentOwner :: !(Maybe Text)
    , _gdId :: !(Maybe Text)
    , _gdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdXgafv'
--
-- * 'gdUploadProtocol'
--
-- * 'gdAccessToken'
--
-- * 'gdUploadType'
--
-- * 'gdOnBehalfOfContentOwner'
--
-- * 'gdId'
--
-- * 'gdCallback'
groupsDelete
    :: GroupsDelete
groupsDelete =
  GroupsDelete'
    { _gdXgafv = Nothing
    , _gdUploadProtocol = Nothing
    , _gdAccessToken = Nothing
    , _gdUploadType = Nothing
    , _gdOnBehalfOfContentOwner = Nothing
    , _gdId = Nothing
    , _gdCallback = Nothing
    }


-- | V1 error format.
gdXgafv :: Lens' GroupsDelete (Maybe Xgafv)
gdXgafv = lens _gdXgafv (\ s a -> s{_gdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gdUploadProtocol :: Lens' GroupsDelete (Maybe Text)
gdUploadProtocol
  = lens _gdUploadProtocol
      (\ s a -> s{_gdUploadProtocol = a})

-- | OAuth access token.
gdAccessToken :: Lens' GroupsDelete (Maybe Text)
gdAccessToken
  = lens _gdAccessToken
      (\ s a -> s{_gdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gdUploadType :: Lens' GroupsDelete (Maybe Text)
gdUploadType
  = lens _gdUploadType (\ s a -> s{_gdUploadType = a})

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
gdOnBehalfOfContentOwner :: Lens' GroupsDelete (Maybe Text)
gdOnBehalfOfContentOwner
  = lens _gdOnBehalfOfContentOwner
      (\ s a -> s{_gdOnBehalfOfContentOwner = a})

-- | The \`id\` parameter specifies the YouTube group ID of the group that is
-- being deleted.
gdId :: Lens' GroupsDelete (Maybe Text)
gdId = lens _gdId (\ s a -> s{_gdId = a})

-- | JSONP
gdCallback :: Lens' GroupsDelete (Maybe Text)
gdCallback
  = lens _gdCallback (\ s a -> s{_gdCallback = a})

instance GoogleRequest GroupsDelete where
        type Rs GroupsDelete = EmptyResponse
        type Scopes GroupsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupsDelete'{..}
          = go _gdXgafv _gdUploadProtocol _gdAccessToken
              _gdUploadType
              _gdOnBehalfOfContentOwner
              _gdId
              _gdCallback
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsDeleteResource)
                      mempty
