{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Entitlements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.entitlements.update@.
module Network.Google.API.Androidenterprise.Entitlements.Update
    (
    -- * REST Resource
      EntitlementsUpdateAPI

    -- * Creating a Request
    , entitlementsUpdate'
    , EntitlementsUpdate'

    -- * Request Lenses
    , euEntitlementId
    , euQuotaUser
    , euPrettyPrint
    , euEnterpriseId
    , euUserIp
    , euInstall
    , euUserId
    , euKey
    , euOauthToken
    , euFields
    , euAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.entitlements.update which the
-- 'EntitlementsUpdate'' request conforms to.
type EntitlementsUpdateAPI =
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
    { _euEntitlementId :: !Text
    , _euQuotaUser     :: !(Maybe Text)
    , _euPrettyPrint   :: !Bool
    , _euEnterpriseId  :: !Text
    , _euUserIp        :: !(Maybe Text)
    , _euInstall       :: !(Maybe Bool)
    , _euUserId        :: !Text
    , _euKey           :: !(Maybe Text)
    , _euOauthToken    :: !(Maybe Text)
    , _euFields        :: !(Maybe Text)
    , _euAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euEntitlementId'
--
-- * 'euQuotaUser'
--
-- * 'euPrettyPrint'
--
-- * 'euEnterpriseId'
--
-- * 'euUserIp'
--
-- * 'euInstall'
--
-- * 'euUserId'
--
-- * 'euKey'
--
-- * 'euOauthToken'
--
-- * 'euFields'
--
-- * 'euAlt'
entitlementsUpdate'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsUpdate'
entitlementsUpdate' pEuEntitlementId_ pEuEnterpriseId_ pEuUserId_ =
    EntitlementsUpdate'
    { _euEntitlementId = pEuEntitlementId_
    , _euQuotaUser = Nothing
    , _euPrettyPrint = True
    , _euEnterpriseId = pEuEnterpriseId_
    , _euUserIp = Nothing
    , _euInstall = Nothing
    , _euUserId = pEuUserId_
    , _euKey = Nothing
    , _euOauthToken = Nothing
    , _euFields = Nothing
    , _euAlt = JSON
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
euEntitlementId :: Lens' EntitlementsUpdate' Text
euEntitlementId
  = lens _euEntitlementId
      (\ s a -> s{_euEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euQuotaUser :: Lens' EntitlementsUpdate' (Maybe Text)
euQuotaUser
  = lens _euQuotaUser (\ s a -> s{_euQuotaUser = a})

-- | Returns response with indentations and line breaks.
euPrettyPrint :: Lens' EntitlementsUpdate' Bool
euPrettyPrint
  = lens _euPrettyPrint
      (\ s a -> s{_euPrettyPrint = a})

-- | The ID of the enterprise.
euEnterpriseId :: Lens' EntitlementsUpdate' Text
euEnterpriseId
  = lens _euEnterpriseId
      (\ s a -> s{_euEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euUserIp :: Lens' EntitlementsUpdate' (Maybe Text)
euUserIp = lens _euUserIp (\ s a -> s{_euUserIp = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
euInstall :: Lens' EntitlementsUpdate' (Maybe Bool)
euInstall
  = lens _euInstall (\ s a -> s{_euInstall = a})

-- | The ID of the user.
euUserId :: Lens' EntitlementsUpdate' Text
euUserId = lens _euUserId (\ s a -> s{_euUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euKey :: Lens' EntitlementsUpdate' (Maybe Text)
euKey = lens _euKey (\ s a -> s{_euKey = a})

-- | OAuth 2.0 token for the current user.
euOauthToken :: Lens' EntitlementsUpdate' (Maybe Text)
euOauthToken
  = lens _euOauthToken (\ s a -> s{_euOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
euFields :: Lens' EntitlementsUpdate' (Maybe Text)
euFields = lens _euFields (\ s a -> s{_euFields = a})

-- | Data format for the response.
euAlt :: Lens' EntitlementsUpdate' Alt
euAlt = lens _euAlt (\ s a -> s{_euAlt = a})

instance GoogleRequest EntitlementsUpdate' where
        type Rs EntitlementsUpdate' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsUpdate'{..}
          = go _euEntitlementId _euQuotaUser
              (Just _euPrettyPrint)
              _euEnterpriseId
              _euUserIp
              _euInstall
              _euUserId
              _euKey
              _euOauthToken
              _euFields
              (Just _euAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsUpdateAPI)
                      r
                      u
