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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groups.update@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate
    , GroupsUpdate

    -- * Request Lenses
    , guXgafv
    , guUploadProtocol
    , guAccessToken
    , guUploadType
    , guPayload
    , guOnBehalfOfContentOwner
    , guCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.update@ method which the
-- 'GroupsUpdate' request conforms to.
type GroupsUpdateResource =
     "v2" :>
       "groups" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ 'groupsUpdate' smart constructor.
data GroupsUpdate =
  GroupsUpdate'
    { _guXgafv :: !(Maybe Xgafv)
    , _guUploadProtocol :: !(Maybe Text)
    , _guAccessToken :: !(Maybe Text)
    , _guUploadType :: !(Maybe Text)
    , _guPayload :: !Group
    , _guOnBehalfOfContentOwner :: !(Maybe Text)
    , _guCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guXgafv'
--
-- * 'guUploadProtocol'
--
-- * 'guAccessToken'
--
-- * 'guUploadType'
--
-- * 'guPayload'
--
-- * 'guOnBehalfOfContentOwner'
--
-- * 'guCallback'
groupsUpdate
    :: Group -- ^ 'guPayload'
    -> GroupsUpdate
groupsUpdate pGuPayload_ =
  GroupsUpdate'
    { _guXgafv = Nothing
    , _guUploadProtocol = Nothing
    , _guAccessToken = Nothing
    , _guUploadType = Nothing
    , _guPayload = pGuPayload_
    , _guOnBehalfOfContentOwner = Nothing
    , _guCallback = Nothing
    }


-- | V1 error format.
guXgafv :: Lens' GroupsUpdate (Maybe Xgafv)
guXgafv = lens _guXgafv (\ s a -> s{_guXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
guUploadProtocol :: Lens' GroupsUpdate (Maybe Text)
guUploadProtocol
  = lens _guUploadProtocol
      (\ s a -> s{_guUploadProtocol = a})

-- | OAuth access token.
guAccessToken :: Lens' GroupsUpdate (Maybe Text)
guAccessToken
  = lens _guAccessToken
      (\ s a -> s{_guAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
guUploadType :: Lens' GroupsUpdate (Maybe Text)
guUploadType
  = lens _guUploadType (\ s a -> s{_guUploadType = a})

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate Group
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

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
guOnBehalfOfContentOwner :: Lens' GroupsUpdate (Maybe Text)
guOnBehalfOfContentOwner
  = lens _guOnBehalfOfContentOwner
      (\ s a -> s{_guOnBehalfOfContentOwner = a})

-- | JSONP
guCallback :: Lens' GroupsUpdate (Maybe Text)
guCallback
  = lens _guCallback (\ s a -> s{_guCallback = a})

instance GoogleRequest GroupsUpdate where
        type Rs GroupsUpdate = Group
        type Scopes GroupsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupsUpdate'{..}
          = go _guXgafv _guUploadProtocol _guAccessToken
              _guUploadType
              _guOnBehalfOfContentOwner
              _guCallback
              (Just AltJSON)
              _guPayload
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsUpdateResource)
                      mempty
