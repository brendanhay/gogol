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
-- Module      : Network.Google.Resource.Manufacturers.Accounts.Products.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the product from a Manufacturer Center account, including product
-- issues.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.get@.
module Network.Google.Resource.Manufacturers.Accounts.Products.Get
    (
    -- * REST Resource
      AccountsProductsGetResource

    -- * Creating a Request
    , accountsProductsGet
    , AccountsProductsGet

    -- * Request Lenses
    , apgParent
    , apgXgafv
    , apgUploadProtocol
    , apgPp
    , apgAccessToken
    , apgUploadType
    , apgBearerToken
    , apgName
    , apgCallback
    ) where

import           Network.Google.Manufacturers.Types
import           Network.Google.Prelude

-- | A resource alias for @manufacturers.accounts.products.get@ method which the
-- 'AccountsProductsGet' request conforms to.
type AccountsProductsGetResource =
     "v1" :>
       Capture "parent" Text :>
         "products" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Gets the product from a Manufacturer Center account, including product
-- issues.
--
-- /See:/ 'accountsProductsGet' smart constructor.
data AccountsProductsGet = AccountsProductsGet'
    { _apgParent         :: !Text
    , _apgXgafv          :: !(Maybe Xgafv)
    , _apgUploadProtocol :: !(Maybe Text)
    , _apgPp             :: !Bool
    , _apgAccessToken    :: !(Maybe Text)
    , _apgUploadType     :: !(Maybe Text)
    , _apgBearerToken    :: !(Maybe Text)
    , _apgName           :: !Text
    , _apgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgParent'
--
-- * 'apgXgafv'
--
-- * 'apgUploadProtocol'
--
-- * 'apgPp'
--
-- * 'apgAccessToken'
--
-- * 'apgUploadType'
--
-- * 'apgBearerToken'
--
-- * 'apgName'
--
-- * 'apgCallback'
accountsProductsGet
    :: Text -- ^ 'apgParent'
    -> Text -- ^ 'apgName'
    -> AccountsProductsGet
accountsProductsGet pApgParent_ pApgName_ =
    AccountsProductsGet'
    { _apgParent = pApgParent_
    , _apgXgafv = Nothing
    , _apgUploadProtocol = Nothing
    , _apgPp = True
    , _apgAccessToken = Nothing
    , _apgUploadType = Nothing
    , _apgBearerToken = Nothing
    , _apgName = pApgName_
    , _apgCallback = Nothing
    }

-- | Parent ID in the format \`accounts\/{account_id}\`. \`account_id\` - The
-- ID of the Manufacturer Center account.
apgParent :: Lens' AccountsProductsGet Text
apgParent
  = lens _apgParent (\ s a -> s{_apgParent = a})

-- | V1 error format.
apgXgafv :: Lens' AccountsProductsGet (Maybe Xgafv)
apgXgafv = lens _apgXgafv (\ s a -> s{_apgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apgUploadProtocol :: Lens' AccountsProductsGet (Maybe Text)
apgUploadProtocol
  = lens _apgUploadProtocol
      (\ s a -> s{_apgUploadProtocol = a})

-- | Pretty-print response.
apgPp :: Lens' AccountsProductsGet Bool
apgPp = lens _apgPp (\ s a -> s{_apgPp = a})

-- | OAuth access token.
apgAccessToken :: Lens' AccountsProductsGet (Maybe Text)
apgAccessToken
  = lens _apgAccessToken
      (\ s a -> s{_apgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apgUploadType :: Lens' AccountsProductsGet (Maybe Text)
apgUploadType
  = lens _apgUploadType
      (\ s a -> s{_apgUploadType = a})

-- | OAuth bearer token.
apgBearerToken :: Lens' AccountsProductsGet (Maybe Text)
apgBearerToken
  = lens _apgBearerToken
      (\ s a -> s{_apgBearerToken = a})

-- | Name in the format \`{target_country}:{content_language}:{product_id}\`.
-- \`target_country\` - The target country of the product as a CLDR
-- territory code (for example, US). \`content_language\` - The content
-- language of the product as a two-letter ISO 639-1 language code (for
-- example, en). \`product_id\` - The ID of the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
apgName :: Lens' AccountsProductsGet Text
apgName = lens _apgName (\ s a -> s{_apgName = a})

-- | JSONP
apgCallback :: Lens' AccountsProductsGet (Maybe Text)
apgCallback
  = lens _apgCallback (\ s a -> s{_apgCallback = a})

instance GoogleRequest AccountsProductsGet where
        type Rs AccountsProductsGet = Product
        type Scopes AccountsProductsGet =
             '["https://www.googleapis.com/auth/manufacturercenter"]
        requestClient AccountsProductsGet'{..}
          = go _apgParent _apgName _apgXgafv _apgUploadProtocol
              (Just _apgPp)
              _apgAccessToken
              _apgUploadType
              _apgBearerToken
              _apgCallback
              (Just AltJSON)
              manufacturersService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProductsGetResource)
                      mempty
