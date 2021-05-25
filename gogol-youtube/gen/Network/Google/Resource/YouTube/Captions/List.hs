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
-- Module      : Network.Google.Resource.YouTube.Captions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.list@.
module Network.Google.Resource.YouTube.Captions.List
    (
    -- * REST Resource
      CaptionsListResource

    -- * Creating a Request
    , captionsList
    , CaptionsList

    -- * Request Lenses
    , clOnBehalfOf
    , clXgafv
    , clPart
    , clUploadProtocol
    , clAccessToken
    , clUploadType
    , clOnBehalfOfContentOwner
    , clVideoId
    , clId
    , clCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.list@ method which the
-- 'CaptionsList' request conforms to.
type CaptionsListResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           QueryParams "part" Text :>
             QueryParam "videoId" Text :>
               QueryParam "onBehalfOf" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "onBehalfOfContentOwner" Text :>
                           QueryParams "id" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CaptionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'captionsList' smart constructor.
data CaptionsList =
  CaptionsList'
    { _clOnBehalfOf :: !(Maybe Text)
    , _clXgafv :: !(Maybe Xgafv)
    , _clPart :: ![Text]
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clOnBehalfOfContentOwner :: !(Maybe Text)
    , _clVideoId :: !Text
    , _clId :: !(Maybe [Text])
    , _clCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CaptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clOnBehalfOf'
--
-- * 'clXgafv'
--
-- * 'clPart'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clOnBehalfOfContentOwner'
--
-- * 'clVideoId'
--
-- * 'clId'
--
-- * 'clCallback'
captionsList
    :: [Text] -- ^ 'clPart'
    -> Text -- ^ 'clVideoId'
    -> CaptionsList
captionsList pClPart_ pClVideoId_ =
  CaptionsList'
    { _clOnBehalfOf = Nothing
    , _clXgafv = Nothing
    , _clPart = _Coerce # pClPart_
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clOnBehalfOfContentOwner = Nothing
    , _clVideoId = pClVideoId_
    , _clId = Nothing
    , _clCallback = Nothing
    }


-- | ID of the Google+ Page for the channel that the request is on behalf of.
clOnBehalfOf :: Lens' CaptionsList (Maybe Text)
clOnBehalfOf
  = lens _clOnBehalfOf (\ s a -> s{_clOnBehalfOf = a})

-- | V1 error format.
clXgafv :: Lens' CaptionsList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
clPart :: Lens' CaptionsList [Text]
clPart
  = lens _clPart (\ s a -> s{_clPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CaptionsList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CaptionsList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CaptionsList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
clOnBehalfOfContentOwner :: Lens' CaptionsList (Maybe Text)
clOnBehalfOfContentOwner
  = lens _clOnBehalfOfContentOwner
      (\ s a -> s{_clOnBehalfOfContentOwner = a})

-- | Returns the captions for the specified video.
clVideoId :: Lens' CaptionsList Text
clVideoId
  = lens _clVideoId (\ s a -> s{_clVideoId = a})

-- | Returns the captions with the given IDs for Stubby or Apiary.
clId :: Lens' CaptionsList [Text]
clId
  = lens _clId (\ s a -> s{_clId = a}) . _Default .
      _Coerce

-- | JSONP
clCallback :: Lens' CaptionsList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CaptionsList where
        type Rs CaptionsList = CaptionListResponse
        type Scopes CaptionsList =
             '["https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient CaptionsList'{..}
          = go _clPart (Just _clVideoId) _clOnBehalfOf _clXgafv
              _clUploadProtocol
              _clAccessToken
              _clUploadType
              _clOnBehalfOfContentOwner
              (_clId ^. _Default)
              _clCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CaptionsListResource)
                      mempty
