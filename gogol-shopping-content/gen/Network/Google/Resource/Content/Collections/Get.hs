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
-- Module      : Network.Google.Resource.Content.Collections.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a collection from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collections.get@.
module Network.Google.Resource.Content.Collections.Get
    (
    -- * REST Resource
      CollectionsGetResource

    -- * Creating a Request
    , collectionsGet
    , CollectionsGet

    -- * Request Lenses
    , cgXgafv
    , cgMerchantId
    , cgUploadProtocol
    , cgAccessToken
    , cgCollectionId
    , cgUploadType
    , cgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.collections.get@ method which the
-- 'CollectionsGet' request conforms to.
type CollectionsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "collections" :>
             Capture "collectionId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Collection

-- | Retrieves a collection from your Merchant Center account.
--
-- /See:/ 'collectionsGet' smart constructor.
data CollectionsGet =
  CollectionsGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgMerchantId :: !(Textual Int64)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken :: !(Maybe Text)
    , _cgCollectionId :: !Text
    , _cgUploadType :: !(Maybe Text)
    , _cgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgMerchantId'
--
-- * 'cgUploadProtocol'
--
-- * 'cgAccessToken'
--
-- * 'cgCollectionId'
--
-- * 'cgUploadType'
--
-- * 'cgCallback'
collectionsGet
    :: Int64 -- ^ 'cgMerchantId'
    -> Text -- ^ 'cgCollectionId'
    -> CollectionsGet
collectionsGet pCgMerchantId_ pCgCollectionId_ =
  CollectionsGet'
    { _cgXgafv = Nothing
    , _cgMerchantId = _Coerce # pCgMerchantId_
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgCollectionId = pCgCollectionId_
    , _cgUploadType = Nothing
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' CollectionsGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Required. The ID of the account that contains the collection. This
-- account cannot be a multi-client account.
cgMerchantId :: Lens' CollectionsGet Int64
cgMerchantId
  = lens _cgMerchantId (\ s a -> s{_cgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CollectionsGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | OAuth access token.
cgAccessToken :: Lens' CollectionsGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Required. The REST ID of the collection.
cgCollectionId :: Lens' CollectionsGet Text
cgCollectionId
  = lens _cgCollectionId
      (\ s a -> s{_cgCollectionId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CollectionsGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | JSONP
cgCallback :: Lens' CollectionsGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CollectionsGet where
        type Rs CollectionsGet = Collection
        type Scopes CollectionsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient CollectionsGet'{..}
          = go _cgMerchantId _cgCollectionId _cgXgafv
              _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy CollectionsGetResource)
                      mempty
