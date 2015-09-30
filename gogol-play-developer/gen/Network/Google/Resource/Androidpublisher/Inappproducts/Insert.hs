{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Inappproducts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherInappproductsInsert@.
module Androidpublisher.Inappproducts.Insert
    (
    -- * REST Resource
      InappproductsInsertAPI

    -- * Creating a Request
    , inappproductsInsert
    , InappproductsInsert

    -- * Request Lenses
    , iiQuotaUser
    , iiPrettyPrint
    , iiAutoConvertMissingPrices
    , iiPackageName
    , iiUserIp
    , iiKey
    , iiOauthToken
    , iiFields
    , iiAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherInappproductsInsert@ which the
-- 'InappproductsInsert' request conforms to.
type InappproductsInsertAPI =
     Capture "packageName" Text :>
       "inappproducts" :>
         QueryParam "autoConvertMissingPrices" Bool :>
           Post '[JSON] InAppProduct

-- | Creates a new in-app product for an app.
--
-- /See:/ 'inappproductsInsert' smart constructor.
data InappproductsInsert = InappproductsInsert
    { _iiQuotaUser                :: !(Maybe Text)
    , _iiPrettyPrint              :: !Bool
    , _iiAutoConvertMissingPrices :: !(Maybe Bool)
    , _iiPackageName              :: !Text
    , _iiUserIp                   :: !(Maybe Text)
    , _iiKey                      :: !(Maybe Text)
    , _iiOauthToken               :: !(Maybe Text)
    , _iiFields                   :: !(Maybe Text)
    , _iiAlt                      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiQuotaUser'
--
-- * 'iiPrettyPrint'
--
-- * 'iiAutoConvertMissingPrices'
--
-- * 'iiPackageName'
--
-- * 'iiUserIp'
--
-- * 'iiKey'
--
-- * 'iiOauthToken'
--
-- * 'iiFields'
--
-- * 'iiAlt'
inappproductsInsert
    :: Text -- ^ 'packageName'
    -> InappproductsInsert
inappproductsInsert pIiPackageName_ =
    InappproductsInsert
    { _iiQuotaUser = Nothing
    , _iiPrettyPrint = True
    , _iiAutoConvertMissingPrices = Nothing
    , _iiPackageName = pIiPackageName_
    , _iiUserIp = Nothing
    , _iiKey = Nothing
    , _iiOauthToken = Nothing
    , _iiFields = Nothing
    , _iiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iiQuotaUser :: Lens' InappproductsInsert' (Maybe Text)
iiQuotaUser
  = lens _iiQuotaUser (\ s a -> s{_iiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iiPrettyPrint :: Lens' InappproductsInsert' Bool
iiPrettyPrint
  = lens _iiPrettyPrint
      (\ s a -> s{_iiPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iiAutoConvertMissingPrices :: Lens' InappproductsInsert' (Maybe Bool)
iiAutoConvertMissingPrices
  = lens _iiAutoConvertMissingPrices
      (\ s a -> s{_iiAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app; for example, \"com.spiffygame\".
iiPackageName :: Lens' InappproductsInsert' Text
iiPackageName
  = lens _iiPackageName
      (\ s a -> s{_iiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iiUserIp :: Lens' InappproductsInsert' (Maybe Text)
iiUserIp = lens _iiUserIp (\ s a -> s{_iiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iiKey :: Lens' InappproductsInsert' (Maybe Text)
iiKey = lens _iiKey (\ s a -> s{_iiKey = a})

-- | OAuth 2.0 token for the current user.
iiOauthToken :: Lens' InappproductsInsert' (Maybe Text)
iiOauthToken
  = lens _iiOauthToken (\ s a -> s{_iiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iiFields :: Lens' InappproductsInsert' (Maybe Text)
iiFields = lens _iiFields (\ s a -> s{_iiFields = a})

-- | Data format for the response.
iiAlt :: Lens' InappproductsInsert' Text
iiAlt = lens _iiAlt (\ s a -> s{_iiAlt = a})

instance GoogleRequest InappproductsInsert' where
        type Rs InappproductsInsert' = InAppProduct
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsInsert{..}
          = go _iiQuotaUser _iiPrettyPrint
              _iiAutoConvertMissingPrices
              _iiPackageName
              _iiUserIp
              _iiKey
              _iiOauthToken
              _iiFields
              _iiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsInsertAPI)
                      r
                      u
