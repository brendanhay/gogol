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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes an entitlement to an app for a user and uninstalls it.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEntitlementsDelete@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
    (
    -- * REST Resource
      EntitlementsDeleteResource

    -- * Creating a Request
    , entitlementsDelete'
    , EntitlementsDelete'

    -- * Request Lenses
    , edEntitlementId
    , edQuotaUser
    , edPrettyPrint
    , edEnterpriseId
    , edUserIP
    , edUserId
    , edKey
    , edOAuthToken
    , edFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsDelete@ which the
-- 'EntitlementsDelete'' request conforms to.
type EntitlementsDeleteResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an entitlement to an app for a user and uninstalls it.
--
-- /See:/ 'entitlementsDelete'' smart constructor.
data EntitlementsDelete' = EntitlementsDelete'
    { _edEntitlementId :: !Text
    , _edQuotaUser     :: !(Maybe Text)
    , _edPrettyPrint   :: !Bool
    , _edEnterpriseId  :: !Text
    , _edUserIP        :: !(Maybe Text)
    , _edUserId        :: !Text
    , _edKey           :: !(Maybe Key)
    , _edOAuthToken    :: !(Maybe OAuthToken)
    , _edFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edEntitlementId'
--
-- * 'edQuotaUser'
--
-- * 'edPrettyPrint'
--
-- * 'edEnterpriseId'
--
-- * 'edUserIP'
--
-- * 'edUserId'
--
-- * 'edKey'
--
-- * 'edOAuthToken'
--
-- * 'edFields'
entitlementsDelete'
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsDelete'
entitlementsDelete' pEdEntitlementId_ pEdEnterpriseId_ pEdUserId_ =
    EntitlementsDelete'
    { _edEntitlementId = pEdEntitlementId_
    , _edQuotaUser = Nothing
    , _edPrettyPrint = True
    , _edEnterpriseId = pEdEnterpriseId_
    , _edUserIP = Nothing
    , _edUserId = pEdUserId_
    , _edKey = Nothing
    , _edOAuthToken = Nothing
    , _edFields = Nothing
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
edEntitlementId :: Lens' EntitlementsDelete' Text
edEntitlementId
  = lens _edEntitlementId
      (\ s a -> s{_edEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edQuotaUser :: Lens' EntitlementsDelete' (Maybe Text)
edQuotaUser
  = lens _edQuotaUser (\ s a -> s{_edQuotaUser = a})

-- | Returns response with indentations and line breaks.
edPrettyPrint :: Lens' EntitlementsDelete' Bool
edPrettyPrint
  = lens _edPrettyPrint
      (\ s a -> s{_edPrettyPrint = a})

-- | The ID of the enterprise.
edEnterpriseId :: Lens' EntitlementsDelete' Text
edEnterpriseId
  = lens _edEnterpriseId
      (\ s a -> s{_edEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edUserIP :: Lens' EntitlementsDelete' (Maybe Text)
edUserIP = lens _edUserIP (\ s a -> s{_edUserIP = a})

-- | The ID of the user.
edUserId :: Lens' EntitlementsDelete' Text
edUserId = lens _edUserId (\ s a -> s{_edUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edKey :: Lens' EntitlementsDelete' (Maybe Key)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | OAuth 2.0 token for the current user.
edOAuthToken :: Lens' EntitlementsDelete' (Maybe OAuthToken)
edOAuthToken
  = lens _edOAuthToken (\ s a -> s{_edOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
edFields :: Lens' EntitlementsDelete' (Maybe Text)
edFields = lens _edFields (\ s a -> s{_edFields = a})

instance GoogleAuth EntitlementsDelete' where
        authKey = edKey . _Just
        authToken = edOAuthToken . _Just

instance GoogleRequest EntitlementsDelete' where
        type Rs EntitlementsDelete' = ()
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EntitlementsDelete'{..}
          = go _edEntitlementId _edQuotaUser
              (Just _edPrettyPrint)
              _edEnterpriseId
              _edUserIP
              _edUserId
              _edKey
              _edOAuthToken
              _edFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsDeleteResource)
                      r
                      u
