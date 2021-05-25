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
-- Module      : Network.Google.Resource.VideoIntelligence.Videos.Annotate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs asynchronous video annotation. Progress and results can be
-- retrieved through the \`google.longrunning.Operations\` interface.
-- \`Operation.metadata\` contains \`AnnotateVideoProgress\` (progress).
-- \`Operation.response\` contains \`AnnotateVideoResponse\` (results).
--
-- /See:/ <https://cloud.google.com/video-intelligence/docs/ Cloud Video Intelligence API Reference> for @videointelligence.videos.annotate@.
module Network.Google.Resource.VideoIntelligence.Videos.Annotate
    (
    -- * REST Resource
      VideosAnnotateResource

    -- * Creating a Request
    , videosAnnotate
    , VideosAnnotate

    -- * Request Lenses
    , vaXgafv
    , vaUploadProtocol
    , vaAccessToken
    , vaUploadType
    , vaPayload
    , vaCallback
    ) where

import Network.Google.Prelude
import Network.Google.VideoIntelligence.Types

-- | A resource alias for @videointelligence.videos.annotate@ method which the
-- 'VideosAnnotate' request conforms to.
type VideosAnnotateResource =
     "v1p3beta1" :>
       "videos:annotate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
                       :> Post '[JSON] GoogleLongrunning_Operation

-- | Performs asynchronous video annotation. Progress and results can be
-- retrieved through the \`google.longrunning.Operations\` interface.
-- \`Operation.metadata\` contains \`AnnotateVideoProgress\` (progress).
-- \`Operation.response\` contains \`AnnotateVideoResponse\` (results).
--
-- /See:/ 'videosAnnotate' smart constructor.
data VideosAnnotate =
  VideosAnnotate'
    { _vaXgafv :: !(Maybe Xgafv)
    , _vaUploadProtocol :: !(Maybe Text)
    , _vaAccessToken :: !(Maybe Text)
    , _vaUploadType :: !(Maybe Text)
    , _vaPayload :: !GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    , _vaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaXgafv'
--
-- * 'vaUploadProtocol'
--
-- * 'vaAccessToken'
--
-- * 'vaUploadType'
--
-- * 'vaPayload'
--
-- * 'vaCallback'
videosAnnotate
    :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest -- ^ 'vaPayload'
    -> VideosAnnotate
videosAnnotate pVaPayload_ =
  VideosAnnotate'
    { _vaXgafv = Nothing
    , _vaUploadProtocol = Nothing
    , _vaAccessToken = Nothing
    , _vaUploadType = Nothing
    , _vaPayload = pVaPayload_
    , _vaCallback = Nothing
    }


-- | V1 error format.
vaXgafv :: Lens' VideosAnnotate (Maybe Xgafv)
vaXgafv = lens _vaXgafv (\ s a -> s{_vaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vaUploadProtocol :: Lens' VideosAnnotate (Maybe Text)
vaUploadProtocol
  = lens _vaUploadProtocol
      (\ s a -> s{_vaUploadProtocol = a})

-- | OAuth access token.
vaAccessToken :: Lens' VideosAnnotate (Maybe Text)
vaAccessToken
  = lens _vaAccessToken
      (\ s a -> s{_vaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vaUploadType :: Lens' VideosAnnotate (Maybe Text)
vaUploadType
  = lens _vaUploadType (\ s a -> s{_vaUploadType = a})

-- | Multipart request metadata.
vaPayload :: Lens' VideosAnnotate GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
vaPayload
  = lens _vaPayload (\ s a -> s{_vaPayload = a})

-- | JSONP
vaCallback :: Lens' VideosAnnotate (Maybe Text)
vaCallback
  = lens _vaCallback (\ s a -> s{_vaCallback = a})

instance GoogleRequest VideosAnnotate where
        type Rs VideosAnnotate = GoogleLongrunning_Operation
        type Scopes VideosAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient VideosAnnotate'{..}
          = go _vaXgafv _vaUploadProtocol _vaAccessToken
              _vaUploadType
              _vaCallback
              (Just AltJSON)
              _vaPayload
              videoIntelligenceService
          where go
                  = buildClient (Proxy :: Proxy VideosAnnotateResource)
                      mempty
