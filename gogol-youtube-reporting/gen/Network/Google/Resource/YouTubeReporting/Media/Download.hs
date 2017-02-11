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
-- Module      : Network.Google.Resource.YouTubeReporting.Media.Download
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Method for media download. Download is supported on the URI
-- \`\/v1\/media\/{+name}?alt=media\`.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.media.download@.
module Network.Google.Resource.YouTubeReporting.Media.Download
    (
    -- * REST Resource
      MediaDownloadResource

    -- * Creating a Request
    , mediaDownload
    , MediaDownload'

    -- * Request Lenses
    , mdXgafv
    , mdUploadProtocol
    , mdResourceName
    , mdPp
    , mdAccessToken
    , mdUploadType
    , mdBearerToken
    , mdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.media.download@ method which the
-- 'MediaDownload'' request conforms to.
type MediaDownloadResource =
     "v1" :>
       "media" :>
         Capture "resourceName" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Media
       :<|>
       "v1" :>
         "media" :>
           Capture "resourceName" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltMedia :>
                             Get '[OctetStream] Stream

-- | Method for media download. Download is supported on the URI
-- \`\/v1\/media\/{+name}?alt=media\`.
--
-- /See:/ 'mediaDownload' smart constructor.
data MediaDownload' = MediaDownload''
    { _mdXgafv          :: !(Maybe Xgafv)
    , _mdUploadProtocol :: !(Maybe Text)
    , _mdResourceName   :: !Text
    , _mdPp             :: !Bool
    , _mdAccessToken    :: !(Maybe Text)
    , _mdUploadType     :: !(Maybe Text)
    , _mdBearerToken    :: !(Maybe Text)
    , _mdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdXgafv'
--
-- * 'mdUploadProtocol'
--
-- * 'mdResourceName'
--
-- * 'mdPp'
--
-- * 'mdAccessToken'
--
-- * 'mdUploadType'
--
-- * 'mdBearerToken'
--
-- * 'mdCallback'
mediaDownload
    :: Text -- ^ 'mdResourceName'
    -> MediaDownload'
mediaDownload pMdResourceName_ =
    MediaDownload''
    { _mdXgafv = Nothing
    , _mdUploadProtocol = Nothing
    , _mdResourceName = pMdResourceName_
    , _mdPp = True
    , _mdAccessToken = Nothing
    , _mdUploadType = Nothing
    , _mdBearerToken = Nothing
    , _mdCallback = Nothing
    }

-- | V1 error format.
mdXgafv :: Lens' MediaDownload' (Maybe Xgafv)
mdXgafv = lens _mdXgafv (\ s a -> s{_mdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdUploadProtocol :: Lens' MediaDownload' (Maybe Text)
mdUploadProtocol
  = lens _mdUploadProtocol
      (\ s a -> s{_mdUploadProtocol = a})

-- | Name of the media that is being downloaded. See
-- ReadRequest.resource_name.
mdResourceName :: Lens' MediaDownload' Text
mdResourceName
  = lens _mdResourceName
      (\ s a -> s{_mdResourceName = a})

-- | Pretty-print response.
mdPp :: Lens' MediaDownload' Bool
mdPp = lens _mdPp (\ s a -> s{_mdPp = a})

-- | OAuth access token.
mdAccessToken :: Lens' MediaDownload' (Maybe Text)
mdAccessToken
  = lens _mdAccessToken
      (\ s a -> s{_mdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdUploadType :: Lens' MediaDownload' (Maybe Text)
mdUploadType
  = lens _mdUploadType (\ s a -> s{_mdUploadType = a})

-- | OAuth bearer token.
mdBearerToken :: Lens' MediaDownload' (Maybe Text)
mdBearerToken
  = lens _mdBearerToken
      (\ s a -> s{_mdBearerToken = a})

-- | JSONP
mdCallback :: Lens' MediaDownload' (Maybe Text)
mdCallback
  = lens _mdCallback (\ s a -> s{_mdCallback = a})

instance GoogleRequest MediaDownload' where
        type Rs MediaDownload' = Media
        type Scopes MediaDownload' =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient MediaDownload''{..}
          = go _mdResourceName _mdXgafv _mdUploadProtocol
              (Just _mdPp)
              _mdAccessToken
              _mdUploadType
              _mdBearerToken
              _mdCallback
              (Just AltJSON)
              youTubeReportingService
          where go :<|> _
                  = buildClient (Proxy :: Proxy MediaDownloadResource)
                      mempty

instance GoogleRequest (MediaDownload MediaDownload')
         where
        type Rs (MediaDownload MediaDownload') = Stream
        type Scopes (MediaDownload MediaDownload') =
             Scopes MediaDownload'
        requestClient (MediaDownload MediaDownload''{..})
          = go _mdResourceName _mdXgafv _mdUploadProtocol
              (Just _mdPp)
              _mdAccessToken
              _mdUploadType
              _mdBearerToken
              _mdCallback
              (Just AltMedia)
              youTubeReportingService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy MediaDownloadResource)
                      mempty
