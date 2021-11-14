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
-- Module      : Network.Google.Resource.Content.Datafeeds.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a datafeed configuration from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.get@.
module Network.Google.Resource.Content.Datafeeds.Get
    (
    -- * REST Resource
      DatafeedsGetResource

    -- * Creating a Request
    , datafeedsGet
    , DatafeedsGet

    -- * Request Lenses
    , dgXgafv
    , dgMerchantId
    , dgUploadProtocol
    , dgAccessToken
    , dgUploadType
    , dgDatafeedId
    , dgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.get@ method which the
-- 'DatafeedsGet' request conforms to.
type DatafeedsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             Capture "datafeedId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Datafeed

-- | Retrieves a datafeed configuration from your Merchant Center account.
--
-- /See:/ 'datafeedsGet' smart constructor.
data DatafeedsGet =
  DatafeedsGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgMerchantId :: !(Textual Word64)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgDatafeedId :: !(Textual Word64)
    , _dgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgMerchantId'
--
-- * 'dgUploadProtocol'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgDatafeedId'
--
-- * 'dgCallback'
datafeedsGet
    :: Word64 -- ^ 'dgMerchantId'
    -> Word64 -- ^ 'dgDatafeedId'
    -> DatafeedsGet
datafeedsGet pDgMerchantId_ pDgDatafeedId_ =
  DatafeedsGet'
    { _dgXgafv = Nothing
    , _dgMerchantId = _Coerce # pDgMerchantId_
    , _dgUploadProtocol = Nothing
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgDatafeedId = _Coerce # pDgDatafeedId_
    , _dgCallback = Nothing
    }


-- | V1 error format.
dgXgafv :: Lens' DatafeedsGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
dgMerchantId :: Lens' DatafeedsGet Word64
dgMerchantId
  = lens _dgMerchantId (\ s a -> s{_dgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DatafeedsGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | OAuth access token.
dgAccessToken :: Lens' DatafeedsGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DatafeedsGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | The ID of the datafeed.
dgDatafeedId :: Lens' DatafeedsGet Word64
dgDatafeedId
  = lens _dgDatafeedId (\ s a -> s{_dgDatafeedId = a})
      . _Coerce

-- | JSONP
dgCallback :: Lens' DatafeedsGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleRequest DatafeedsGet where
        type Rs DatafeedsGet = Datafeed
        type Scopes DatafeedsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsGet'{..}
          = go _dgMerchantId _dgDatafeedId _dgXgafv
              _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy DatafeedsGetResource)
                      mempty
