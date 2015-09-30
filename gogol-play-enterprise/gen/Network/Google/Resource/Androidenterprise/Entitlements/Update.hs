{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Androidenterprise.Entitlements.Update
    (
    -- * REST Resource
      EntitlementsUpdateAPI

    -- * Creating a Request
    , entitlementsUpdate
    , EntitlementsUpdate

    -- * Request Lenses
    , euuEntitlementId
    , euuQuotaUser
    , euuPrettyPrint
    , euuEnterpriseId
    , euuUserIp
    , euuInstall
    , euuUserId
    , euuKey
    , euuOauthToken
    , euuFields
    , euuAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEntitlementsUpdate@ which the
-- 'EntitlementsUpdate' request conforms to.
type EntitlementsUpdateAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "install" Bool :> Put '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ 'entitlementsUpdate' smart constructor.
data EntitlementsUpdate = EntitlementsUpdate
    { _euuEntitlementId :: !Text
    , _euuQuotaUser     :: !(Maybe Text)
    , _euuPrettyPrint   :: !Bool
    , _euuEnterpriseId  :: !Text
    , _euuUserIp        :: !(Maybe Text)
    , _euuInstall       :: !(Maybe Bool)
    , _euuUserId        :: !Text
    , _euuKey           :: !(Maybe Text)
    , _euuOauthToken    :: !(Maybe Text)
    , _euuFields        :: !(Maybe Text)
    , _euuAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euuEntitlementId'
--
-- * 'euuQuotaUser'
--
-- * 'euuPrettyPrint'
--
-- * 'euuEnterpriseId'
--
-- * 'euuUserIp'
--
-- * 'euuInstall'
--
-- * 'euuUserId'
--
-- * 'euuKey'
--
-- * 'euuOauthToken'
--
-- * 'euuFields'
--
-- * 'euuAlt'
entitlementsUpdate
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsUpdate
entitlementsUpdate pEuuEntitlementId_ pEuuEnterpriseId_ pEuuUserId_ =
    EntitlementsUpdate
    { _euuEntitlementId = pEuuEntitlementId_
    , _euuQuotaUser = Nothing
    , _euuPrettyPrint = True
    , _euuEnterpriseId = pEuuEnterpriseId_
    , _euuUserIp = Nothing
    , _euuInstall = Nothing
    , _euuUserId = pEuuUserId_
    , _euuKey = Nothing
    , _euuOauthToken = Nothing
    , _euuFields = Nothing
    , _euuAlt = "json"
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
euuEntitlementId :: Lens' EntitlementsUpdate' Text
euuEntitlementId
  = lens _euuEntitlementId
      (\ s a -> s{_euuEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euuQuotaUser :: Lens' EntitlementsUpdate' (Maybe Text)
euuQuotaUser
  = lens _euuQuotaUser (\ s a -> s{_euuQuotaUser = a})

-- | Returns response with indentations and line breaks.
euuPrettyPrint :: Lens' EntitlementsUpdate' Bool
euuPrettyPrint
  = lens _euuPrettyPrint
      (\ s a -> s{_euuPrettyPrint = a})

-- | The ID of the enterprise.
euuEnterpriseId :: Lens' EntitlementsUpdate' Text
euuEnterpriseId
  = lens _euuEnterpriseId
      (\ s a -> s{_euuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euuUserIp :: Lens' EntitlementsUpdate' (Maybe Text)
euuUserIp
  = lens _euuUserIp (\ s a -> s{_euuUserIp = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
euuInstall :: Lens' EntitlementsUpdate' (Maybe Bool)
euuInstall
  = lens _euuInstall (\ s a -> s{_euuInstall = a})

-- | The ID of the user.
euuUserId :: Lens' EntitlementsUpdate' Text
euuUserId
  = lens _euuUserId (\ s a -> s{_euuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euuKey :: Lens' EntitlementsUpdate' (Maybe Text)
euuKey = lens _euuKey (\ s a -> s{_euuKey = a})

-- | OAuth 2.0 token for the current user.
euuOauthToken :: Lens' EntitlementsUpdate' (Maybe Text)
euuOauthToken
  = lens _euuOauthToken
      (\ s a -> s{_euuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
euuFields :: Lens' EntitlementsUpdate' (Maybe Text)
euuFields
  = lens _euuFields (\ s a -> s{_euuFields = a})

-- | Data format for the response.
euuAlt :: Lens' EntitlementsUpdate' Text
euuAlt = lens _euuAlt (\ s a -> s{_euuAlt = a})

instance GoogleRequest EntitlementsUpdate' where
        type Rs EntitlementsUpdate' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsUpdate{..}
          = go _euuEntitlementId _euuQuotaUser _euuPrettyPrint
              _euuEnterpriseId
              _euuUserIp
              _euuInstall
              _euuUserId
              _euuKey
              _euuOauthToken
              _euuFields
              _euuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsUpdateAPI)
                      r
                      u
