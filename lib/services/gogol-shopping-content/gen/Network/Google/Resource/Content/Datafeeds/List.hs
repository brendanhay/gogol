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
-- Module      : Network.Google.Resource.Content.Datafeeds.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the configurations for datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.list@.
module Network.Google.Resource.Content.Datafeeds.List
    (
    -- * REST Resource
      DatafeedsListResource

    -- * Creating a Request
    , datafeedsList
    , DatafeedsList

    -- * Request Lenses
    , datXgafv
    , datMerchantId
    , datUploadProtocol
    , datAccessToken
    , datUploadType
    , datPageToken
    , datMaxResults
    , datCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.list@ method which the
-- 'DatafeedsList' request conforms to.
type DatafeedsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] DatafeedsListResponse

-- | Lists the configurations for datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedsList' smart constructor.
data DatafeedsList =
  DatafeedsList'
    { _datXgafv :: !(Maybe Xgafv)
    , _datMerchantId :: !(Textual Word64)
    , _datUploadProtocol :: !(Maybe Text)
    , _datAccessToken :: !(Maybe Text)
    , _datUploadType :: !(Maybe Text)
    , _datPageToken :: !(Maybe Text)
    , _datMaxResults :: !(Maybe (Textual Word32))
    , _datCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datXgafv'
--
-- * 'datMerchantId'
--
-- * 'datUploadProtocol'
--
-- * 'datAccessToken'
--
-- * 'datUploadType'
--
-- * 'datPageToken'
--
-- * 'datMaxResults'
--
-- * 'datCallback'
datafeedsList
    :: Word64 -- ^ 'datMerchantId'
    -> DatafeedsList
datafeedsList pDatMerchantId_ =
  DatafeedsList'
    { _datXgafv = Nothing
    , _datMerchantId = _Coerce # pDatMerchantId_
    , _datUploadProtocol = Nothing
    , _datAccessToken = Nothing
    , _datUploadType = Nothing
    , _datPageToken = Nothing
    , _datMaxResults = Nothing
    , _datCallback = Nothing
    }


-- | V1 error format.
datXgafv :: Lens' DatafeedsList (Maybe Xgafv)
datXgafv = lens _datXgafv (\ s a -> s{_datXgafv = a})

-- | The ID of the account that manages the datafeeds. This account cannot be
-- a multi-client account.
datMerchantId :: Lens' DatafeedsList Word64
datMerchantId
  = lens _datMerchantId
      (\ s a -> s{_datMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
datUploadProtocol :: Lens' DatafeedsList (Maybe Text)
datUploadProtocol
  = lens _datUploadProtocol
      (\ s a -> s{_datUploadProtocol = a})

-- | OAuth access token.
datAccessToken :: Lens' DatafeedsList (Maybe Text)
datAccessToken
  = lens _datAccessToken
      (\ s a -> s{_datAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
datUploadType :: Lens' DatafeedsList (Maybe Text)
datUploadType
  = lens _datUploadType
      (\ s a -> s{_datUploadType = a})

-- | The token returned by the previous request.
datPageToken :: Lens' DatafeedsList (Maybe Text)
datPageToken
  = lens _datPageToken (\ s a -> s{_datPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
datMaxResults :: Lens' DatafeedsList (Maybe Word32)
datMaxResults
  = lens _datMaxResults
      (\ s a -> s{_datMaxResults = a})
      . mapping _Coerce

-- | JSONP
datCallback :: Lens' DatafeedsList (Maybe Text)
datCallback
  = lens _datCallback (\ s a -> s{_datCallback = a})

instance GoogleRequest DatafeedsList where
        type Rs DatafeedsList = DatafeedsListResponse
        type Scopes DatafeedsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsList'{..}
          = go _datMerchantId _datXgafv _datUploadProtocol
              _datAccessToken
              _datUploadType
              _datPageToken
              _datMaxResults
              _datCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy DatafeedsListResource)
                      mempty
