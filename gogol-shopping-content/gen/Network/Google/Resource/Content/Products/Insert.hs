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
-- Module      : Network.Google.Resource.Content.Products.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a product to your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsInsert@.
module Network.Google.Resource.Content.Products.Insert
    (
    -- * REST Resource
      ProductsInsertResource

    -- * Creating a Request
    , productsInsert'
    , ProductsInsert'

    -- * Request Lenses
    , piQuotaUser
    , piMerchantId
    , piPrettyPrint
    , piUserIP
    , piPayload
    , piKey
    , piOAuthToken
    , piDryRun
    , piFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsInsert@ method which the
-- 'ProductsInsert'' request conforms to.
type ProductsInsertResource =
     Capture "merchantId" Word64 :>
       "products" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Product :> Post '[JSON] Product

-- | Uploads a product to your Merchant Center account.
--
-- /See:/ 'productsInsert'' smart constructor.
data ProductsInsert' = ProductsInsert'
    { _piQuotaUser   :: !(Maybe Text)
    , _piMerchantId  :: !Word64
    , _piPrettyPrint :: !Bool
    , _piUserIP      :: !(Maybe Text)
    , _piPayload     :: !Product
    , _piKey         :: !(Maybe AuthKey)
    , _piOAuthToken  :: !(Maybe OAuthToken)
    , _piDryRun      :: !(Maybe Bool)
    , _piFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piMerchantId'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIP'
--
-- * 'piPayload'
--
-- * 'piKey'
--
-- * 'piOAuthToken'
--
-- * 'piDryRun'
--
-- * 'piFields'
productsInsert'
    :: Word64 -- ^ 'merchantId'
    -> Product -- ^ 'payload'
    -> ProductsInsert'
productsInsert' pPiMerchantId_ pPiPayload_ =
    ProductsInsert'
    { _piQuotaUser = Nothing
    , _piMerchantId = pPiMerchantId_
    , _piPrettyPrint = True
    , _piUserIP = Nothing
    , _piPayload = pPiPayload_
    , _piKey = Nothing
    , _piOAuthToken = Nothing
    , _piDryRun = Nothing
    , _piFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' ProductsInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | The ID of the managing account.
piMerchantId :: Lens' ProductsInsert' Word64
piMerchantId
  = lens _piMerchantId (\ s a -> s{_piMerchantId = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' ProductsInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIP :: Lens' ProductsInsert' (Maybe Text)
piUserIP = lens _piUserIP (\ s a -> s{_piUserIP = a})

-- | Multipart request metadata.
piPayload :: Lens' ProductsInsert' Product
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' ProductsInsert' (Maybe AuthKey)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOAuthToken :: Lens' ProductsInsert' (Maybe OAuthToken)
piOAuthToken
  = lens _piOAuthToken (\ s a -> s{_piOAuthToken = a})

-- | Flag to run the request in dry-run mode.
piDryRun :: Lens' ProductsInsert' (Maybe Bool)
piDryRun = lens _piDryRun (\ s a -> s{_piDryRun = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' ProductsInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

instance GoogleAuth ProductsInsert' where
        _AuthKey = piKey . _Just
        _AuthToken = piOAuthToken . _Just

instance GoogleRequest ProductsInsert' where
        type Rs ProductsInsert' = Product
        request = requestWith shoppingContentRequest
        requestWith rq ProductsInsert'{..}
          = go _piMerchantId _piDryRun _piQuotaUser
              (Just _piPrettyPrint)
              _piUserIP
              _piFields
              _piKey
              _piOAuthToken
              (Just AltJSON)
              _piPayload
          where go
                  = clientBuild (Proxy :: Proxy ProductsInsertResource)
                      rq
