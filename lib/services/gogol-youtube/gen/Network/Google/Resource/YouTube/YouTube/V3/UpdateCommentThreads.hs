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
-- Module      : Network.Google.Resource.YouTube.YouTube.V3.UpdateCommentThreads
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.youtube.v3.updateCommentThreads@.
module Network.Google.Resource.YouTube.YouTube.V3.UpdateCommentThreads
    (
    -- * REST Resource
      YouTubeV3UpdateCommentThreadsResource

    -- * Creating a Request
    , youTubeV3UpdateCommentThreads
    , YouTubeV3UpdateCommentThreads

    -- * Request Lenses
    , ytvuctXgafv
    , ytvuctPart
    , ytvuctUploadProtocol
    , ytvuctAccessToken
    , ytvuctUploadType
    , ytvuctPayload
    , ytvuctCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.youtube.v3.updateCommentThreads@ method which the
-- 'YouTubeV3UpdateCommentThreads' request conforms to.
type YouTubeV3UpdateCommentThreadsResource =
     "youtube" :>
       "v3" :>
         "commentThreads" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParams "part" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CommentThread :>
                           Put '[JSON] CommentThread

-- | Updates an existing resource.
--
-- /See:/ 'youTubeV3UpdateCommentThreads' smart constructor.
data YouTubeV3UpdateCommentThreads =
  YouTubeV3UpdateCommentThreads'
    { _ytvuctXgafv :: !(Maybe Xgafv)
    , _ytvuctPart :: !(Maybe [Text])
    , _ytvuctUploadProtocol :: !(Maybe Text)
    , _ytvuctAccessToken :: !(Maybe Text)
    , _ytvuctUploadType :: !(Maybe Text)
    , _ytvuctPayload :: !CommentThread
    , _ytvuctCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'YouTubeV3UpdateCommentThreads' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ytvuctXgafv'
--
-- * 'ytvuctPart'
--
-- * 'ytvuctUploadProtocol'
--
-- * 'ytvuctAccessToken'
--
-- * 'ytvuctUploadType'
--
-- * 'ytvuctPayload'
--
-- * 'ytvuctCallback'
youTubeV3UpdateCommentThreads
    :: CommentThread -- ^ 'ytvuctPayload'
    -> YouTubeV3UpdateCommentThreads
youTubeV3UpdateCommentThreads pYtvuctPayload_ =
  YouTubeV3UpdateCommentThreads'
    { _ytvuctXgafv = Nothing
    , _ytvuctPart = Nothing
    , _ytvuctUploadProtocol = Nothing
    , _ytvuctAccessToken = Nothing
    , _ytvuctUploadType = Nothing
    , _ytvuctPayload = pYtvuctPayload_
    , _ytvuctCallback = Nothing
    }


-- | V1 error format.
ytvuctXgafv :: Lens' YouTubeV3UpdateCommentThreads (Maybe Xgafv)
ytvuctXgafv
  = lens _ytvuctXgafv (\ s a -> s{_ytvuctXgafv = a})

-- | The *part* parameter specifies a comma-separated list of commentThread
-- resource properties that the API response will include. You must at
-- least include the snippet part in the parameter value since that part
-- contains all of the properties that the API request can update.
ytvuctPart :: Lens' YouTubeV3UpdateCommentThreads [Text]
ytvuctPart
  = lens _ytvuctPart (\ s a -> s{_ytvuctPart = a}) .
      _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ytvuctUploadProtocol :: Lens' YouTubeV3UpdateCommentThreads (Maybe Text)
ytvuctUploadProtocol
  = lens _ytvuctUploadProtocol
      (\ s a -> s{_ytvuctUploadProtocol = a})

-- | OAuth access token.
ytvuctAccessToken :: Lens' YouTubeV3UpdateCommentThreads (Maybe Text)
ytvuctAccessToken
  = lens _ytvuctAccessToken
      (\ s a -> s{_ytvuctAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ytvuctUploadType :: Lens' YouTubeV3UpdateCommentThreads (Maybe Text)
ytvuctUploadType
  = lens _ytvuctUploadType
      (\ s a -> s{_ytvuctUploadType = a})

-- | Multipart request metadata.
ytvuctPayload :: Lens' YouTubeV3UpdateCommentThreads CommentThread
ytvuctPayload
  = lens _ytvuctPayload
      (\ s a -> s{_ytvuctPayload = a})

-- | JSONP
ytvuctCallback :: Lens' YouTubeV3UpdateCommentThreads (Maybe Text)
ytvuctCallback
  = lens _ytvuctCallback
      (\ s a -> s{_ytvuctCallback = a})

instance GoogleRequest YouTubeV3UpdateCommentThreads
         where
        type Rs YouTubeV3UpdateCommentThreads = CommentThread
        type Scopes YouTubeV3UpdateCommentThreads = '[]
        requestClient YouTubeV3UpdateCommentThreads'{..}
          = go _ytvuctXgafv (_ytvuctPart ^. _Default)
              _ytvuctUploadProtocol
              _ytvuctAccessToken
              _ytvuctUploadType
              _ytvuctCallback
              (Just AltJSON)
              _ytvuctPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy YouTubeV3UpdateCommentThreadsResource)
                      mempty
