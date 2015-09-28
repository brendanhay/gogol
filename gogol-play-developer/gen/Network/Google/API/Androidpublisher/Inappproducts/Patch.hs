{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Inappproducts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.patch@.
module Network.Google.API.Androidpublisher.Inappproducts.Patch
    (
    -- * REST Resource
      InappproductsPatchAPI

    -- * Creating a Request
    , inappproductsPatch'
    , InappproductsPatch'

    -- * Request Lenses
    , ipQuotaUser
    , ipPrettyPrint
    , ipAutoConvertMissingPrices
    , ipPackageName
    , ipUserIp
    , ipKey
    , ipSku
    , ipOauthToken
    , ipFields
    , ipAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.inappproducts.patch which the
-- 'InappproductsPatch'' request conforms to.
type InappproductsPatchAPI =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "autoConvertMissingPrices" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] InAppProduct

-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ 'inappproductsPatch'' smart constructor.
data InappproductsPatch' = InappproductsPatch'
    { _ipQuotaUser                :: !(Maybe Text)
    , _ipPrettyPrint              :: !Bool
    , _ipAutoConvertMissingPrices :: !(Maybe Bool)
    , _ipPackageName              :: !Text
    , _ipUserIp                   :: !(Maybe Text)
    , _ipKey                      :: !(Maybe Text)
    , _ipSku                      :: !Text
    , _ipOauthToken               :: !(Maybe Text)
    , _ipFields                   :: !(Maybe Text)
    , _ipAlt                      :: !Alt
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
-- * 'ipUserIp'
--
-- * 'ipKey'
--
-- * 'ipSku'
--
-- * 'ipOauthToken'
--
-- * 'ipFields'
--
-- * 'ipAlt'
inappproductsPatch'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InappproductsPatch'
inappproductsPatch' pIpPackageName_ pIpSku_ =
    InappproductsPatch'
    { _ipQuotaUser = Nothing
    , _ipPrettyPrint = True
    , _ipAutoConvertMissingPrices = Nothing
    , _ipPackageName = pIpPackageName_
    , _ipUserIp = Nothing
    , _ipKey = Nothing
    , _ipSku = pIpSku_
    , _ipOauthToken = Nothing
    , _ipFields = Nothing
    , _ipAlt = JSON
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
ipUserIp :: Lens' InappproductsPatch' (Maybe Text)
ipUserIp = lens _ipUserIp (\ s a -> s{_ipUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ipKey :: Lens' InappproductsPatch' (Maybe Text)
ipKey = lens _ipKey (\ s a -> s{_ipKey = a})

-- | Unique identifier for the in-app product.
ipSku :: Lens' InappproductsPatch' Text
ipSku = lens _ipSku (\ s a -> s{_ipSku = a})

-- | OAuth 2.0 token for the current user.
ipOauthToken :: Lens' InappproductsPatch' (Maybe Text)
ipOauthToken
  = lens _ipOauthToken (\ s a -> s{_ipOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ipFields :: Lens' InappproductsPatch' (Maybe Text)
ipFields = lens _ipFields (\ s a -> s{_ipFields = a})

-- | Data format for the response.
ipAlt :: Lens' InappproductsPatch' Alt
ipAlt = lens _ipAlt (\ s a -> s{_ipAlt = a})

instance GoogleRequest InappproductsPatch' where
        type Rs InappproductsPatch' = InAppProduct
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsPatch'{..}
          = go _ipQuotaUser (Just _ipPrettyPrint)
              _ipAutoConvertMissingPrices
              _ipPackageName
              _ipUserIp
              _ipKey
              _ipSku
              _ipOauthToken
              _ipFields
              (Just _ipAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsPatchAPI)
                      r
                      u
