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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reply to a single review, or update an existing reply.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.reviews.reply@.
module Network.Google.Resource.AndroidPublisher.Reviews.Reply
    (
    -- * REST Resource
      ReviewsReplyResource

    -- * Creating a Request
    , reviewsReply
    , ReviewsReply

    -- * Request Lenses
    , rrReviewId
    , rrPackageName
    , rrPayload
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.reviews.reply@ method which the
-- 'ReviewsReply' request conforms to.
type ReviewsReplyResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "reviews" :>
               CaptureMode "reviewId" "reply" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ReviewsReplyRequest :>
                     Post '[JSON] ReviewsReplyResponse

-- | Reply to a single review, or update an existing reply.
--
-- /See:/ 'reviewsReply' smart constructor.
data ReviewsReply = ReviewsReply'
    { _rrReviewId    :: !Text
    , _rrPackageName :: !Text
    , _rrPayload     :: !ReviewsReplyRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReviewsReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrReviewId'
--
-- * 'rrPackageName'
--
-- * 'rrPayload'
reviewsReply
    :: Text -- ^ 'rrReviewId'
    -> Text -- ^ 'rrPackageName'
    -> ReviewsReplyRequest -- ^ 'rrPayload'
    -> ReviewsReply
reviewsReply pRrReviewId_ pRrPackageName_ pRrPayload_ =
    ReviewsReply'
    { _rrReviewId = pRrReviewId_
    , _rrPackageName = pRrPackageName_
    , _rrPayload = pRrPayload_
    }

rrReviewId :: Lens' ReviewsReply Text
rrReviewId
  = lens _rrReviewId (\ s a -> s{_rrReviewId = a})

-- | Unique identifier for the Android app for which we want reviews; for
-- example, \"com.spiffygame\".
rrPackageName :: Lens' ReviewsReply Text
rrPackageName
  = lens _rrPackageName
      (\ s a -> s{_rrPackageName = a})

-- | Multipart request metadata.
rrPayload :: Lens' ReviewsReply ReviewsReplyRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

instance GoogleRequest ReviewsReply where
        type Rs ReviewsReply = ReviewsReplyResponse
        type Scopes ReviewsReply =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient ReviewsReply'{..}
          = go _rrPackageName _rrReviewId (Just AltJSON)
              _rrPayload
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy ReviewsReplyResource)
                      mempty
