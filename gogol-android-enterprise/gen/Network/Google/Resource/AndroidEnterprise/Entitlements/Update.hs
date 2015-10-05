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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEntitlementsUpdate@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Update
    (
    -- * REST Resource
      EntitlementsUpdateResource

    -- * Creating a Request
    , entitlementsUpdate'
    , EntitlementsUpdate'

    -- * Request Lenses
    , entEntitlementId
    , entQuotaUser
    , entPrettyPrint
    , entEnterpriseId
    , entUserIP
    , entPayload
    , entInstall
    , entUserId
    , entKey
    , entOAuthToken
    , entFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsUpdate@ which the
-- 'EntitlementsUpdate'' request conforms to.
type EntitlementsUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "install" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Entitlement :>
                                   Put '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ 'entitlementsUpdate'' smart constructor.
data EntitlementsUpdate' = EntitlementsUpdate'
    { _entEntitlementId :: !Text
    , _entQuotaUser     :: !(Maybe Text)
    , _entPrettyPrint   :: !Bool
    , _entEnterpriseId  :: !Text
    , _entUserIP        :: !(Maybe Text)
    , _entPayload       :: !Entitlement
    , _entInstall       :: !(Maybe Bool)
    , _entUserId        :: !Text
    , _entKey           :: !(Maybe AuthKey)
    , _entOAuthToken    :: !(Maybe OAuthToken)
    , _entFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entEntitlementId'
--
-- * 'entQuotaUser'
--
-- * 'entPrettyPrint'
--
-- * 'entEnterpriseId'
--
-- * 'entUserIP'
--
-- * 'entPayload'
--
-- * 'entInstall'
--
-- * 'entUserId'
--
-- * 'entKey'
--
-- * 'entOAuthToken'
--
-- * 'entFields'
entitlementsUpdate'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Entitlement -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> EntitlementsUpdate'
entitlementsUpdate' pEntEntitlementId_ pEntEnterpriseId_ pEntPayload_ pEntUserId_ =
    EntitlementsUpdate'
    { _entEntitlementId = pEntEntitlementId_
    , _entQuotaUser = Nothing
    , _entPrettyPrint = True
    , _entEnterpriseId = pEntEnterpriseId_
    , _entUserIP = Nothing
    , _entPayload = pEntPayload_
    , _entInstall = Nothing
    , _entUserId = pEntUserId_
    , _entKey = Nothing
    , _entOAuthToken = Nothing
    , _entFields = Nothing
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
entEntitlementId :: Lens' EntitlementsUpdate' Text
entEntitlementId
  = lens _entEntitlementId
      (\ s a -> s{_entEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
entQuotaUser :: Lens' EntitlementsUpdate' (Maybe Text)
entQuotaUser
  = lens _entQuotaUser (\ s a -> s{_entQuotaUser = a})

-- | Returns response with indentations and line breaks.
entPrettyPrint :: Lens' EntitlementsUpdate' Bool
entPrettyPrint
  = lens _entPrettyPrint
      (\ s a -> s{_entPrettyPrint = a})

-- | The ID of the enterprise.
entEnterpriseId :: Lens' EntitlementsUpdate' Text
entEnterpriseId
  = lens _entEnterpriseId
      (\ s a -> s{_entEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
entUserIP :: Lens' EntitlementsUpdate' (Maybe Text)
entUserIP
  = lens _entUserIP (\ s a -> s{_entUserIP = a})

-- | Multipart request metadata.
entPayload :: Lens' EntitlementsUpdate' Entitlement
entPayload
  = lens _entPayload (\ s a -> s{_entPayload = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
entInstall :: Lens' EntitlementsUpdate' (Maybe Bool)
entInstall
  = lens _entInstall (\ s a -> s{_entInstall = a})

-- | The ID of the user.
entUserId :: Lens' EntitlementsUpdate' Text
entUserId
  = lens _entUserId (\ s a -> s{_entUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
entKey :: Lens' EntitlementsUpdate' (Maybe AuthKey)
entKey = lens _entKey (\ s a -> s{_entKey = a})

-- | OAuth 2.0 token for the current user.
entOAuthToken :: Lens' EntitlementsUpdate' (Maybe OAuthToken)
entOAuthToken
  = lens _entOAuthToken
      (\ s a -> s{_entOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
entFields :: Lens' EntitlementsUpdate' (Maybe Text)
entFields
  = lens _entFields (\ s a -> s{_entFields = a})

instance GoogleAuth EntitlementsUpdate' where
        authKey = entKey . _Just
        authToken = entOAuthToken . _Just

instance GoogleRequest EntitlementsUpdate' where
        type Rs EntitlementsUpdate' = Entitlement
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EntitlementsUpdate'{..}
          = go _entEnterpriseId _entUserId _entEntitlementId
              _entInstall
              _entQuotaUser
              (Just _entPrettyPrint)
              _entUserIP
              _entFields
              _entKey
              _entOAuthToken
              (Just AltJSON)
              _entPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsUpdateResource)
                      r
                      u
