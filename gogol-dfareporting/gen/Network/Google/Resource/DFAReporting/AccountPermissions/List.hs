{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of account permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionsList@.
module Network.Google.Resource.DFAReporting.AccountPermissions.List
    (
    -- * REST Resource
      AccountPermissionsListResource

    -- * Creating a Request
    , accountPermissionsList'
    , AccountPermissionsList'

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIP
    , aplProfileId
    , aplKey
    , aplOAuthToken
    , aplFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionsList@ which the
-- 'AccountPermissionsList'' request conforms to.
type AccountPermissionsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AccountPermissionsListResponse

-- | Retrieves the list of account permissions.
--
-- /See:/ 'accountPermissionsList'' smart constructor.
data AccountPermissionsList' = AccountPermissionsList'
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIP      :: !(Maybe Text)
    , _aplProfileId   :: !Int64
    , _aplKey         :: !(Maybe Key)
    , _aplOAuthToken  :: !(Maybe OAuthToken)
    , _aplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIP'
--
-- * 'aplProfileId'
--
-- * 'aplKey'
--
-- * 'aplOAuthToken'
--
-- * 'aplFields'
accountPermissionsList'
    :: Int64 -- ^ 'profileId'
    -> AccountPermissionsList'
accountPermissionsList' pAplProfileId_ =
    AccountPermissionsList'
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIP = Nothing
    , _aplProfileId = pAplProfileId_
    , _aplKey = Nothing
    , _aplOAuthToken = Nothing
    , _aplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AccountPermissionsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AccountPermissionsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIP :: Lens' AccountPermissionsList' (Maybe Text)
aplUserIP
  = lens _aplUserIP (\ s a -> s{_aplUserIP = a})

-- | User profile ID associated with this request.
aplProfileId :: Lens' AccountPermissionsList' Int64
aplProfileId
  = lens _aplProfileId (\ s a -> s{_aplProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AccountPermissionsList' (Maybe Key)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | OAuth 2.0 token for the current user.
aplOAuthToken :: Lens' AccountPermissionsList' (Maybe OAuthToken)
aplOAuthToken
  = lens _aplOAuthToken
      (\ s a -> s{_aplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AccountPermissionsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

instance GoogleAuth AccountPermissionsList' where
        authKey = aplKey . _Just
        authToken = aplOAuthToken . _Just

instance GoogleRequest AccountPermissionsList' where
        type Rs AccountPermissionsList' =
             AccountPermissionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountPermissionsList'{..}
          = go _aplProfileId _aplQuotaUser
              (Just _aplPrettyPrint)
              _aplUserIP
              _aplFields
              _aplKey
              _aplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountPermissionsListResource)
                      r
                      u
