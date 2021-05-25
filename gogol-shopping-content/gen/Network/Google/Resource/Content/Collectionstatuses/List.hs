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
-- Module      : Network.Google.Resource.Content.Collectionstatuses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the collections in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collectionstatuses.list@.
module Network.Google.Resource.Content.Collectionstatuses.List
    (
    -- * REST Resource
      CollectionstatusesListResource

    -- * Creating a Request
    , collectionstatusesList
    , CollectionstatusesList

    -- * Request Lenses
    , colXgafv
    , colMerchantId
    , colUploadProtocol
    , colAccessToken
    , colUploadType
    , colPageToken
    , colPageSize
    , colCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.collectionstatuses.list@ method which the
-- 'CollectionstatusesList' request conforms to.
type CollectionstatusesListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "collectionstatuses" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCollectionStatusesResponse

-- | Lists the statuses of the collections in your Merchant Center account.
--
-- /See:/ 'collectionstatusesList' smart constructor.
data CollectionstatusesList =
  CollectionstatusesList'
    { _colXgafv :: !(Maybe Xgafv)
    , _colMerchantId :: !(Textual Int64)
    , _colUploadProtocol :: !(Maybe Text)
    , _colAccessToken :: !(Maybe Text)
    , _colUploadType :: !(Maybe Text)
    , _colPageToken :: !(Maybe Text)
    , _colPageSize :: !(Maybe (Textual Int32))
    , _colCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colXgafv'
--
-- * 'colMerchantId'
--
-- * 'colUploadProtocol'
--
-- * 'colAccessToken'
--
-- * 'colUploadType'
--
-- * 'colPageToken'
--
-- * 'colPageSize'
--
-- * 'colCallback'
collectionstatusesList
    :: Int64 -- ^ 'colMerchantId'
    -> CollectionstatusesList
collectionstatusesList pColMerchantId_ =
  CollectionstatusesList'
    { _colXgafv = Nothing
    , _colMerchantId = _Coerce # pColMerchantId_
    , _colUploadProtocol = Nothing
    , _colAccessToken = Nothing
    , _colUploadType = Nothing
    , _colPageToken = Nothing
    , _colPageSize = Nothing
    , _colCallback = Nothing
    }


-- | V1 error format.
colXgafv :: Lens' CollectionstatusesList (Maybe Xgafv)
colXgafv = lens _colXgafv (\ s a -> s{_colXgafv = a})

-- | Required. The ID of the account that contains the collection. This
-- account cannot be a multi-client account.
colMerchantId :: Lens' CollectionstatusesList Int64
colMerchantId
  = lens _colMerchantId
      (\ s a -> s{_colMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
colUploadProtocol :: Lens' CollectionstatusesList (Maybe Text)
colUploadProtocol
  = lens _colUploadProtocol
      (\ s a -> s{_colUploadProtocol = a})

-- | OAuth access token.
colAccessToken :: Lens' CollectionstatusesList (Maybe Text)
colAccessToken
  = lens _colAccessToken
      (\ s a -> s{_colAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
colUploadType :: Lens' CollectionstatusesList (Maybe Text)
colUploadType
  = lens _colUploadType
      (\ s a -> s{_colUploadType = a})

-- | Token (if provided) to retrieve the subsequent page. All other
-- parameters must match the original call that provided the page token.
colPageToken :: Lens' CollectionstatusesList (Maybe Text)
colPageToken
  = lens _colPageToken (\ s a -> s{_colPageToken = a})

-- | The maximum number of collection statuses to return in the response,
-- used for paging. Defaults to 50; values above 1000 will be coerced to
-- 1000.
colPageSize :: Lens' CollectionstatusesList (Maybe Int32)
colPageSize
  = lens _colPageSize (\ s a -> s{_colPageSize = a}) .
      mapping _Coerce

-- | JSONP
colCallback :: Lens' CollectionstatusesList (Maybe Text)
colCallback
  = lens _colCallback (\ s a -> s{_colCallback = a})

instance GoogleRequest CollectionstatusesList where
        type Rs CollectionstatusesList =
             ListCollectionStatusesResponse
        type Scopes CollectionstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient CollectionstatusesList'{..}
          = go _colMerchantId _colXgafv _colUploadProtocol
              _colAccessToken
              _colUploadType
              _colPageToken
              _colPageSize
              _colCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionstatusesListResource)
                      mempty
