{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Entitlements.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes an entitlement to an app for a user and uninstalls it.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEntitlementsDelete@.
module Androidenterprise.Entitlements.Delete
    (
    -- * REST Resource
      EntitlementsDeleteAPI

    -- * Creating a Request
    , entitlementsDelete
    , EntitlementsDelete

    -- * Request Lenses
    , eddEntitlementId
    , eddQuotaUser
    , eddPrettyPrint
    , eddEnterpriseId
    , eddUserIp
    , eddUserId
    , eddKey
    , eddOauthToken
    , eddFields
    , eddAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEntitlementsDelete@ which the
-- 'EntitlementsDelete' request conforms to.
type EntitlementsDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               Capture "entitlementId" Text :> Delete '[JSON] ()

-- | Removes an entitlement to an app for a user and uninstalls it.
--
-- /See:/ 'entitlementsDelete' smart constructor.
data EntitlementsDelete = EntitlementsDelete
    { _eddEntitlementId :: !Text
    , _eddQuotaUser     :: !(Maybe Text)
    , _eddPrettyPrint   :: !Bool
    , _eddEnterpriseId  :: !Text
    , _eddUserIp        :: !(Maybe Text)
    , _eddUserId        :: !Text
    , _eddKey           :: !(Maybe Text)
    , _eddOauthToken    :: !(Maybe Text)
    , _eddFields        :: !(Maybe Text)
    , _eddAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eddEntitlementId'
--
-- * 'eddQuotaUser'
--
-- * 'eddPrettyPrint'
--
-- * 'eddEnterpriseId'
--
-- * 'eddUserIp'
--
-- * 'eddUserId'
--
-- * 'eddKey'
--
-- * 'eddOauthToken'
--
-- * 'eddFields'
--
-- * 'eddAlt'
entitlementsDelete
    :: Text -- ^ 'entitlementId'
    -> Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsDelete
entitlementsDelete pEddEntitlementId_ pEddEnterpriseId_ pEddUserId_ =
    EntitlementsDelete
    { _eddEntitlementId = pEddEntitlementId_
    , _eddQuotaUser = Nothing
    , _eddPrettyPrint = True
    , _eddEnterpriseId = pEddEnterpriseId_
    , _eddUserIp = Nothing
    , _eddUserId = pEddUserId_
    , _eddKey = Nothing
    , _eddOauthToken = Nothing
    , _eddFields = Nothing
    , _eddAlt = "json"
    }

-- | The ID of the entitlement, e.g. \"app:com.google.android.gm\".
eddEntitlementId :: Lens' EntitlementsDelete' Text
eddEntitlementId
  = lens _eddEntitlementId
      (\ s a -> s{_eddEntitlementId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eddQuotaUser :: Lens' EntitlementsDelete' (Maybe Text)
eddQuotaUser
  = lens _eddQuotaUser (\ s a -> s{_eddQuotaUser = a})

-- | Returns response with indentations and line breaks.
eddPrettyPrint :: Lens' EntitlementsDelete' Bool
eddPrettyPrint
  = lens _eddPrettyPrint
      (\ s a -> s{_eddPrettyPrint = a})

-- | The ID of the enterprise.
eddEnterpriseId :: Lens' EntitlementsDelete' Text
eddEnterpriseId
  = lens _eddEnterpriseId
      (\ s a -> s{_eddEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eddUserIp :: Lens' EntitlementsDelete' (Maybe Text)
eddUserIp
  = lens _eddUserIp (\ s a -> s{_eddUserIp = a})

-- | The ID of the user.
eddUserId :: Lens' EntitlementsDelete' Text
eddUserId
  = lens _eddUserId (\ s a -> s{_eddUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eddKey :: Lens' EntitlementsDelete' (Maybe Text)
eddKey = lens _eddKey (\ s a -> s{_eddKey = a})

-- | OAuth 2.0 token for the current user.
eddOauthToken :: Lens' EntitlementsDelete' (Maybe Text)
eddOauthToken
  = lens _eddOauthToken
      (\ s a -> s{_eddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eddFields :: Lens' EntitlementsDelete' (Maybe Text)
eddFields
  = lens _eddFields (\ s a -> s{_eddFields = a})

-- | Data format for the response.
eddAlt :: Lens' EntitlementsDelete' Text
eddAlt = lens _eddAlt (\ s a -> s{_eddAlt = a})

instance GoogleRequest EntitlementsDelete' where
        type Rs EntitlementsDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EntitlementsDelete{..}
          = go _eddEntitlementId _eddQuotaUser _eddPrettyPrint
              _eddEnterpriseId
              _eddUserIp
              _eddUserId
              _eddKey
              _eddOauthToken
              _eddFields
              _eddAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsDeleteAPI)
                      r
                      u
