{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Entitlements.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEntitlementsPatch@.
module Androidenterprise.Entitlements.Patch
    (
    -- * REST Resource
      EntitlementsPatchAPI

    -- * Creating a Request
    , entitlementsPatch
    , EntitlementsPatch

    -- * Request Lenses
    , epEntitlementId
    , epQuotaUser
    , epPrettyPrint
    , epEnterpriseId
    , epUserIp
    , epInstall
    , epUserId
    , epKey
    , epOauthToken
    , epFields
    , epAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEntitlementsPatch@ which the
-- 'EntitlementsPatch' request conforms to.
type EntitlementsPatchAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "install" Bool :>
                   Patch '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
--
-- /See:/ 'entitlementsPatch' smart constructor.
data EntitlementsPatch = EntitlementsPatch
    { _epEntitlementId :: !Text
    , _epQuotaUser     :: !(Maybe Text)
    , _epPrettyPrint   :: !Bool
    , _epEnterpriseId  :: !Text
    , _epUserIp        :: !(Maybe Text)
    , _epInstall       :: !(Maybe Bool)
    , _epUserId        :: !Text
    , _epKey           :: !(Maybe Text)
    , _epOauthToken    :: !(Maybe Text)
    , _epFields        :: !(Maybe Text)
    , _epAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epEntitlementId'
--
-- * 'epQuotaUser'
--
-- * 'epPrettyPrint'
--
-- * 'epEnterpriseId'
--
-- * 'epUserIp'
--
-- * 'epInstall'
--
-- * 'epUserId'
--
-- * 'epKey'
--
-- * 'epOauthToken'
--
-- * 'epFields'
--
-- * 'epAlt'
entitlementsPatch
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsPatch
entitlementsPatch pEpEntitlementId_ pEpEnterpriseId_ pEpUserId_ =
    EntitlementsPatch
    { _epEntitlementId = pEpEntitlementId_
    , _epQuotaUser = Nothing
    , _epPrettyPrint = True
    , _epEnterpriseId = pEpEnterpriseId_
    , _epUserIp = Nothing
    , _epInstall = Nothing
    , _epUserId = pEpUserId_
    , _epKey = Nothing
    , _epOauthToken = Nothing
    , _epFields = Nothing
    , _epAlt = "json"
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
epEntitlementId :: Lens' EntitlementsPatch' Text
epEntitlementId
  = lens _epEntitlementId
      (\ s a -> s{_epEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
epQuotaUser :: Lens' EntitlementsPatch' (Maybe Text)
epQuotaUser
  = lens _epQuotaUser (\ s a -> s{_epQuotaUser = a})

-- | Returns response with indentations and line breaks.
epPrettyPrint :: Lens' EntitlementsPatch' Bool
epPrettyPrint
  = lens _epPrettyPrint
      (\ s a -> s{_epPrettyPrint = a})

-- | The ID of the enterprise.
epEnterpriseId :: Lens' EntitlementsPatch' Text
epEnterpriseId
  = lens _epEnterpriseId
      (\ s a -> s{_epEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
epUserIp :: Lens' EntitlementsPatch' (Maybe Text)
epUserIp = lens _epUserIp (\ s a -> s{_epUserIp = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
epInstall :: Lens' EntitlementsPatch' (Maybe Bool)
epInstall
  = lens _epInstall (\ s a -> s{_epInstall = a})

-- | The ID of the user.
epUserId :: Lens' EntitlementsPatch' Text
epUserId = lens _epUserId (\ s a -> s{_epUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
epKey :: Lens' EntitlementsPatch' (Maybe Text)
epKey = lens _epKey (\ s a -> s{_epKey = a})

-- | OAuth 2.0 token for the current user.
epOauthToken :: Lens' EntitlementsPatch' (Maybe Text)
epOauthToken
  = lens _epOauthToken (\ s a -> s{_epOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
epFields :: Lens' EntitlementsPatch' (Maybe Text)
epFields = lens _epFields (\ s a -> s{_epFields = a})

-- | Data format for the response.
epAlt :: Lens' EntitlementsPatch' Text
epAlt = lens _epAlt (\ s a -> s{_epAlt = a})

instance GoogleRequest EntitlementsPatch' where
        type Rs EntitlementsPatch' = Entitlement
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsPatch{..}
          = go _epEntitlementId _epQuotaUser _epPrettyPrint
              _epEnterpriseId
              _epUserIp
              _epInstall
              _epUserId
              _epKey
              _epOauthToken
              _epFields
              _epAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsPatchAPI)
                      r
                      u
