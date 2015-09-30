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
-- Module      : Network.Google.Resource.Androidenterprise.Entitlements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEntitlementsUpdate@.
module Network.Google.Resource.Androidenterprise.Entitlements.Update
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
    , entUserIp
    , entInstall
    , entUserId
    , entKey
    , entOauthToken
    , entFields
    , entAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEntitlementsUpdate@ which the
-- 'EntitlementsUpdate'' request conforms to.
type EntitlementsUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "install" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ 'entitlementsUpdate'' smart constructor.
data EntitlementsUpdate' = EntitlementsUpdate'
    { _entEntitlementId :: !Text
    , _entQuotaUser     :: !(Maybe Text)
    , _entPrettyPrint   :: !Bool
    , _entEnterpriseId  :: !Text
    , _entUserIp        :: !(Maybe Text)
    , _entInstall       :: !(Maybe Bool)
    , _entUserId        :: !Text
    , _entKey           :: !(Maybe Text)
    , _entOauthToken    :: !(Maybe Text)
    , _entFields        :: !(Maybe Text)
    , _entAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'entUserIp'
--
-- * 'entInstall'
--
-- * 'entUserId'
--
-- * 'entKey'
--
-- * 'entOauthToken'
--
-- * 'entFields'
--
-- * 'entAlt'
entitlementsUpdate'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsUpdate'
entitlementsUpdate' pEntEntitlementId_ pEntEnterpriseId_ pEntUserId_ =
    EntitlementsUpdate'
    { _entEntitlementId = pEntEntitlementId_
    , _entQuotaUser = Nothing
    , _entPrettyPrint = True
    , _entEnterpriseId = pEntEnterpriseId_
    , _entUserIp = Nothing
    , _entInstall = Nothing
    , _entUserId = pEntUserId_
    , _entKey = Nothing
    , _entOauthToken = Nothing
    , _entFields = Nothing
    , _entAlt = JSON
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
entUserIp :: Lens' EntitlementsUpdate' (Maybe Text)
entUserIp
  = lens _entUserIp (\ s a -> s{_entUserIp = a})

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
entKey :: Lens' EntitlementsUpdate' (Maybe Text)
entKey = lens _entKey (\ s a -> s{_entKey = a})

-- | OAuth 2.0 token for the current user.
entOauthToken :: Lens' EntitlementsUpdate' (Maybe Text)
entOauthToken
  = lens _entOauthToken
      (\ s a -> s{_entOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
entFields :: Lens' EntitlementsUpdate' (Maybe Text)
entFields
  = lens _entFields (\ s a -> s{_entFields = a})

-- | Data format for the response.
entAlt :: Lens' EntitlementsUpdate' Alt
entAlt = lens _entAlt (\ s a -> s{_entAlt = a})

instance GoogleRequest EntitlementsUpdate' where
        type Rs EntitlementsUpdate' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsUpdate'{..}
          = go _entEntitlementId _entQuotaUser
              (Just _entPrettyPrint)
              _entEnterpriseId
              _entUserIp
              _entInstall
              _entUserId
              _entKey
              _entOauthToken
              _entFields
              (Just _entAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsUpdateResource)
                      r
                      u
