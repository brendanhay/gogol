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
-- Module      : Network.Google.Resource.Content.Regionalinventory.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the regional inventory of a product in your Merchant Center
-- account. If a regional inventory with the same region ID already exists,
-- this method updates that entry.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regionalinventory.insert@.
module Network.Google.Resource.Content.Regionalinventory.Insert
    (
    -- * REST Resource
      RegionalinventoryInsertResource

    -- * Creating a Request
    , regionalinventoryInsert
    , RegionalinventoryInsert

    -- * Request Lenses
    , riXgafv
    , riMerchantId
    , riUploadProtocol
    , riAccessToken
    , riUploadType
    , riPayload
    , riProductId
    , riCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regionalinventory.insert@ method which the
-- 'RegionalinventoryInsert' request conforms to.
type RegionalinventoryInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               "regionalinventory" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RegionalInventory :>
                               Post '[JSON] RegionalInventory

-- | Update the regional inventory of a product in your Merchant Center
-- account. If a regional inventory with the same region ID already exists,
-- this method updates that entry.
--
-- /See:/ 'regionalinventoryInsert' smart constructor.
data RegionalinventoryInsert =
  RegionalinventoryInsert'
    { _riXgafv :: !(Maybe Xgafv)
    , _riMerchantId :: !(Textual Word64)
    , _riUploadProtocol :: !(Maybe Text)
    , _riAccessToken :: !(Maybe Text)
    , _riUploadType :: !(Maybe Text)
    , _riPayload :: !RegionalInventory
    , _riProductId :: !Text
    , _riCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riXgafv'
--
-- * 'riMerchantId'
--
-- * 'riUploadProtocol'
--
-- * 'riAccessToken'
--
-- * 'riUploadType'
--
-- * 'riPayload'
--
-- * 'riProductId'
--
-- * 'riCallback'
regionalinventoryInsert
    :: Word64 -- ^ 'riMerchantId'
    -> RegionalInventory -- ^ 'riPayload'
    -> Text -- ^ 'riProductId'
    -> RegionalinventoryInsert
regionalinventoryInsert pRiMerchantId_ pRiPayload_ pRiProductId_ =
  RegionalinventoryInsert'
    { _riXgafv = Nothing
    , _riMerchantId = _Coerce # pRiMerchantId_
    , _riUploadProtocol = Nothing
    , _riAccessToken = Nothing
    , _riUploadType = Nothing
    , _riPayload = pRiPayload_
    , _riProductId = pRiProductId_
    , _riCallback = Nothing
    }


-- | V1 error format.
riXgafv :: Lens' RegionalinventoryInsert (Maybe Xgafv)
riXgafv = lens _riXgafv (\ s a -> s{_riXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
riMerchantId :: Lens' RegionalinventoryInsert Word64
riMerchantId
  = lens _riMerchantId (\ s a -> s{_riMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
riUploadProtocol :: Lens' RegionalinventoryInsert (Maybe Text)
riUploadProtocol
  = lens _riUploadProtocol
      (\ s a -> s{_riUploadProtocol = a})

-- | OAuth access token.
riAccessToken :: Lens' RegionalinventoryInsert (Maybe Text)
riAccessToken
  = lens _riAccessToken
      (\ s a -> s{_riAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
riUploadType :: Lens' RegionalinventoryInsert (Maybe Text)
riUploadType
  = lens _riUploadType (\ s a -> s{_riUploadType = a})

-- | Multipart request metadata.
riPayload :: Lens' RegionalinventoryInsert RegionalInventory
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | The REST ID of the product for which to update the regional inventory.
riProductId :: Lens' RegionalinventoryInsert Text
riProductId
  = lens _riProductId (\ s a -> s{_riProductId = a})

-- | JSONP
riCallback :: Lens' RegionalinventoryInsert (Maybe Text)
riCallback
  = lens _riCallback (\ s a -> s{_riCallback = a})

instance GoogleRequest RegionalinventoryInsert where
        type Rs RegionalinventoryInsert = RegionalInventory
        type Scopes RegionalinventoryInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionalinventoryInsert'{..}
          = go _riMerchantId _riProductId _riXgafv
              _riUploadProtocol
              _riAccessToken
              _riUploadType
              _riCallback
              (Just AltJSON)
              _riPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionalinventoryInsertResource)
                      mempty
