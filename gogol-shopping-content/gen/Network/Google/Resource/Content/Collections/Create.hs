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
-- Module      : Network.Google.Resource.Content.Collections.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a collection to your Merchant Center account. If a collection
-- with the same collectionId already exists, this method updates that
-- entry. In each update, the collection is completely replaced by the
-- fields in the body of the update request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.collections.create@.
module Network.Google.Resource.Content.Collections.Create
    (
    -- * REST Resource
      CollectionsCreateResource

    -- * Creating a Request
    , collectionsCreate
    , CollectionsCreate

    -- * Request Lenses
    , ccXgafv
    , ccMerchantId
    , ccUploadProtocol
    , ccAccessToken
    , ccUploadType
    , ccPayload
    , ccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.collections.create@ method which the
-- 'CollectionsCreate' request conforms to.
type CollectionsCreateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "collections" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Collection :> Post '[JSON] Collection

-- | Uploads a collection to your Merchant Center account. If a collection
-- with the same collectionId already exists, this method updates that
-- entry. In each update, the collection is completely replaced by the
-- fields in the body of the update request.
--
-- /See:/ 'collectionsCreate' smart constructor.
data CollectionsCreate =
  CollectionsCreate'
    { _ccXgafv :: !(Maybe Xgafv)
    , _ccMerchantId :: !(Textual Int64)
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccAccessToken :: !(Maybe Text)
    , _ccUploadType :: !(Maybe Text)
    , _ccPayload :: !Collection
    , _ccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccMerchantId'
--
-- * 'ccUploadProtocol'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccPayload'
--
-- * 'ccCallback'
collectionsCreate
    :: Int64 -- ^ 'ccMerchantId'
    -> Collection -- ^ 'ccPayload'
    -> CollectionsCreate
collectionsCreate pCcMerchantId_ pCcPayload_ =
  CollectionsCreate'
    { _ccXgafv = Nothing
    , _ccMerchantId = _Coerce # pCcMerchantId_
    , _ccUploadProtocol = Nothing
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccPayload = pCcPayload_
    , _ccCallback = Nothing
    }


-- | V1 error format.
ccXgafv :: Lens' CollectionsCreate (Maybe Xgafv)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Required. The ID of the account that contains the collection. This
-- account cannot be a multi-client account.
ccMerchantId :: Lens' CollectionsCreate Int64
ccMerchantId
  = lens _ccMerchantId (\ s a -> s{_ccMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' CollectionsCreate (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | OAuth access token.
ccAccessToken :: Lens' CollectionsCreate (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' CollectionsCreate (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | Multipart request metadata.
ccPayload :: Lens' CollectionsCreate Collection
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | JSONP
ccCallback :: Lens' CollectionsCreate (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleRequest CollectionsCreate where
        type Rs CollectionsCreate = Collection
        type Scopes CollectionsCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient CollectionsCreate'{..}
          = go _ccMerchantId _ccXgafv _ccUploadProtocol
              _ccAccessToken
              _ccUploadType
              _ccCallback
              (Just AltJSON)
              _ccPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsCreateResource)
                      mempty
