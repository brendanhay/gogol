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
-- Module      : Network.Google.Resource.YouTube.Videos.Rate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a like or dislike rating to a video or removes a rating from a
-- video.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.rate@.
module Network.Google.Resource.YouTube.Videos.Rate
    (
    -- * REST Resource
      VideosRateResource

    -- * Creating a Request
    , videosRate
    , VideosRate

    -- * Request Lenses
    , vrXgafv
    , vrRating
    , vrUploadProtocol
    , vrAccessToken
    , vrUploadType
    , vrId
    , vrCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.rate@ method which the
-- 'VideosRate' request conforms to.
type VideosRateResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           "rate" :>
             QueryParam "id" Text :>
               QueryParam "rating" VideosRateRating :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Adds a like or dislike rating to a video or removes a rating from a
-- video.
--
-- /See:/ 'videosRate' smart constructor.
data VideosRate =
  VideosRate'
    { _vrXgafv :: !(Maybe Xgafv)
    , _vrRating :: !VideosRateRating
    , _vrUploadProtocol :: !(Maybe Text)
    , _vrAccessToken :: !(Maybe Text)
    , _vrUploadType :: !(Maybe Text)
    , _vrId :: !Text
    , _vrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrXgafv'
--
-- * 'vrRating'
--
-- * 'vrUploadProtocol'
--
-- * 'vrAccessToken'
--
-- * 'vrUploadType'
--
-- * 'vrId'
--
-- * 'vrCallback'
videosRate
    :: VideosRateRating -- ^ 'vrRating'
    -> Text -- ^ 'vrId'
    -> VideosRate
videosRate pVrRating_ pVrId_ =
  VideosRate'
    { _vrXgafv = Nothing
    , _vrRating = pVrRating_
    , _vrUploadProtocol = Nothing
    , _vrAccessToken = Nothing
    , _vrUploadType = Nothing
    , _vrId = pVrId_
    , _vrCallback = Nothing
    }


-- | V1 error format.
vrXgafv :: Lens' VideosRate (Maybe Xgafv)
vrXgafv = lens _vrXgafv (\ s a -> s{_vrXgafv = a})

vrRating :: Lens' VideosRate VideosRateRating
vrRating = lens _vrRating (\ s a -> s{_vrRating = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vrUploadProtocol :: Lens' VideosRate (Maybe Text)
vrUploadProtocol
  = lens _vrUploadProtocol
      (\ s a -> s{_vrUploadProtocol = a})

-- | OAuth access token.
vrAccessToken :: Lens' VideosRate (Maybe Text)
vrAccessToken
  = lens _vrAccessToken
      (\ s a -> s{_vrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vrUploadType :: Lens' VideosRate (Maybe Text)
vrUploadType
  = lens _vrUploadType (\ s a -> s{_vrUploadType = a})

vrId :: Lens' VideosRate Text
vrId = lens _vrId (\ s a -> s{_vrId = a})

-- | JSONP
vrCallback :: Lens' VideosRate (Maybe Text)
vrCallback
  = lens _vrCallback (\ s a -> s{_vrCallback = a})

instance GoogleRequest VideosRate where
        type Rs VideosRate = ()
        type Scopes VideosRate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosRate'{..}
          = go (Just _vrId) (Just _vrRating) _vrXgafv
              _vrUploadProtocol
              _vrAccessToken
              _vrUploadType
              _vrCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosRateResource)
                      mempty
