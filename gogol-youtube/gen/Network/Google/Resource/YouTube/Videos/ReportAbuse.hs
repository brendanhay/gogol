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
-- Module      : Network.Google.Resource.YouTube.Videos.ReportAbuse
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report abuse for a video.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.reportAbuse@.
module Network.Google.Resource.YouTube.Videos.ReportAbuse
    (
    -- * REST Resource
      VideosReportAbuseResource

    -- * Creating a Request
    , videosReportAbuse
    , VideosReportAbuse

    -- * Request Lenses
    , vraXgafv
    , vraUploadProtocol
    , vraAccessToken
    , vraUploadType
    , vraPayload
    , vraOnBehalfOfContentOwner
    , vraCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.reportAbuse@ method which the
-- 'VideosReportAbuse' request conforms to.
type VideosReportAbuseResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           "reportAbuse" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] VideoAbuseReport :> Post '[JSON] ()

-- | Report abuse for a video.
--
-- /See:/ 'videosReportAbuse' smart constructor.
data VideosReportAbuse =
  VideosReportAbuse'
    { _vraXgafv :: !(Maybe Xgafv)
    , _vraUploadProtocol :: !(Maybe Text)
    , _vraAccessToken :: !(Maybe Text)
    , _vraUploadType :: !(Maybe Text)
    , _vraPayload :: !VideoAbuseReport
    , _vraOnBehalfOfContentOwner :: !(Maybe Text)
    , _vraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosReportAbuse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vraXgafv'
--
-- * 'vraUploadProtocol'
--
-- * 'vraAccessToken'
--
-- * 'vraUploadType'
--
-- * 'vraPayload'
--
-- * 'vraOnBehalfOfContentOwner'
--
-- * 'vraCallback'
videosReportAbuse
    :: VideoAbuseReport -- ^ 'vraPayload'
    -> VideosReportAbuse
videosReportAbuse pVraPayload_ =
  VideosReportAbuse'
    { _vraXgafv = Nothing
    , _vraUploadProtocol = Nothing
    , _vraAccessToken = Nothing
    , _vraUploadType = Nothing
    , _vraPayload = pVraPayload_
    , _vraOnBehalfOfContentOwner = Nothing
    , _vraCallback = Nothing
    }


-- | V1 error format.
vraXgafv :: Lens' VideosReportAbuse (Maybe Xgafv)
vraXgafv = lens _vraXgafv (\ s a -> s{_vraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vraUploadProtocol :: Lens' VideosReportAbuse (Maybe Text)
vraUploadProtocol
  = lens _vraUploadProtocol
      (\ s a -> s{_vraUploadProtocol = a})

-- | OAuth access token.
vraAccessToken :: Lens' VideosReportAbuse (Maybe Text)
vraAccessToken
  = lens _vraAccessToken
      (\ s a -> s{_vraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vraUploadType :: Lens' VideosReportAbuse (Maybe Text)
vraUploadType
  = lens _vraUploadType
      (\ s a -> s{_vraUploadType = a})

-- | Multipart request metadata.
vraPayload :: Lens' VideosReportAbuse VideoAbuseReport
vraPayload
  = lens _vraPayload (\ s a -> s{_vraPayload = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
vraOnBehalfOfContentOwner :: Lens' VideosReportAbuse (Maybe Text)
vraOnBehalfOfContentOwner
  = lens _vraOnBehalfOfContentOwner
      (\ s a -> s{_vraOnBehalfOfContentOwner = a})

-- | JSONP
vraCallback :: Lens' VideosReportAbuse (Maybe Text)
vraCallback
  = lens _vraCallback (\ s a -> s{_vraCallback = a})

instance GoogleRequest VideosReportAbuse where
        type Rs VideosReportAbuse = ()
        type Scopes VideosReportAbuse =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosReportAbuse'{..}
          = go _vraXgafv _vraUploadProtocol _vraAccessToken
              _vraUploadType
              _vraOnBehalfOfContentOwner
              _vraCallback
              (Just AltJSON)
              _vraPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy VideosReportAbuseResource)
                      mempty
