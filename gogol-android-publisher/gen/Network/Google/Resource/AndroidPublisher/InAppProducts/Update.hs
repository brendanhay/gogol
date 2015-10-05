{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the details of an in-app product.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsUpdate@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Update
    (
    -- * REST Resource
      InAppProductsUpdateResource

    -- * Creating a Request
    , inAppProductsUpdate'
    , InAppProductsUpdate'

    -- * Request Lenses
    , iapuQuotaUser
    , iapuPrettyPrint
    , iapuAutoConvertMissingPrices
    , iapuPackageName
    , iapuUserIP
    , iapuPayload
    , iapuKey
    , iapuSKU
    , iapuOAuthToken
    , iapuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsUpdate@ which the
-- 'InAppProductsUpdate'' request conforms to.
type InAppProductsUpdateResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "autoConvertMissingPrices" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InAppProduct :>
                             Put '[JSON] InAppProduct

-- | Updates the details of an in-app product.
--
-- /See:/ 'inAppProductsUpdate'' smart constructor.
data InAppProductsUpdate' = InAppProductsUpdate'
    { _iapuQuotaUser                :: !(Maybe Text)
    , _iapuPrettyPrint              :: !Bool
    , _iapuAutoConvertMissingPrices :: !(Maybe Bool)
    , _iapuPackageName              :: !Text
    , _iapuUserIP                   :: !(Maybe Text)
    , _iapuPayload                  :: !InAppProduct
    , _iapuKey                      :: !(Maybe Key)
    , _iapuSKU                      :: !Text
    , _iapuOAuthToken               :: !(Maybe OAuthToken)
    , _iapuFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapuQuotaUser'
--
-- * 'iapuPrettyPrint'
--
-- * 'iapuAutoConvertMissingPrices'
--
-- * 'iapuPackageName'
--
-- * 'iapuUserIP'
--
-- * 'iapuPayload'
--
-- * 'iapuKey'
--
-- * 'iapuSKU'
--
-- * 'iapuOAuthToken'
--
-- * 'iapuFields'
inAppProductsUpdate'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'payload'
    -> Text -- ^ 'sku'
    -> InAppProductsUpdate'
inAppProductsUpdate' pIapuPackageName_ pIapuPayload_ pIapuSKU_ =
    InAppProductsUpdate'
    { _iapuQuotaUser = Nothing
    , _iapuPrettyPrint = True
    , _iapuAutoConvertMissingPrices = Nothing
    , _iapuPackageName = pIapuPackageName_
    , _iapuUserIP = Nothing
    , _iapuPayload = pIapuPayload_
    , _iapuKey = Nothing
    , _iapuSKU = pIapuSKU_
    , _iapuOAuthToken = Nothing
    , _iapuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iapuQuotaUser :: Lens' InAppProductsUpdate' (Maybe Text)
iapuQuotaUser
  = lens _iapuQuotaUser
      (\ s a -> s{_iapuQuotaUser = a})

-- | Returns response with indentations and line breaks.
iapuPrettyPrint :: Lens' InAppProductsUpdate' Bool
iapuPrettyPrint
  = lens _iapuPrettyPrint
      (\ s a -> s{_iapuPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iapuAutoConvertMissingPrices :: Lens' InAppProductsUpdate' (Maybe Bool)
iapuAutoConvertMissingPrices
  = lens _iapuAutoConvertMissingPrices
      (\ s a -> s{_iapuAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iapuPackageName :: Lens' InAppProductsUpdate' Text
iapuPackageName
  = lens _iapuPackageName
      (\ s a -> s{_iapuPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iapuUserIP :: Lens' InAppProductsUpdate' (Maybe Text)
iapuUserIP
  = lens _iapuUserIP (\ s a -> s{_iapuUserIP = a})

-- | Multipart request metadata.
iapuPayload :: Lens' InAppProductsUpdate' InAppProduct
iapuPayload
  = lens _iapuPayload (\ s a -> s{_iapuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iapuKey :: Lens' InAppProductsUpdate' (Maybe Key)
iapuKey = lens _iapuKey (\ s a -> s{_iapuKey = a})

-- | Unique identifier for the in-app product.
iapuSKU :: Lens' InAppProductsUpdate' Text
iapuSKU = lens _iapuSKU (\ s a -> s{_iapuSKU = a})

-- | OAuth 2.0 token for the current user.
iapuOAuthToken :: Lens' InAppProductsUpdate' (Maybe OAuthToken)
iapuOAuthToken
  = lens _iapuOAuthToken
      (\ s a -> s{_iapuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iapuFields :: Lens' InAppProductsUpdate' (Maybe Text)
iapuFields
  = lens _iapuFields (\ s a -> s{_iapuFields = a})

instance GoogleAuth InAppProductsUpdate' where
        authKey = iapuKey . _Just
        authToken = iapuOAuthToken . _Just

instance GoogleRequest InAppProductsUpdate' where
        type Rs InAppProductsUpdate' = InAppProduct
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InAppProductsUpdate'{..}
          = go _iapuPackageName _iapuSKU
              _iapuAutoConvertMissingPrices
              _iapuQuotaUser
              (Just _iapuPrettyPrint)
              _iapuUserIP
              _iapuFields
              _iapuKey
              _iapuOAuthToken
              (Just AltJSON)
              _iapuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InAppProductsUpdateResource)
                      r
                      u
