{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.AccountPermissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountPermissions.get@.
module Network.Google.API.DFAReporting.AccountPermissions.Get
    (
    -- * REST Resource
      AccountPermissionsGetAPI

    -- * Creating a Request
    , accountPermissionsGet'
    , AccountPermissionsGet'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIp
    , accProfileId
    , accKey
    , accId
    , accOauthToken
    , accFields
    , accAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.accountPermissions.get which the
-- 'AccountPermissionsGet'' request conforms to.
type AccountPermissionsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissions" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AccountPermission

-- | Gets one account permission by ID.
--
-- /See:/ 'accountPermissionsGet'' smart constructor.
data AccountPermissionsGet' = AccountPermissionsGet'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIp      :: !(Maybe Text)
    , _accProfileId   :: !Int64
    , _accKey         :: !(Maybe Text)
    , _accId          :: !Int64
    , _accOauthToken  :: !(Maybe Text)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIp'
--
-- * 'accProfileId'
--
-- * 'accKey'
--
-- * 'accId'
--
-- * 'accOauthToken'
--
-- * 'accFields'
--
-- * 'accAlt'
accountPermissionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountPermissionsGet'
accountPermissionsGet' pAccProfileId_ pAccId_ =
    AccountPermissionsGet'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIp = Nothing
    , _accProfileId = pAccProfileId_
    , _accKey = Nothing
    , _accId = pAccId_
    , _accOauthToken = Nothing
    , _accFields = Nothing
    , _accAlt = JSON
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
accUserIp :: Lens' AccountPermissionsGet' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | User profile ID associated with this request.
accProfileId :: Lens' AccountPermissionsGet' Int64
accProfileId
  = lens _accProfileId (\ s a -> s{_accProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountPermissionsGet' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | Account permission ID.
accId :: Lens' AccountPermissionsGet' Int64
accId = lens _accId (\ s a -> s{_accId = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountPermissionsGet' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountPermissionsGet' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountPermissionsGet' Alt
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountPermissionsGet' where
        type Rs AccountPermissionsGet' = AccountPermission
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountPermissionsGet'{..}
          = go _accQuotaUser (Just _accPrettyPrint) _accUserIp
              _accProfileId
              _accKey
              _accId
              _accOauthToken
              _accFields
              (Just _accAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountPermissionsGetAPI)
                      r
                      u
