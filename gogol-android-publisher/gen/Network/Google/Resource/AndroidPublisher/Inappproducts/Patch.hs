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
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsPatch@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.Patch
    (
    -- * REST Resource
      InappproductsPatchResource

    -- * Creating a Request
    , inappproductsPatch'
    , InappproductsPatch'

    -- * Request Lenses
    , ipQuotaUser
    , ipPrettyPrint
    , ipAutoConvertMissingPrices
    , ipPackageName
    , ipUserIP
    , ipKey
    , ipInAppProduct
    , ipSku
    , ipOAuthToken
    , ipFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsPatch@ which the
-- 'InappproductsPatch'' request conforms to.
type InappproductsPatchResource =
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
                             Patch '[JSON] InAppProduct

-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ 'inappproductsPatch'' smart constructor.
data InappproductsPatch' = InappproductsPatch'
    { _ipQuotaUser                :: !(Maybe Text)
    , _ipPrettyPrint              :: !Bool
    , _ipAutoConvertMissingPrices :: !(Maybe Bool)
    , _ipPackageName              :: !Text
    , _ipUserIP                   :: !(Maybe Text)
    , _ipKey                      :: !(Maybe Key)
    , _ipInAppProduct             :: !InAppProduct
    , _ipSku                      :: !Text
    , _ipOAuthToken               :: !(Maybe OAuthToken)
    , _ipFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipQuotaUser'
--
-- * 'ipPrettyPrint'
--
-- * 'ipAutoConvertMissingPrices'
--
-- * 'ipPackageName'
--
-- * 'ipUserIP'
--
-- * 'ipKey'
--
-- * 'ipInAppProduct'
--
-- * 'ipSku'
--
-- * 'ipOAuthToken'
--
-- * 'ipFields'
inappproductsPatch'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'InAppProduct'
    -> Text -- ^ 'sku'
    -> InappproductsPatch'
inappproductsPatch' pIpPackageName_ pIpInAppProduct_ pIpSku_ =
    InappproductsPatch'
    { _ipQuotaUser = Nothing
    , _ipPrettyPrint = True
    , _ipAutoConvertMissingPrices = Nothing
    , _ipPackageName = pIpPackageName_
    , _ipUserIP = Nothing
    , _ipKey = Nothing
    , _ipInAppProduct = pIpInAppProduct_
    , _ipSku = pIpSku_
    , _ipOAuthToken = Nothing
    , _ipFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ipQuotaUser :: Lens' InappproductsPatch' (Maybe Text)
ipQuotaUser
  = lens _ipQuotaUser (\ s a -> s{_ipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ipPrettyPrint :: Lens' InappproductsPatch' Bool
ipPrettyPrint
  = lens _ipPrettyPrint
      (\ s a -> s{_ipPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
ipAutoConvertMissingPrices :: Lens' InappproductsPatch' (Maybe Bool)
ipAutoConvertMissingPrices
  = lens _ipAutoConvertMissingPrices
      (\ s a -> s{_ipAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
ipPackageName :: Lens' InappproductsPatch' Text
ipPackageName
  = lens _ipPackageName
      (\ s a -> s{_ipPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ipUserIP :: Lens' InappproductsPatch' (Maybe Text)
ipUserIP = lens _ipUserIP (\ s a -> s{_ipUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ipKey :: Lens' InappproductsPatch' (Maybe Key)
ipKey = lens _ipKey (\ s a -> s{_ipKey = a})

-- | Multipart request metadata.
ipInAppProduct :: Lens' InappproductsPatch' InAppProduct
ipInAppProduct
  = lens _ipInAppProduct
      (\ s a -> s{_ipInAppProduct = a})

-- | Unique identifier for the in-app product.
ipSku :: Lens' InappproductsPatch' Text
ipSku = lens _ipSku (\ s a -> s{_ipSku = a})

-- | OAuth 2.0 token for the current user.
ipOAuthToken :: Lens' InappproductsPatch' (Maybe OAuthToken)
ipOAuthToken
  = lens _ipOAuthToken (\ s a -> s{_ipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ipFields :: Lens' InappproductsPatch' (Maybe Text)
ipFields = lens _ipFields (\ s a -> s{_ipFields = a})

instance GoogleAuth InappproductsPatch' where
        authKey = ipKey . _Just
        authToken = ipOAuthToken . _Just

instance GoogleRequest InappproductsPatch' where
        type Rs InappproductsPatch' = InAppProduct
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsPatch'{..}
          = go _ipAutoConvertMissingPrices _ipPackageName
              _ipSku
              _ipQuotaUser
              (Just _ipPrettyPrint)
              _ipUserIP
              _ipFields
              _ipKey
              _ipOAuthToken
              (Just AltJSON)
              _ipInAppProduct
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsPatchResource)
                      r
                      u
