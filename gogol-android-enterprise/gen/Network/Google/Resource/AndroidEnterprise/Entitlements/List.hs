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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEntitlementsList@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListResource

    -- * Creating a Request
    , entitlementsList'
    , EntitlementsList'

    -- * Request Lenses
    , elQuotaUser
    , elPrettyPrint
    , elEnterpriseId
    , elUserIP
    , elUserId
    , elKey
    , elOAuthToken
    , elFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEntitlementsList@ method which the
-- 'EntitlementsList'' request conforms to.
type EntitlementsListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "entitlements" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] EntitlementsListResponse

-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ 'entitlementsList'' smart constructor.
data EntitlementsList' = EntitlementsList'
    { _elQuotaUser    :: !(Maybe Text)
    , _elPrettyPrint  :: !Bool
    , _elEnterpriseId :: !Text
    , _elUserIP       :: !(Maybe Text)
    , _elUserId       :: !Text
    , _elKey          :: !(Maybe AuthKey)
    , _elOAuthToken   :: !(Maybe OAuthToken)
    , _elFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elQuotaUser'
--
-- * 'elPrettyPrint'
--
-- * 'elEnterpriseId'
--
-- * 'elUserIP'
--
-- * 'elUserId'
--
-- * 'elKey'
--
-- * 'elOAuthToken'
--
-- * 'elFields'
entitlementsList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> EntitlementsList'
entitlementsList' pElEnterpriseId_ pElUserId_ =
    EntitlementsList'
    { _elQuotaUser = Nothing
    , _elPrettyPrint = True
    , _elEnterpriseId = pElEnterpriseId_
    , _elUserIP = Nothing
    , _elUserId = pElUserId_
    , _elKey = Nothing
    , _elOAuthToken = Nothing
    , _elFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elQuotaUser :: Lens' EntitlementsList' (Maybe Text)
elQuotaUser
  = lens _elQuotaUser (\ s a -> s{_elQuotaUser = a})

-- | Returns response with indentations and line breaks.
elPrettyPrint :: Lens' EntitlementsList' Bool
elPrettyPrint
  = lens _elPrettyPrint
      (\ s a -> s{_elPrettyPrint = a})

-- | The ID of the enterprise.
elEnterpriseId :: Lens' EntitlementsList' Text
elEnterpriseId
  = lens _elEnterpriseId
      (\ s a -> s{_elEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elUserIP :: Lens' EntitlementsList' (Maybe Text)
elUserIP = lens _elUserIP (\ s a -> s{_elUserIP = a})

-- | The ID of the user.
elUserId :: Lens' EntitlementsList' Text
elUserId = lens _elUserId (\ s a -> s{_elUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elKey :: Lens' EntitlementsList' (Maybe AuthKey)
elKey = lens _elKey (\ s a -> s{_elKey = a})

-- | OAuth 2.0 token for the current user.
elOAuthToken :: Lens' EntitlementsList' (Maybe OAuthToken)
elOAuthToken
  = lens _elOAuthToken (\ s a -> s{_elOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
elFields :: Lens' EntitlementsList' (Maybe Text)
elFields = lens _elFields (\ s a -> s{_elFields = a})

instance GoogleAuth EntitlementsList' where
        _AuthKey = elKey . _Just
        _AuthToken = elOAuthToken . _Just

instance GoogleRequest EntitlementsList' where
        type Rs EntitlementsList' = EntitlementsListResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq EntitlementsList'{..}
          = go _elEnterpriseId _elUserId _elQuotaUser
              (Just _elPrettyPrint)
              _elUserIP
              _elFields
              _elKey
              _elOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EntitlementsListResource)
                      rq
