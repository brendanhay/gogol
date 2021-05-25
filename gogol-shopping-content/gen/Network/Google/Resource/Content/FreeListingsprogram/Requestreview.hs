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
-- Module      : Network.Google.Resource.Content.FreeListingsprogram.Requestreview
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a review for Free Listings program in the provided region.
-- Important: This method is only whitelisted for selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.freelistingsprogram.requestreview@.
module Network.Google.Resource.Content.FreeListingsprogram.Requestreview
    (
    -- * REST Resource
      FreeListingsprogramRequestreviewResource

    -- * Creating a Request
    , freeListingsprogramRequestreview
    , FreeListingsprogramRequestreview

    -- * Request Lenses
    , flrXgafv
    , flrMerchantId
    , flrUploadProtocol
    , flrAccessToken
    , flrUploadType
    , flrPayload
    , flrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.freelistingsprogram.requestreview@ method which the
-- 'FreeListingsprogramRequestreview' request conforms to.
type FreeListingsprogramRequestreviewResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "freelistingsprogram" :>
             "requestreview" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RequestReviewFreeListingsRequest :>
                             Post '[JSON] ()

-- | Requests a review for Free Listings program in the provided region.
-- Important: This method is only whitelisted for selected merchants.
--
-- /See:/ 'freeListingsprogramRequestreview' smart constructor.
data FreeListingsprogramRequestreview =
  FreeListingsprogramRequestreview'
    { _flrXgafv :: !(Maybe Xgafv)
    , _flrMerchantId :: !(Textual Int64)
    , _flrUploadProtocol :: !(Maybe Text)
    , _flrAccessToken :: !(Maybe Text)
    , _flrUploadType :: !(Maybe Text)
    , _flrPayload :: !RequestReviewFreeListingsRequest
    , _flrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FreeListingsprogramRequestreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flrXgafv'
--
-- * 'flrMerchantId'
--
-- * 'flrUploadProtocol'
--
-- * 'flrAccessToken'
--
-- * 'flrUploadType'
--
-- * 'flrPayload'
--
-- * 'flrCallback'
freeListingsprogramRequestreview
    :: Int64 -- ^ 'flrMerchantId'
    -> RequestReviewFreeListingsRequest -- ^ 'flrPayload'
    -> FreeListingsprogramRequestreview
freeListingsprogramRequestreview pFlrMerchantId_ pFlrPayload_ =
  FreeListingsprogramRequestreview'
    { _flrXgafv = Nothing
    , _flrMerchantId = _Coerce # pFlrMerchantId_
    , _flrUploadProtocol = Nothing
    , _flrAccessToken = Nothing
    , _flrUploadType = Nothing
    , _flrPayload = pFlrPayload_
    , _flrCallback = Nothing
    }


-- | V1 error format.
flrXgafv :: Lens' FreeListingsprogramRequestreview (Maybe Xgafv)
flrXgafv = lens _flrXgafv (\ s a -> s{_flrXgafv = a})

-- | Required. The ID of the account.
flrMerchantId :: Lens' FreeListingsprogramRequestreview Int64
flrMerchantId
  = lens _flrMerchantId
      (\ s a -> s{_flrMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flrUploadProtocol :: Lens' FreeListingsprogramRequestreview (Maybe Text)
flrUploadProtocol
  = lens _flrUploadProtocol
      (\ s a -> s{_flrUploadProtocol = a})

-- | OAuth access token.
flrAccessToken :: Lens' FreeListingsprogramRequestreview (Maybe Text)
flrAccessToken
  = lens _flrAccessToken
      (\ s a -> s{_flrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flrUploadType :: Lens' FreeListingsprogramRequestreview (Maybe Text)
flrUploadType
  = lens _flrUploadType
      (\ s a -> s{_flrUploadType = a})

-- | Multipart request metadata.
flrPayload :: Lens' FreeListingsprogramRequestreview RequestReviewFreeListingsRequest
flrPayload
  = lens _flrPayload (\ s a -> s{_flrPayload = a})

-- | JSONP
flrCallback :: Lens' FreeListingsprogramRequestreview (Maybe Text)
flrCallback
  = lens _flrCallback (\ s a -> s{_flrCallback = a})

instance GoogleRequest
           FreeListingsprogramRequestreview
         where
        type Rs FreeListingsprogramRequestreview = ()
        type Scopes FreeListingsprogramRequestreview =
             '["https://www.googleapis.com/auth/content"]
        requestClient FreeListingsprogramRequestreview'{..}
          = go _flrMerchantId _flrXgafv _flrUploadProtocol
              _flrAccessToken
              _flrUploadType
              _flrCallback
              (Just AltJSON)
              _flrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FreeListingsprogramRequestreviewResource)
                      mempty
