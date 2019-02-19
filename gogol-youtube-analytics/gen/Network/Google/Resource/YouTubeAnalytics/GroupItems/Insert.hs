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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group item.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.insert@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
    (
    -- * REST Resource
      GroupItemsInsertResource

    -- * Creating a Request
    , groupItemsInsert
    , GroupItemsInsert

    -- * Request Lenses
    , giiXgafv
    , giiUploadProtocol
    , giiAccessToken
    , giiUploadType
    , giiPayload
    , giiOnBehalfOfContentOwner
    , giiCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.insert@ method which the
-- 'GroupItemsInsert' request conforms to.
type GroupItemsInsertResource =
     "v2" :>
       "groupItems" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GroupItem :> Post '[JSON] GroupItem

-- | Creates a group item.
--
-- /See:/ 'groupItemsInsert' smart constructor.
data GroupItemsInsert =
  GroupItemsInsert'
    { _giiXgafv                  :: !(Maybe Xgafv)
    , _giiUploadProtocol         :: !(Maybe Text)
    , _giiAccessToken            :: !(Maybe Text)
    , _giiUploadType             :: !(Maybe Text)
    , _giiPayload                :: !GroupItem
    , _giiOnBehalfOfContentOwner :: !(Maybe Text)
    , _giiCallback               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupItemsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giiXgafv'
--
-- * 'giiUploadProtocol'
--
-- * 'giiAccessToken'
--
-- * 'giiUploadType'
--
-- * 'giiPayload'
--
-- * 'giiOnBehalfOfContentOwner'
--
-- * 'giiCallback'
groupItemsInsert
    :: GroupItem -- ^ 'giiPayload'
    -> GroupItemsInsert
groupItemsInsert pGiiPayload_ =
  GroupItemsInsert'
    { _giiXgafv = Nothing
    , _giiUploadProtocol = Nothing
    , _giiAccessToken = Nothing
    , _giiUploadType = Nothing
    , _giiPayload = pGiiPayload_
    , _giiOnBehalfOfContentOwner = Nothing
    , _giiCallback = Nothing
    }


-- | V1 error format.
giiXgafv :: Lens' GroupItemsInsert (Maybe Xgafv)
giiXgafv = lens _giiXgafv (\ s a -> s{_giiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
giiUploadProtocol :: Lens' GroupItemsInsert (Maybe Text)
giiUploadProtocol
  = lens _giiUploadProtocol
      (\ s a -> s{_giiUploadProtocol = a})

-- | OAuth access token.
giiAccessToken :: Lens' GroupItemsInsert (Maybe Text)
giiAccessToken
  = lens _giiAccessToken
      (\ s a -> s{_giiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
giiUploadType :: Lens' GroupItemsInsert (Maybe Text)
giiUploadType
  = lens _giiUploadType
      (\ s a -> s{_giiUploadType = a})

-- | Multipart request metadata.
giiPayload :: Lens' GroupItemsInsert GroupItem
giiPayload
  = lens _giiPayload (\ s a -> s{_giiPayload = a})

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
giiOnBehalfOfContentOwner :: Lens' GroupItemsInsert (Maybe Text)
giiOnBehalfOfContentOwner
  = lens _giiOnBehalfOfContentOwner
      (\ s a -> s{_giiOnBehalfOfContentOwner = a})

-- | JSONP
giiCallback :: Lens' GroupItemsInsert (Maybe Text)
giiCallback
  = lens _giiCallback (\ s a -> s{_giiCallback = a})

instance GoogleRequest GroupItemsInsert where
        type Rs GroupItemsInsert = GroupItem
        type Scopes GroupItemsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupItemsInsert'{..}
          = go _giiXgafv _giiUploadProtocol _giiAccessToken
              _giiUploadType
              _giiOnBehalfOfContentOwner
              _giiCallback
              (Just AltJSON)
              _giiPayload
              youTubeAnalyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupItemsInsertResource)
                      mempty
