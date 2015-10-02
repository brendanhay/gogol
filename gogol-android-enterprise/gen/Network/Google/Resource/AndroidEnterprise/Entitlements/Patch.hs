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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEntitlementsPatch@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Patch
    (
    -- * REST Resource
      EntitlementsPatchResource

    -- * Creating a Request
    , entitlementsPatch'
    , EntitlementsPatch'

    -- * Request Lenses
    , epEntitlementId
    , epQuotaUser
    , epPrettyPrint
    , epEnterpriseId
    , epUserIP
    , epInstall
    , epUserId
    , epKey
    , epOAuthToken
    , epFields
    , epEntitlement
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsPatch@ which the
-- 'EntitlementsPatch'' request conforms to.
type EntitlementsPatchResource =
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
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Entitlement :>
                                   Patch '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user. This method
-- supports patch semantics.
--
-- /See:/ 'entitlementsPatch'' smart constructor.
data EntitlementsPatch' = EntitlementsPatch'
    { _epEntitlementId :: !Text
    , _epQuotaUser     :: !(Maybe Text)
    , _epPrettyPrint   :: !Bool
    , _epEnterpriseId  :: !Text
    , _epUserIP        :: !(Maybe Text)
    , _epInstall       :: !(Maybe Bool)
    , _epUserId        :: !Text
    , _epKey           :: !(Maybe Key)
    , _epOAuthToken    :: !(Maybe OAuthToken)
    , _epFields        :: !(Maybe Text)
    , _epEntitlement   :: !Entitlement
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
-- * 'epUserIP'
--
-- * 'epInstall'
--
-- * 'epUserId'
--
-- * 'epKey'
--
-- * 'epOAuthToken'
--
-- * 'epFields'
--
-- * 'epEntitlement'
entitlementsPatch'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Entitlement -- ^ 'Entitlement'
    -> EntitlementsPatch'
entitlementsPatch' pEpEntitlementId_ pEpEnterpriseId_ pEpUserId_ pEpEntitlement_ =
    EntitlementsPatch'
    { _epEntitlementId = pEpEntitlementId_
    , _epQuotaUser = Nothing
    , _epPrettyPrint = True
    , _epEnterpriseId = pEpEnterpriseId_
    , _epUserIP = Nothing
    , _epInstall = Nothing
    , _epUserId = pEpUserId_
    , _epKey = Nothing
    , _epOAuthToken = Nothing
    , _epFields = Nothing
    , _epEntitlement = pEpEntitlement_
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
epUserIP :: Lens' EntitlementsPatch' (Maybe Text)
epUserIP = lens _epUserIP (\ s a -> s{_epUserIP = a})

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
epKey :: Lens' EntitlementsPatch' (Maybe Key)
epKey = lens _epKey (\ s a -> s{_epKey = a})

-- | OAuth 2.0 token for the current user.
epOAuthToken :: Lens' EntitlementsPatch' (Maybe OAuthToken)
epOAuthToken
  = lens _epOAuthToken (\ s a -> s{_epOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
epFields :: Lens' EntitlementsPatch' (Maybe Text)
epFields = lens _epFields (\ s a -> s{_epFields = a})

-- | Multipart request metadata.
epEntitlement :: Lens' EntitlementsPatch' Entitlement
epEntitlement
  = lens _epEntitlement
      (\ s a -> s{_epEntitlement = a})

instance GoogleAuth EntitlementsPatch' where
        authKey = epKey . _Just
        authToken = epOAuthToken . _Just

instance GoogleRequest EntitlementsPatch' where
        type Rs EntitlementsPatch' = Entitlement
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EntitlementsPatch'{..}
          = go _epInstall _epEnterpriseId _epUserId
              _epEntitlementId
              _epQuotaUser
              (Just _epPrettyPrint)
              _epUserIP
              _epFields
              _epKey
              _epOAuthToken
              (Just AltJSON)
              _epEntitlement
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsPatchResource)
                      r
                      u
