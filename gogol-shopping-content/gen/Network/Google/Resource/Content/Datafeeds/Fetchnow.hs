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
-- Module      : Network.Google.Resource.Content.Datafeeds.Fetchnow
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invokes a fetch for the datafeed in your Merchant Center account. If you
-- need to call this method more than once per day, we recommend you use
-- the Products service to update your product data.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.fetchnow@.
module Network.Google.Resource.Content.Datafeeds.Fetchnow
    (
    -- * REST Resource
      DatafeedsFetchnowResource

    -- * Creating a Request
    , datafeedsFetchnow
    , DatafeedsFetchnow

    -- * Request Lenses
    , dfXgafv
    , dfMerchantId
    , dfUploadProtocol
    , dfAccessToken
    , dfUploadType
    , dfDatafeedId
    , dfCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.fetchnow@ method which the
-- 'DatafeedsFetchnow' request conforms to.
type DatafeedsFetchnowResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             Capture "datafeedId" (Textual Word64) :>
               "fetchNow" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] DatafeedsFetchNowResponse

-- | Invokes a fetch for the datafeed in your Merchant Center account. If you
-- need to call this method more than once per day, we recommend you use
-- the Products service to update your product data.
--
-- /See:/ 'datafeedsFetchnow' smart constructor.
data DatafeedsFetchnow =
  DatafeedsFetchnow'
    { _dfXgafv :: !(Maybe Xgafv)
    , _dfMerchantId :: !(Textual Word64)
    , _dfUploadProtocol :: !(Maybe Text)
    , _dfAccessToken :: !(Maybe Text)
    , _dfUploadType :: !(Maybe Text)
    , _dfDatafeedId :: !(Textual Word64)
    , _dfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsFetchnow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfXgafv'
--
-- * 'dfMerchantId'
--
-- * 'dfUploadProtocol'
--
-- * 'dfAccessToken'
--
-- * 'dfUploadType'
--
-- * 'dfDatafeedId'
--
-- * 'dfCallback'
datafeedsFetchnow
    :: Word64 -- ^ 'dfMerchantId'
    -> Word64 -- ^ 'dfDatafeedId'
    -> DatafeedsFetchnow
datafeedsFetchnow pDfMerchantId_ pDfDatafeedId_ =
  DatafeedsFetchnow'
    { _dfXgafv = Nothing
    , _dfMerchantId = _Coerce # pDfMerchantId_
    , _dfUploadProtocol = Nothing
    , _dfAccessToken = Nothing
    , _dfUploadType = Nothing
    , _dfDatafeedId = _Coerce # pDfDatafeedId_
    , _dfCallback = Nothing
    }


-- | V1 error format.
dfXgafv :: Lens' DatafeedsFetchnow (Maybe Xgafv)
dfXgafv = lens _dfXgafv (\ s a -> s{_dfXgafv = a})

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
dfMerchantId :: Lens' DatafeedsFetchnow Word64
dfMerchantId
  = lens _dfMerchantId (\ s a -> s{_dfMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dfUploadProtocol :: Lens' DatafeedsFetchnow (Maybe Text)
dfUploadProtocol
  = lens _dfUploadProtocol
      (\ s a -> s{_dfUploadProtocol = a})

-- | OAuth access token.
dfAccessToken :: Lens' DatafeedsFetchnow (Maybe Text)
dfAccessToken
  = lens _dfAccessToken
      (\ s a -> s{_dfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dfUploadType :: Lens' DatafeedsFetchnow (Maybe Text)
dfUploadType
  = lens _dfUploadType (\ s a -> s{_dfUploadType = a})

-- | The ID of the datafeed to be fetched.
dfDatafeedId :: Lens' DatafeedsFetchnow Word64
dfDatafeedId
  = lens _dfDatafeedId (\ s a -> s{_dfDatafeedId = a})
      . _Coerce

-- | JSONP
dfCallback :: Lens' DatafeedsFetchnow (Maybe Text)
dfCallback
  = lens _dfCallback (\ s a -> s{_dfCallback = a})

instance GoogleRequest DatafeedsFetchnow where
        type Rs DatafeedsFetchnow = DatafeedsFetchNowResponse
        type Scopes DatafeedsFetchnow =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsFetchnow'{..}
          = go _dfMerchantId _dfDatafeedId _dfXgafv
              _dfUploadProtocol
              _dfAccessToken
              _dfUploadType
              _dfCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsFetchnowResource)
                      mempty
