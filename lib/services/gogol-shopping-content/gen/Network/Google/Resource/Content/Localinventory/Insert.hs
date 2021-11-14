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
-- Module      : Network.Google.Resource.Content.Localinventory.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the local inventory of a product in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.localinventory.insert@.
module Network.Google.Resource.Content.Localinventory.Insert
    (
    -- * REST Resource
      LocalinventoryInsertResource

    -- * Creating a Request
    , localinventoryInsert
    , LocalinventoryInsert

    -- * Request Lenses
    , liXgafv
    , liMerchantId
    , liUploadProtocol
    , liAccessToken
    , liUploadType
    , liPayload
    , liProductId
    , liCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.localinventory.insert@ method which the
-- 'LocalinventoryInsert' request conforms to.
type LocalinventoryInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               "localinventory" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LocalInventory :>
                               Post '[JSON] LocalInventory

-- | Updates the local inventory of a product in your Merchant Center
-- account.
--
-- /See:/ 'localinventoryInsert' smart constructor.
data LocalinventoryInsert =
  LocalinventoryInsert'
    { _liXgafv :: !(Maybe Xgafv)
    , _liMerchantId :: !(Textual Word64)
    , _liUploadProtocol :: !(Maybe Text)
    , _liAccessToken :: !(Maybe Text)
    , _liUploadType :: !(Maybe Text)
    , _liPayload :: !LocalInventory
    , _liProductId :: !Text
    , _liCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalinventoryInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liXgafv'
--
-- * 'liMerchantId'
--
-- * 'liUploadProtocol'
--
-- * 'liAccessToken'
--
-- * 'liUploadType'
--
-- * 'liPayload'
--
-- * 'liProductId'
--
-- * 'liCallback'
localinventoryInsert
    :: Word64 -- ^ 'liMerchantId'
    -> LocalInventory -- ^ 'liPayload'
    -> Text -- ^ 'liProductId'
    -> LocalinventoryInsert
localinventoryInsert pLiMerchantId_ pLiPayload_ pLiProductId_ =
  LocalinventoryInsert'
    { _liXgafv = Nothing
    , _liMerchantId = _Coerce # pLiMerchantId_
    , _liUploadProtocol = Nothing
    , _liAccessToken = Nothing
    , _liUploadType = Nothing
    , _liPayload = pLiPayload_
    , _liProductId = pLiProductId_
    , _liCallback = Nothing
    }


-- | V1 error format.
liXgafv :: Lens' LocalinventoryInsert (Maybe Xgafv)
liXgafv = lens _liXgafv (\ s a -> s{_liXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
liMerchantId :: Lens' LocalinventoryInsert Word64
liMerchantId
  = lens _liMerchantId (\ s a -> s{_liMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
liUploadProtocol :: Lens' LocalinventoryInsert (Maybe Text)
liUploadProtocol
  = lens _liUploadProtocol
      (\ s a -> s{_liUploadProtocol = a})

-- | OAuth access token.
liAccessToken :: Lens' LocalinventoryInsert (Maybe Text)
liAccessToken
  = lens _liAccessToken
      (\ s a -> s{_liAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
liUploadType :: Lens' LocalinventoryInsert (Maybe Text)
liUploadType
  = lens _liUploadType (\ s a -> s{_liUploadType = a})

-- | Multipart request metadata.
liPayload :: Lens' LocalinventoryInsert LocalInventory
liPayload
  = lens _liPayload (\ s a -> s{_liPayload = a})

-- | The REST ID of the product for which to update local inventory.
liProductId :: Lens' LocalinventoryInsert Text
liProductId
  = lens _liProductId (\ s a -> s{_liProductId = a})

-- | JSONP
liCallback :: Lens' LocalinventoryInsert (Maybe Text)
liCallback
  = lens _liCallback (\ s a -> s{_liCallback = a})

instance GoogleRequest LocalinventoryInsert where
        type Rs LocalinventoryInsert = LocalInventory
        type Scopes LocalinventoryInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient LocalinventoryInsert'{..}
          = go _liMerchantId _liProductId _liXgafv
              _liUploadProtocol
              _liAccessToken
              _liUploadType
              _liCallback
              (Just AltJSON)
              _liPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LocalinventoryInsertResource)
                      mempty
