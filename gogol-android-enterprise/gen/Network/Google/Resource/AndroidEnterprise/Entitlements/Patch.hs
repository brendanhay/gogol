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
    , epPayload
    , epInstall
    , epUserId
    , epKey
    , epOAuthToken
    , epFields
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
                           QueryParam "key" AuthKey :>
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
    , _epPayload       :: !Entitlement
    , _epInstall       :: !(Maybe Bool)
    , _epUserId        :: !Text
    , _epKey           :: !(Maybe AuthKey)
    , _epOAuthToken    :: !(Maybe OAuthToken)
    , _epFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'epPayload'
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
entitlementsPatch'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Entitlement -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> EntitlementsPatch'
entitlementsPatch' pEpEntitlementId_ pEpEnterpriseId_ pEpPayload_ pEpUserId_ =
    EntitlementsPatch'
    { _epEntitlementId = pEpEntitlementId_
    , _epQuotaUser = Nothing
    , _epPrettyPrint = True
    , _epEnterpriseId = pEpEnterpriseId_
    , _epUserIP = Nothing
    , _epPayload = pEpPayload_
    , _epInstall = Nothing
    , _epUserId = pEpUserId_
    , _epKey = Nothing
    , _epOAuthToken = Nothing
    , _epFields = Nothing
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

-- | Multipart request metadata.
epPayload :: Lens' EntitlementsPatch' Entitlement
epPayload
  = lens _epPayload (\ s a -> s{_epPayload = a})

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
epKey :: Lens' EntitlementsPatch' (Maybe AuthKey)
epKey = lens _epKey (\ s a -> s{_epKey = a})

-- | OAuth 2.0 token for the current user.
epOAuthToken :: Lens' EntitlementsPatch' (Maybe OAuthToken)
epOAuthToken
  = lens _epOAuthToken (\ s a -> s{_epOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
epFields :: Lens' EntitlementsPatch' (Maybe Text)
epFields = lens _epFields (\ s a -> s{_epFields = a})

instance GoogleAuth EntitlementsPatch' where
        _AuthKey = epKey . _Just
        _AuthToken = epOAuthToken . _Just

instance GoogleRequest EntitlementsPatch' where
        type Rs EntitlementsPatch' = Entitlement
        request = requestWith androidEnterpriseRequest
        requestWith rq EntitlementsPatch'{..}
          = go _epEnterpriseId _epUserId _epEntitlementId
              _epInstall
              _epQuotaUser
              (Just _epPrettyPrint)
              _epUserIP
              _epFields
              _epKey
              _epOAuthToken
              (Just AltJSON)
              _epPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy EntitlementsPatchResource)
                      rq
