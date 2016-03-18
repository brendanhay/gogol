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
-- Module      : Network.Google.Resource.Genomics.Reads.Stream
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a stream of all the reads matching the search request, ordered
-- by reference name, position, and ID.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.reads.stream@.
module Network.Google.Resource.Genomics.Reads.Stream
    (
    -- * REST Resource
      ReadsStreamResource

    -- * Creating a Request
    , readsStream
    , ReadsStream

    -- * Request Lenses
    , rssXgafv
    , rssUploadProtocol
    , rssPp
    , rssAccessToken
    , rssUploadType
    , rssPayload
    , rssBearerToken
    , rssCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.reads.stream@ method which the
-- 'ReadsStream' request conforms to.
type ReadsStreamResource =
     "v1" :>
       "reads:stream" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] StreamReadsRequest :>
                           Post '[JSON] StreamReadsResponse

-- | Returns a stream of all the reads matching the search request, ordered
-- by reference name, position, and ID.
--
-- /See:/ 'readsStream' smart constructor.
data ReadsStream = ReadsStream
    { _rssXgafv          :: !(Maybe Text)
    , _rssUploadProtocol :: !(Maybe Text)
    , _rssPp             :: !Bool
    , _rssAccessToken    :: !(Maybe Text)
    , _rssUploadType     :: !(Maybe Text)
    , _rssPayload        :: !StreamReadsRequest
    , _rssBearerToken    :: !(Maybe Text)
    , _rssCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadsStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rssXgafv'
--
-- * 'rssUploadProtocol'
--
-- * 'rssPp'
--
-- * 'rssAccessToken'
--
-- * 'rssUploadType'
--
-- * 'rssPayload'
--
-- * 'rssBearerToken'
--
-- * 'rssCallback'
readsStream
    :: StreamReadsRequest -- ^ 'rssPayload'
    -> ReadsStream
readsStream pRssPayload_ =
    ReadsStream
    { _rssXgafv = Nothing
    , _rssUploadProtocol = Nothing
    , _rssPp = True
    , _rssAccessToken = Nothing
    , _rssUploadType = Nothing
    , _rssPayload = pRssPayload_
    , _rssBearerToken = Nothing
    , _rssCallback = Nothing
    }

-- | V1 error format.
rssXgafv :: Lens' ReadsStream (Maybe Text)
rssXgafv = lens _rssXgafv (\ s a -> s{_rssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rssUploadProtocol :: Lens' ReadsStream (Maybe Text)
rssUploadProtocol
  = lens _rssUploadProtocol
      (\ s a -> s{_rssUploadProtocol = a})

-- | Pretty-print response.
rssPp :: Lens' ReadsStream Bool
rssPp = lens _rssPp (\ s a -> s{_rssPp = a})

-- | OAuth access token.
rssAccessToken :: Lens' ReadsStream (Maybe Text)
rssAccessToken
  = lens _rssAccessToken
      (\ s a -> s{_rssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rssUploadType :: Lens' ReadsStream (Maybe Text)
rssUploadType
  = lens _rssUploadType
      (\ s a -> s{_rssUploadType = a})

-- | Multipart request metadata.
rssPayload :: Lens' ReadsStream StreamReadsRequest
rssPayload
  = lens _rssPayload (\ s a -> s{_rssPayload = a})

-- | OAuth bearer token.
rssBearerToken :: Lens' ReadsStream (Maybe Text)
rssBearerToken
  = lens _rssBearerToken
      (\ s a -> s{_rssBearerToken = a})

-- | JSONP
rssCallback :: Lens' ReadsStream (Maybe Text)
rssCallback
  = lens _rssCallback (\ s a -> s{_rssCallback = a})

instance GoogleRequest ReadsStream where
        type Rs ReadsStream = StreamReadsResponse
        requestClient ReadsStream{..}
          = go _rssXgafv _rssUploadProtocol (Just _rssPp)
              _rssAccessToken
              _rssUploadType
              _rssBearerToken
              _rssCallback
              (Just AltJSON)
              _rssPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy ReadsStreamResource)
                      mempty
