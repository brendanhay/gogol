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
-- Module      : Network.Google.Resource.Manufacturers.Accounts.Products.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts or updates the attributes of the product in a Manufacturer
-- Center account. Creates a product with the provided attributes. If the
-- product already exists, then all attributes are replaced with the new
-- ones. The checks at upload time are minimal. All required attributes
-- need to be present for a product to be valid. Issues may show up later
-- after the API has accepted a new upload for a product and it is possible
-- to overwrite an existing valid product with an invalid product. To
-- detect this, you should retrieve the product and check it for issues
-- once the new version is available. Uploaded attributes first need to be
-- processed before they can be retrieved. Until then, new products will be
-- unavailable, and retrieval of previously uploaded products will return
-- the original state of the product.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.update@.
module Network.Google.Resource.Manufacturers.Accounts.Products.Update
    (
    -- * REST Resource
      AccountsProductsUpdateResource

    -- * Creating a Request
    , accountsProductsUpdate
    , AccountsProductsUpdate

    -- * Request Lenses
    , apuParent
    , apuXgafv
    , apuUploadProtocol
    , apuAccessToken
    , apuUploadType
    , apuPayload
    , apuName
    , apuCallback
    ) where

import Network.Google.Manufacturers.Types
import Network.Google.Prelude

-- | A resource alias for @manufacturers.accounts.products.update@ method which the
-- 'AccountsProductsUpdate' request conforms to.
type AccountsProductsUpdateResource =
     "v1" :>
       Capture "parent" Text :>
         "products" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Attributes :> Put '[JSON] Empty

-- | Inserts or updates the attributes of the product in a Manufacturer
-- Center account. Creates a product with the provided attributes. If the
-- product already exists, then all attributes are replaced with the new
-- ones. The checks at upload time are minimal. All required attributes
-- need to be present for a product to be valid. Issues may show up later
-- after the API has accepted a new upload for a product and it is possible
-- to overwrite an existing valid product with an invalid product. To
-- detect this, you should retrieve the product and check it for issues
-- once the new version is available. Uploaded attributes first need to be
-- processed before they can be retrieved. Until then, new products will be
-- unavailable, and retrieval of previously uploaded products will return
-- the original state of the product.
--
-- /See:/ 'accountsProductsUpdate' smart constructor.
data AccountsProductsUpdate =
  AccountsProductsUpdate'
    { _apuParent :: !Text
    , _apuXgafv :: !(Maybe Xgafv)
    , _apuUploadProtocol :: !(Maybe Text)
    , _apuAccessToken :: !(Maybe Text)
    , _apuUploadType :: !(Maybe Text)
    , _apuPayload :: !Attributes
    , _apuName :: !Text
    , _apuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProductsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apuParent'
--
-- * 'apuXgafv'
--
-- * 'apuUploadProtocol'
--
-- * 'apuAccessToken'
--
-- * 'apuUploadType'
--
-- * 'apuPayload'
--
-- * 'apuName'
--
-- * 'apuCallback'
accountsProductsUpdate
    :: Text -- ^ 'apuParent'
    -> Attributes -- ^ 'apuPayload'
    -> Text -- ^ 'apuName'
    -> AccountsProductsUpdate
accountsProductsUpdate pApuParent_ pApuPayload_ pApuName_ =
  AccountsProductsUpdate'
    { _apuParent = pApuParent_
    , _apuXgafv = Nothing
    , _apuUploadProtocol = Nothing
    , _apuAccessToken = Nothing
    , _apuUploadType = Nothing
    , _apuPayload = pApuPayload_
    , _apuName = pApuName_
    , _apuCallback = Nothing
    }


-- | Parent ID in the format \`accounts\/{account_id}\`. \`account_id\` - The
-- ID of the Manufacturer Center account.
apuParent :: Lens' AccountsProductsUpdate Text
apuParent
  = lens _apuParent (\ s a -> s{_apuParent = a})

-- | V1 error format.
apuXgafv :: Lens' AccountsProductsUpdate (Maybe Xgafv)
apuXgafv = lens _apuXgafv (\ s a -> s{_apuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apuUploadProtocol :: Lens' AccountsProductsUpdate (Maybe Text)
apuUploadProtocol
  = lens _apuUploadProtocol
      (\ s a -> s{_apuUploadProtocol = a})

-- | OAuth access token.
apuAccessToken :: Lens' AccountsProductsUpdate (Maybe Text)
apuAccessToken
  = lens _apuAccessToken
      (\ s a -> s{_apuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apuUploadType :: Lens' AccountsProductsUpdate (Maybe Text)
apuUploadType
  = lens _apuUploadType
      (\ s a -> s{_apuUploadType = a})

-- | Multipart request metadata.
apuPayload :: Lens' AccountsProductsUpdate Attributes
apuPayload
  = lens _apuPayload (\ s a -> s{_apuPayload = a})

-- | Name in the format \`{target_country}:{content_language}:{product_id}\`.
-- \`target_country\` - The target country of the product as a CLDR
-- territory code (for example, US). \`content_language\` - The content
-- language of the product as a two-letter ISO 639-1 language code (for
-- example, en). \`product_id\` - The ID of the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
apuName :: Lens' AccountsProductsUpdate Text
apuName = lens _apuName (\ s a -> s{_apuName = a})

-- | JSONP
apuCallback :: Lens' AccountsProductsUpdate (Maybe Text)
apuCallback
  = lens _apuCallback (\ s a -> s{_apuCallback = a})

instance GoogleRequest AccountsProductsUpdate where
        type Rs AccountsProductsUpdate = Empty
        type Scopes AccountsProductsUpdate =
             '["https://www.googleapis.com/auth/manufacturercenter"]
        requestClient AccountsProductsUpdate'{..}
          = go _apuParent _apuName _apuXgafv _apuUploadProtocol
              _apuAccessToken
              _apuUploadType
              _apuCallback
              (Just AltJSON)
              _apuPayload
              manufacturersService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProductsUpdateResource)
                      mempty
