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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionsGet@.
module Network.Google.Resource.DFAReporting.AccountPermissions.Get
    (
    -- * REST Resource
      AccountPermissionsGetResource

    -- * Creating a Request
    , accountPermissionsGet'
    , AccountPermissionsGet'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIP
    , accProFileId
    , accKey
    , accId
    , accOAuthToken
    , accFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionsGet@ method which the
-- 'AccountPermissionsGet'' request conforms to.
type AccountPermissionsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissions" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountPermission

-- | Gets one account permission by ID.
--
-- /See:/ 'accountPermissionsGet'' smart constructor.
data AccountPermissionsGet' = AccountPermissionsGet'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIP      :: !(Maybe Text)
    , _accProFileId   :: !Int64
    , _accKey         :: !(Maybe AuthKey)
    , _accId          :: !Int64
    , _accOAuthToken  :: !(Maybe OAuthToken)
    , _accFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIP'
--
-- * 'accProFileId'
--
-- * 'accKey'
--
-- * 'accId'
--
-- * 'accOAuthToken'
--
-- * 'accFields'
accountPermissionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountPermissionsGet'
accountPermissionsGet' pAccProFileId_ pAccId_ =
    AccountPermissionsGet'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIP = Nothing
    , _accProFileId = pAccProFileId_
    , _accKey = Nothing
    , _accId = pAccId_
    , _accOAuthToken = Nothing
    , _accFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountPermissionsGet' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountPermissionsGet' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIP :: Lens' AccountPermissionsGet' (Maybe Text)
accUserIP
  = lens _accUserIP (\ s a -> s{_accUserIP = a})

-- | User profile ID associated with this request.
accProFileId :: Lens' AccountPermissionsGet' Int64
accProFileId
  = lens _accProFileId (\ s a -> s{_accProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountPermissionsGet' (Maybe AuthKey)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | Account permission ID.
accId :: Lens' AccountPermissionsGet' Int64
accId = lens _accId (\ s a -> s{_accId = a})

-- | OAuth 2.0 token for the current user.
accOAuthToken :: Lens' AccountPermissionsGet' (Maybe OAuthToken)
accOAuthToken
  = lens _accOAuthToken
      (\ s a -> s{_accOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountPermissionsGet' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

instance GoogleAuth AccountPermissionsGet' where
        _AuthKey = accKey . _Just
        _AuthToken = accOAuthToken . _Just

instance GoogleRequest AccountPermissionsGet' where
        type Rs AccountPermissionsGet' = AccountPermission
        request = requestWith dFAReportingRequest
        requestWith rq AccountPermissionsGet'{..}
          = go _accProFileId _accId _accQuotaUser
              (Just _accPrettyPrint)
              _accUserIP
              _accFields
              _accKey
              _accOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountPermissionsGetResource)
                      rq
