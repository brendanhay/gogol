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
-- Module      : Network.Google.Resource.Manufacturers.Accounts.Products.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the product from a Manufacturer Center account.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.delete@.
module Network.Google.Resource.Manufacturers.Accounts.Products.Delete
    (
    -- * REST Resource
      AccountsProductsDeleteResource

    -- * Creating a Request
    , accountsProductsDelete
    , AccountsProductsDelete

    -- * Request Lenses
    , apdParent
    , apdXgafv
    , apdUploadProtocol
    , apdAccessToken
    , apdUploadType
    , apdName
    , apdCallback
    ) where

import Network.Google.Manufacturers.Types
import Network.Google.Prelude

-- | A resource alias for @manufacturers.accounts.products.delete@ method which the
-- 'AccountsProductsDelete' request conforms to.
type AccountsProductsDeleteResource =
     "v1" :>
       Capture "parent" Text :>
         "products" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the product from a Manufacturer Center account.
--
-- /See:/ 'accountsProductsDelete' smart constructor.
data AccountsProductsDelete =
  AccountsProductsDelete'
    { _apdParent :: !Text
    , _apdXgafv :: !(Maybe Xgafv)
    , _apdUploadProtocol :: !(Maybe Text)
    , _apdAccessToken :: !(Maybe Text)
    , _apdUploadType :: !(Maybe Text)
    , _apdName :: !Text
    , _apdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProductsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdParent'
--
-- * 'apdXgafv'
--
-- * 'apdUploadProtocol'
--
-- * 'apdAccessToken'
--
-- * 'apdUploadType'
--
-- * 'apdName'
--
-- * 'apdCallback'
accountsProductsDelete
    :: Text -- ^ 'apdParent'
    -> Text -- ^ 'apdName'
    -> AccountsProductsDelete
accountsProductsDelete pApdParent_ pApdName_ =
  AccountsProductsDelete'
    { _apdParent = pApdParent_
    , _apdXgafv = Nothing
    , _apdUploadProtocol = Nothing
    , _apdAccessToken = Nothing
    , _apdUploadType = Nothing
    , _apdName = pApdName_
    , _apdCallback = Nothing
    }


-- | Parent ID in the format \`accounts\/{account_id}\`. \`account_id\` - The
-- ID of the Manufacturer Center account.
apdParent :: Lens' AccountsProductsDelete Text
apdParent
  = lens _apdParent (\ s a -> s{_apdParent = a})

-- | V1 error format.
apdXgafv :: Lens' AccountsProductsDelete (Maybe Xgafv)
apdXgafv = lens _apdXgafv (\ s a -> s{_apdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apdUploadProtocol :: Lens' AccountsProductsDelete (Maybe Text)
apdUploadProtocol
  = lens _apdUploadProtocol
      (\ s a -> s{_apdUploadProtocol = a})

-- | OAuth access token.
apdAccessToken :: Lens' AccountsProductsDelete (Maybe Text)
apdAccessToken
  = lens _apdAccessToken
      (\ s a -> s{_apdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apdUploadType :: Lens' AccountsProductsDelete (Maybe Text)
apdUploadType
  = lens _apdUploadType
      (\ s a -> s{_apdUploadType = a})

-- | Name in the format \`{target_country}:{content_language}:{product_id}\`.
-- \`target_country\` - The target country of the product as a CLDR
-- territory code (for example, US). \`content_language\` - The content
-- language of the product as a two-letter ISO 639-1 language code (for
-- example, en). \`product_id\` - The ID of the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
apdName :: Lens' AccountsProductsDelete Text
apdName = lens _apdName (\ s a -> s{_apdName = a})

-- | JSONP
apdCallback :: Lens' AccountsProductsDelete (Maybe Text)
apdCallback
  = lens _apdCallback (\ s a -> s{_apdCallback = a})

instance GoogleRequest AccountsProductsDelete where
        type Rs AccountsProductsDelete = Empty
        type Scopes AccountsProductsDelete =
             '["https://www.googleapis.com/auth/manufacturercenter"]
        requestClient AccountsProductsDelete'{..}
          = go _apdParent _apdName _apdXgafv _apdUploadProtocol
              _apdAccessToken
              _apdUploadType
              _apdCallback
              (Just AltJSON)
              manufacturersService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProductsDeleteResource)
                      mempty
