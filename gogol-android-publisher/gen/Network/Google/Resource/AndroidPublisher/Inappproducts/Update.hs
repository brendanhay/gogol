{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the details of an in-app product.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsUpdate@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.Update
    (
    -- * REST Resource
      InappproductsUpdateResource

    -- * Creating a Request
    , inappproductsUpdate'
    , InappproductsUpdate'

    -- * Request Lenses
    , iuQuotaUser
    , iuPrettyPrint
    , iuAutoConvertMissingPrices
    , iuPackageName
    , iuUserIP
    , iuKey
    , iuInAppProduct
    , iuSku
    , iuOAuthToken
    , iuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsUpdate@ which the
-- 'InappproductsUpdate'' request conforms to.
type InappproductsUpdateResource =
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
-- /See:/ 'inappproductsUpdate'' smart constructor.
data InappproductsUpdate' = InappproductsUpdate'
    { _iuQuotaUser                :: !(Maybe Text)
    , _iuPrettyPrint              :: !Bool
    , _iuAutoConvertMissingPrices :: !(Maybe Bool)
    , _iuPackageName              :: !Text
    , _iuUserIP                   :: !(Maybe Text)
    , _iuKey                      :: !(Maybe Key)
    , _iuInAppProduct             :: !InAppProduct
    , _iuSku                      :: !Text
    , _iuOAuthToken               :: !(Maybe OAuthToken)
    , _iuFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuQuotaUser'
--
-- * 'iuPrettyPrint'
--
-- * 'iuAutoConvertMissingPrices'
--
-- * 'iuPackageName'
--
-- * 'iuUserIP'
--
-- * 'iuKey'
--
-- * 'iuInAppProduct'
--
-- * 'iuSku'
--
-- * 'iuOAuthToken'
--
-- * 'iuFields'
inappproductsUpdate'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'InAppProduct'
    -> Text -- ^ 'sku'
    -> InappproductsUpdate'
inappproductsUpdate' pIuPackageName_ pIuInAppProduct_ pIuSku_ =
    InappproductsUpdate'
    { _iuQuotaUser = Nothing
    , _iuPrettyPrint = True
    , _iuAutoConvertMissingPrices = Nothing
    , _iuPackageName = pIuPackageName_
    , _iuUserIP = Nothing
    , _iuKey = Nothing
    , _iuInAppProduct = pIuInAppProduct_
    , _iuSku = pIuSku_
    , _iuOAuthToken = Nothing
    , _iuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iuQuotaUser :: Lens' InappproductsUpdate' (Maybe Text)
iuQuotaUser
  = lens _iuQuotaUser (\ s a -> s{_iuQuotaUser = a})

-- | Returns response with indentations and line breaks.
iuPrettyPrint :: Lens' InappproductsUpdate' Bool
iuPrettyPrint
  = lens _iuPrettyPrint
      (\ s a -> s{_iuPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iuAutoConvertMissingPrices :: Lens' InappproductsUpdate' (Maybe Bool)
iuAutoConvertMissingPrices
  = lens _iuAutoConvertMissingPrices
      (\ s a -> s{_iuAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iuPackageName :: Lens' InappproductsUpdate' Text
iuPackageName
  = lens _iuPackageName
      (\ s a -> s{_iuPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iuUserIP :: Lens' InappproductsUpdate' (Maybe Text)
iuUserIP = lens _iuUserIP (\ s a -> s{_iuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iuKey :: Lens' InappproductsUpdate' (Maybe Key)
iuKey = lens _iuKey (\ s a -> s{_iuKey = a})

-- | Multipart request metadata.
iuInAppProduct :: Lens' InappproductsUpdate' InAppProduct
iuInAppProduct
  = lens _iuInAppProduct
      (\ s a -> s{_iuInAppProduct = a})

-- | Unique identifier for the in-app product.
iuSku :: Lens' InappproductsUpdate' Text
iuSku = lens _iuSku (\ s a -> s{_iuSku = a})

-- | OAuth 2.0 token for the current user.
iuOAuthToken :: Lens' InappproductsUpdate' (Maybe OAuthToken)
iuOAuthToken
  = lens _iuOAuthToken (\ s a -> s{_iuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iuFields :: Lens' InappproductsUpdate' (Maybe Text)
iuFields = lens _iuFields (\ s a -> s{_iuFields = a})

instance GoogleAuth InappproductsUpdate' where
        authKey = iuKey . _Just
        authToken = iuOAuthToken . _Just

instance GoogleRequest InappproductsUpdate' where
        type Rs InappproductsUpdate' = InAppProduct
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsUpdate'{..}
          = go _iuAutoConvertMissingPrices _iuPackageName
              _iuSku
              _iuQuotaUser
              (Just _iuPrettyPrint)
              _iuUserIP
              _iuFields
              _iuKey
              _iuOAuthToken
              (Just AltJSON)
              _iuInAppProduct
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsUpdateResource)
                      r
                      u
