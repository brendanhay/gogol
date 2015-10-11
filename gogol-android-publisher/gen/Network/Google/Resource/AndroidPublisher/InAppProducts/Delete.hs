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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsDelete@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Delete
    (
    -- * REST Resource
      InAppProductsDeleteResource

    -- * Creating a Request
    , inAppProductsDelete'
    , InAppProductsDelete'

    -- * Request Lenses
    , iapdQuotaUser
    , iapdPrettyPrint
    , iapdPackageName
    , iapdUserIP
    , iapdKey
    , iapdSKU
    , iapdOAuthToken
    , iapdFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsDelete@ method which the
-- 'InAppProductsDelete'' request conforms to.
type InAppProductsDeleteResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete an in-app product for an app.
--
-- /See:/ 'inAppProductsDelete'' smart constructor.
data InAppProductsDelete' = InAppProductsDelete'
    { _iapdQuotaUser   :: !(Maybe Text)
    , _iapdPrettyPrint :: !Bool
    , _iapdPackageName :: !Text
    , _iapdUserIP      :: !(Maybe Text)
    , _iapdKey         :: !(Maybe AuthKey)
    , _iapdSKU         :: !Text
    , _iapdOAuthToken  :: !(Maybe OAuthToken)
    , _iapdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapdQuotaUser'
--
-- * 'iapdPrettyPrint'
--
-- * 'iapdPackageName'
--
-- * 'iapdUserIP'
--
-- * 'iapdKey'
--
-- * 'iapdSKU'
--
-- * 'iapdOAuthToken'
--
-- * 'iapdFields'
inAppProductsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InAppProductsDelete'
inAppProductsDelete' pIapdPackageName_ pIapdSKU_ =
    InAppProductsDelete'
    { _iapdQuotaUser = Nothing
    , _iapdPrettyPrint = True
    , _iapdPackageName = pIapdPackageName_
    , _iapdUserIP = Nothing
    , _iapdKey = Nothing
    , _iapdSKU = pIapdSKU_
    , _iapdOAuthToken = Nothing
    , _iapdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iapdQuotaUser :: Lens' InAppProductsDelete' (Maybe Text)
iapdQuotaUser
  = lens _iapdQuotaUser
      (\ s a -> s{_iapdQuotaUser = a})

-- | Returns response with indentations and line breaks.
iapdPrettyPrint :: Lens' InAppProductsDelete' Bool
iapdPrettyPrint
  = lens _iapdPrettyPrint
      (\ s a -> s{_iapdPrettyPrint = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iapdPackageName :: Lens' InAppProductsDelete' Text
iapdPackageName
  = lens _iapdPackageName
      (\ s a -> s{_iapdPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iapdUserIP :: Lens' InAppProductsDelete' (Maybe Text)
iapdUserIP
  = lens _iapdUserIP (\ s a -> s{_iapdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iapdKey :: Lens' InAppProductsDelete' (Maybe AuthKey)
iapdKey = lens _iapdKey (\ s a -> s{_iapdKey = a})

-- | Unique identifier for the in-app product.
iapdSKU :: Lens' InAppProductsDelete' Text
iapdSKU = lens _iapdSKU (\ s a -> s{_iapdSKU = a})

-- | OAuth 2.0 token for the current user.
iapdOAuthToken :: Lens' InAppProductsDelete' (Maybe OAuthToken)
iapdOAuthToken
  = lens _iapdOAuthToken
      (\ s a -> s{_iapdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iapdFields :: Lens' InAppProductsDelete' (Maybe Text)
iapdFields
  = lens _iapdFields (\ s a -> s{_iapdFields = a})

instance GoogleAuth InAppProductsDelete' where
        _AuthKey = iapdKey . _Just
        _AuthToken = iapdOAuthToken . _Just

instance GoogleRequest InAppProductsDelete' where
        type Rs InAppProductsDelete' = ()
        request = requestWith androidPublisherRequest
        requestWith rq InAppProductsDelete'{..}
          = go _iapdPackageName _iapdSKU _iapdQuotaUser
              (Just _iapdPrettyPrint)
              _iapdUserIP
              _iapdFields
              _iapdKey
              _iapdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InAppProductsDeleteResource)
                      rq
