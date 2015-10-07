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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of account permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionGroupsList@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
    (
    -- * REST Resource
      AccountPermissionGroupsListResource

    -- * Creating a Request
    , accountPermissionGroupsList'
    , AccountPermissionGroupsList'

    -- * Request Lenses
    , apglQuotaUser
    , apglPrettyPrint
    , apglUserIP
    , apglProFileId
    , apglKey
    , apglOAuthToken
    , apglFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionGroupsList@ method which the
-- 'AccountPermissionGroupsList'' request conforms to.
type AccountPermissionGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissionGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AccountPermissionGroupsListResponse

-- | Retrieves the list of account permission groups.
--
-- /See:/ 'accountPermissionGroupsList'' smart constructor.
data AccountPermissionGroupsList' = AccountPermissionGroupsList'
    { _apglQuotaUser   :: !(Maybe Text)
    , _apglPrettyPrint :: !Bool
    , _apglUserIP      :: !(Maybe Text)
    , _apglProFileId   :: !Int64
    , _apglKey         :: !(Maybe AuthKey)
    , _apglOAuthToken  :: !(Maybe OAuthToken)
    , _apglFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apglQuotaUser'
--
-- * 'apglPrettyPrint'
--
-- * 'apglUserIP'
--
-- * 'apglProFileId'
--
-- * 'apglKey'
--
-- * 'apglOAuthToken'
--
-- * 'apglFields'
accountPermissionGroupsList'
    :: Int64 -- ^ 'profileId'
    -> AccountPermissionGroupsList'
accountPermissionGroupsList' pApglProFileId_ =
    AccountPermissionGroupsList'
    { _apglQuotaUser = Nothing
    , _apglPrettyPrint = True
    , _apglUserIP = Nothing
    , _apglProFileId = pApglProFileId_
    , _apglKey = Nothing
    , _apglOAuthToken = Nothing
    , _apglFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apglQuotaUser :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglQuotaUser
  = lens _apglQuotaUser
      (\ s a -> s{_apglQuotaUser = a})

-- | Returns response with indentations and line breaks.
apglPrettyPrint :: Lens' AccountPermissionGroupsList' Bool
apglPrettyPrint
  = lens _apglPrettyPrint
      (\ s a -> s{_apglPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apglUserIP :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglUserIP
  = lens _apglUserIP (\ s a -> s{_apglUserIP = a})

-- | User profile ID associated with this request.
apglProFileId :: Lens' AccountPermissionGroupsList' Int64
apglProFileId
  = lens _apglProFileId
      (\ s a -> s{_apglProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apglKey :: Lens' AccountPermissionGroupsList' (Maybe AuthKey)
apglKey = lens _apglKey (\ s a -> s{_apglKey = a})

-- | OAuth 2.0 token for the current user.
apglOAuthToken :: Lens' AccountPermissionGroupsList' (Maybe OAuthToken)
apglOAuthToken
  = lens _apglOAuthToken
      (\ s a -> s{_apglOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apglFields :: Lens' AccountPermissionGroupsList' (Maybe Text)
apglFields
  = lens _apglFields (\ s a -> s{_apglFields = a})

instance GoogleAuth AccountPermissionGroupsList'
         where
        _AuthKey = apglKey . _Just
        _AuthToken = apglOAuthToken . _Just

instance GoogleRequest AccountPermissionGroupsList'
         where
        type Rs AccountPermissionGroupsList' =
             AccountPermissionGroupsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq AccountPermissionGroupsList'{..}
          = go _apglProFileId _apglQuotaUser
              (Just _apglPrettyPrint)
              _apglUserIP
              _apglFields
              _apglKey
              _apglOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountPermissionGroupsListResource)
                      rq
