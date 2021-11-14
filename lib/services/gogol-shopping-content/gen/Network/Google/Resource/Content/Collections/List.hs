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
-- Module      : Network.Google.Resource.Content.Collections.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the collections in your Merchant Center account. The response
-- might contain fewer items than specified by page_size. Rely on
-- next_page_token to determine if there are more items to be requested.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collections.list@.
module Network.Google.Resource.Content.Collections.List
    (
    -- * REST Resource
      CollectionsListResource

    -- * Creating a Request
    , collectionsList
    , CollectionsList

    -- * Request Lenses
    , clXgafv
    , clMerchantId
    , clUploadProtocol
    , clAccessToken
    , clUploadType
    , clPageToken
    , clPageSize
    , clCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.collections.list@ method which the
-- 'CollectionsList' request conforms to.
type CollectionsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "collections" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCollectionsResponse

-- | Lists the collections in your Merchant Center account. The response
-- might contain fewer items than specified by page_size. Rely on
-- next_page_token to determine if there are more items to be requested.
--
-- /See:/ 'collectionsList' smart constructor.
data CollectionsList =
  CollectionsList'
    { _clXgafv :: !(Maybe Xgafv)
    , _clMerchantId :: !(Textual Int64)
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clPageToken :: !(Maybe Text)
    , _clPageSize :: !(Maybe (Textual Int32))
    , _clCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clXgafv'
--
-- * 'clMerchantId'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clCallback'
collectionsList
    :: Int64 -- ^ 'clMerchantId'
    -> CollectionsList
collectionsList pClMerchantId_ =
  CollectionsList'
    { _clXgafv = Nothing
    , _clMerchantId = _Coerce # pClMerchantId_
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clPageToken = Nothing
    , _clPageSize = Nothing
    , _clCallback = Nothing
    }


-- | V1 error format.
clXgafv :: Lens' CollectionsList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Required. The ID of the account that contains the collection. This
-- account cannot be a multi-client account.
clMerchantId :: Lens' CollectionsList Int64
clMerchantId
  = lens _clMerchantId (\ s a -> s{_clMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CollectionsList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CollectionsList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CollectionsList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | Token (if provided) to retrieve the subsequent page. All other
-- parameters must match the original call that provided the page token.
clPageToken :: Lens' CollectionsList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The maximum number of collections to return in the response, used for
-- paging. Defaults to 50; values above 1000 will be coerced to 1000.
clPageSize :: Lens' CollectionsList (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a}) .
      mapping _Coerce

-- | JSONP
clCallback :: Lens' CollectionsList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CollectionsList where
        type Rs CollectionsList = ListCollectionsResponse
        type Scopes CollectionsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient CollectionsList'{..}
          = go _clMerchantId _clXgafv _clUploadProtocol
              _clAccessToken
              _clUploadType
              _clPageToken
              _clPageSize
              _clCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsListResource)
                      mempty
