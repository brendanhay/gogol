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
-- Module      : Network.Google.Resource.AndroidPublisher.Reviews.Reply
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replies to a single review, or updates an existing reply.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.reply@.
module Network.Google.Resource.AndroidPublisher.Reviews.Reply
    (
    -- * REST Resource
      ReviewsReplyResource

    -- * Creating a Request
    , reviewsReply
    , ReviewsReply

    -- * Request Lenses
    , rrXgafv
    , rrReviewId
    , rrUploadProtocol
    , rrPackageName
    , rrAccessToken
    , rrUploadType
    , rrPayload
    , rrCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.reviews.reply@ method which the
-- 'ReviewsReply' request conforms to.
type ReviewsReplyResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "reviews" :>
               CaptureMode "reviewId" "reply" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ReviewsReplyRequest :>
                               Post '[JSON] ReviewsReplyResponse

-- | Replies to a single review, or updates an existing reply.
--
-- /See:/ 'reviewsReply' smart constructor.
data ReviewsReply =
  ReviewsReply'
    { _rrXgafv :: !(Maybe Xgafv)
    , _rrReviewId :: !Text
    , _rrUploadProtocol :: !(Maybe Text)
    , _rrPackageName :: !Text
    , _rrAccessToken :: !(Maybe Text)
    , _rrUploadType :: !(Maybe Text)
    , _rrPayload :: !ReviewsReplyRequest
    , _rrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReviewsReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrXgafv'
--
-- * 'rrReviewId'
--
-- * 'rrUploadProtocol'
--
-- * 'rrPackageName'
--
-- * 'rrAccessToken'
--
-- * 'rrUploadType'
--
-- * 'rrPayload'
--
-- * 'rrCallback'
reviewsReply
    :: Text -- ^ 'rrReviewId'
    -> Text -- ^ 'rrPackageName'
    -> ReviewsReplyRequest -- ^ 'rrPayload'
    -> ReviewsReply
reviewsReply pRrReviewId_ pRrPackageName_ pRrPayload_ =
  ReviewsReply'
    { _rrXgafv = Nothing
    , _rrReviewId = pRrReviewId_
    , _rrUploadProtocol = Nothing
    , _rrPackageName = pRrPackageName_
    , _rrAccessToken = Nothing
    , _rrUploadType = Nothing
    , _rrPayload = pRrPayload_
    , _rrCallback = Nothing
    }


-- | V1 error format.
rrXgafv :: Lens' ReviewsReply (Maybe Xgafv)
rrXgafv = lens _rrXgafv (\ s a -> s{_rrXgafv = a})

-- | Unique identifier for a review.
rrReviewId :: Lens' ReviewsReply Text
rrReviewId
  = lens _rrReviewId (\ s a -> s{_rrReviewId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrUploadProtocol :: Lens' ReviewsReply (Maybe Text)
rrUploadProtocol
  = lens _rrUploadProtocol
      (\ s a -> s{_rrUploadProtocol = a})

-- | Package name of the app.
rrPackageName :: Lens' ReviewsReply Text
rrPackageName
  = lens _rrPackageName
      (\ s a -> s{_rrPackageName = a})

-- | OAuth access token.
rrAccessToken :: Lens' ReviewsReply (Maybe Text)
rrAccessToken
  = lens _rrAccessToken
      (\ s a -> s{_rrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrUploadType :: Lens' ReviewsReply (Maybe Text)
rrUploadType
  = lens _rrUploadType (\ s a -> s{_rrUploadType = a})

-- | Multipart request metadata.
rrPayload :: Lens' ReviewsReply ReviewsReplyRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

-- | JSONP
rrCallback :: Lens' ReviewsReply (Maybe Text)
rrCallback
  = lens _rrCallback (\ s a -> s{_rrCallback = a})

instance GoogleRequest ReviewsReply where
        type Rs ReviewsReply = ReviewsReplyResponse
        type Scopes ReviewsReply =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ReviewsReply'{..}
          = go _rrPackageName _rrReviewId _rrXgafv
              _rrUploadProtocol
              _rrAccessToken
              _rrUploadType
              _rrCallback
              (Just AltJSON)
              _rrPayload
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy ReviewsReplyResource)
                      mempty
