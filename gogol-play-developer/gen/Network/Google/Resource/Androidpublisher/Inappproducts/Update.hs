{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Inappproducts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the details of an in-app product.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherInappproductsUpdate@.
module Androidpublisher.Inappproducts.Update
    (
    -- * REST Resource
      InappproductsUpdateAPI

    -- * Creating a Request
    , inappproductsUpdate
    , InappproductsUpdate

    -- * Request Lenses
    , iuQuotaUser
    , iuPrettyPrint
    , iuAutoConvertMissingPrices
    , iuPackageName
    , iuUserIp
    , iuKey
    , iuSku
    , iuOauthToken
    , iuFields
    , iuAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherInappproductsUpdate@ which the
-- 'InappproductsUpdate' request conforms to.
type InappproductsUpdateAPI =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "autoConvertMissingPrices" Bool :>
             Put '[JSON] InAppProduct

-- | Updates the details of an in-app product.
--
-- /See:/ 'inappproductsUpdate' smart constructor.
data InappproductsUpdate = InappproductsUpdate
    { _iuQuotaUser                :: !(Maybe Text)
    , _iuPrettyPrint              :: !Bool
    , _iuAutoConvertMissingPrices :: !(Maybe Bool)
    , _iuPackageName              :: !Text
    , _iuUserIp                   :: !(Maybe Text)
    , _iuKey                      :: !(Maybe Text)
    , _iuSku                      :: !Text
    , _iuOauthToken               :: !(Maybe Text)
    , _iuFields                   :: !(Maybe Text)
    , _iuAlt                      :: !Text
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
-- * 'iuUserIp'
--
-- * 'iuKey'
--
-- * 'iuSku'
--
-- * 'iuOauthToken'
--
-- * 'iuFields'
--
-- * 'iuAlt'
inappproductsUpdate
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InappproductsUpdate
inappproductsUpdate pIuPackageName_ pIuSku_ =
    InappproductsUpdate
    { _iuQuotaUser = Nothing
    , _iuPrettyPrint = True
    , _iuAutoConvertMissingPrices = Nothing
    , _iuPackageName = pIuPackageName_
    , _iuUserIp = Nothing
    , _iuKey = Nothing
    , _iuSku = pIuSku_
    , _iuOauthToken = Nothing
    , _iuFields = Nothing
    , _iuAlt = "json"
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
iuUserIp :: Lens' InappproductsUpdate' (Maybe Text)
iuUserIp = lens _iuUserIp (\ s a -> s{_iuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iuKey :: Lens' InappproductsUpdate' (Maybe Text)
iuKey = lens _iuKey (\ s a -> s{_iuKey = a})

-- | Unique identifier for the in-app product.
iuSku :: Lens' InappproductsUpdate' Text
iuSku = lens _iuSku (\ s a -> s{_iuSku = a})

-- | OAuth 2.0 token for the current user.
iuOauthToken :: Lens' InappproductsUpdate' (Maybe Text)
iuOauthToken
  = lens _iuOauthToken (\ s a -> s{_iuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iuFields :: Lens' InappproductsUpdate' (Maybe Text)
iuFields = lens _iuFields (\ s a -> s{_iuFields = a})

-- | Data format for the response.
iuAlt :: Lens' InappproductsUpdate' Text
iuAlt = lens _iuAlt (\ s a -> s{_iuAlt = a})

instance GoogleRequest InappproductsUpdate' where
        type Rs InappproductsUpdate' = InAppProduct
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsUpdate{..}
          = go _iuQuotaUser _iuPrettyPrint
              _iuAutoConvertMissingPrices
              _iuPackageName
              _iuUserIp
              _iuKey
              _iuSku
              _iuOauthToken
              _iuFields
              _iuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsUpdateAPI)
                      r
                      u
