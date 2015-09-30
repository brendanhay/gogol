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
-- Module      : Network.Google.Resource.Androidpublisher.Inappproducts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about the in-app product specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherInappproductsGet@.
module Network.Google.Resource.Androidpublisher.Inappproducts.Get
    (
    -- * REST Resource
      InappproductsGetResource

    -- * Creating a Request
    , inappproductsGet'
    , InappproductsGet'

    -- * Request Lenses
    , igQuotaUser
    , igPrettyPrint
    , igPackageName
    , igUserIp
    , igKey
    , igSku
    , igOauthToken
    , igFields
    , igAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherInappproductsGet@ which the
-- 'InappproductsGet'' request conforms to.
type InappproductsGetResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] InAppProduct

-- | Returns information about the in-app product specified.
--
-- /See:/ 'inappproductsGet'' smart constructor.
data InappproductsGet' = InappproductsGet'
    { _igQuotaUser   :: !(Maybe Text)
    , _igPrettyPrint :: !Bool
    , _igPackageName :: !Text
    , _igUserIp      :: !(Maybe Text)
    , _igKey         :: !(Maybe Text)
    , _igSku         :: !Text
    , _igOauthToken  :: !(Maybe Text)
    , _igFields      :: !(Maybe Text)
    , _igAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igQuotaUser'
--
-- * 'igPrettyPrint'
--
-- * 'igPackageName'
--
-- * 'igUserIp'
--
-- * 'igKey'
--
-- * 'igSku'
--
-- * 'igOauthToken'
--
-- * 'igFields'
--
-- * 'igAlt'
inappproductsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InappproductsGet'
inappproductsGet' pIgPackageName_ pIgSku_ =
    InappproductsGet'
    { _igQuotaUser = Nothing
    , _igPrettyPrint = True
    , _igPackageName = pIgPackageName_
    , _igUserIp = Nothing
    , _igKey = Nothing
    , _igSku = pIgSku_
    , _igOauthToken = Nothing
    , _igFields = Nothing
    , _igAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igQuotaUser :: Lens' InappproductsGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' InappproductsGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

igPackageName :: Lens' InappproductsGet' Text
igPackageName
  = lens _igPackageName
      (\ s a -> s{_igPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igUserIp :: Lens' InappproductsGet' (Maybe Text)
igUserIp = lens _igUserIp (\ s a -> s{_igUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' InappproductsGet' (Maybe Text)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | Unique identifier for the in-app product.
igSku :: Lens' InappproductsGet' Text
igSku = lens _igSku (\ s a -> s{_igSku = a})

-- | OAuth 2.0 token for the current user.
igOauthToken :: Lens' InappproductsGet' (Maybe Text)
igOauthToken
  = lens _igOauthToken (\ s a -> s{_igOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' InappproductsGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

-- | Data format for the response.
igAlt :: Lens' InappproductsGet' Alt
igAlt = lens _igAlt (\ s a -> s{_igAlt = a})

instance GoogleRequest InappproductsGet' where
        type Rs InappproductsGet' = InAppProduct
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsGet'{..}
          = go _igQuotaUser (Just _igPrettyPrint)
              _igPackageName
              _igUserIp
              _igKey
              _igSku
              _igOauthToken
              _igFields
              (Just _igAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsGetResource)
                      r
                      u
