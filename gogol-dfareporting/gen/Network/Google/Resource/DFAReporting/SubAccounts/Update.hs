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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubAccountsUpdate@.
module Network.Google.Resource.DFAReporting.SubAccounts.Update
    (
    -- * REST Resource
      SubAccountsUpdateResource

    -- * Creating a Request
    , subAccountsUpdate'
    , SubAccountsUpdate'

    -- * Request Lenses
    , sauQuotaUser
    , sauPrettyPrint
    , sauSubAccount
    , sauUserIP
    , sauProfileId
    , sauKey
    , sauOAuthToken
    , sauFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubAccountsUpdate@ which the
-- 'SubAccountsUpdate'' request conforms to.
type SubAccountsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SubAccount :> Put '[JSON] SubAccount

-- | Updates an existing subaccount.
--
-- /See:/ 'subAccountsUpdate'' smart constructor.
data SubAccountsUpdate' = SubAccountsUpdate'
    { _sauQuotaUser   :: !(Maybe Text)
    , _sauPrettyPrint :: !Bool
    , _sauSubAccount  :: !SubAccount
    , _sauUserIP      :: !(Maybe Text)
    , _sauProfileId   :: !Int64
    , _sauKey         :: !(Maybe Key)
    , _sauOAuthToken  :: !(Maybe OAuthToken)
    , _sauFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sauQuotaUser'
--
-- * 'sauPrettyPrint'
--
-- * 'sauSubAccount'
--
-- * 'sauUserIP'
--
-- * 'sauProfileId'
--
-- * 'sauKey'
--
-- * 'sauOAuthToken'
--
-- * 'sauFields'
subAccountsUpdate'
    :: SubAccount -- ^ 'SubAccount'
    -> Int64 -- ^ 'profileId'
    -> SubAccountsUpdate'
subAccountsUpdate' pSauSubAccount_ pSauProfileId_ =
    SubAccountsUpdate'
    { _sauQuotaUser = Nothing
    , _sauPrettyPrint = True
    , _sauSubAccount = pSauSubAccount_
    , _sauUserIP = Nothing
    , _sauProfileId = pSauProfileId_
    , _sauKey = Nothing
    , _sauOAuthToken = Nothing
    , _sauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sauQuotaUser :: Lens' SubAccountsUpdate' (Maybe Text)
sauQuotaUser
  = lens _sauQuotaUser (\ s a -> s{_sauQuotaUser = a})

-- | Returns response with indentations and line breaks.
sauPrettyPrint :: Lens' SubAccountsUpdate' Bool
sauPrettyPrint
  = lens _sauPrettyPrint
      (\ s a -> s{_sauPrettyPrint = a})

-- | Multipart request metadata.
sauSubAccount :: Lens' SubAccountsUpdate' SubAccount
sauSubAccount
  = lens _sauSubAccount
      (\ s a -> s{_sauSubAccount = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sauUserIP :: Lens' SubAccountsUpdate' (Maybe Text)
sauUserIP
  = lens _sauUserIP (\ s a -> s{_sauUserIP = a})

-- | User profile ID associated with this request.
sauProfileId :: Lens' SubAccountsUpdate' Int64
sauProfileId
  = lens _sauProfileId (\ s a -> s{_sauProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sauKey :: Lens' SubAccountsUpdate' (Maybe Key)
sauKey = lens _sauKey (\ s a -> s{_sauKey = a})

-- | OAuth 2.0 token for the current user.
sauOAuthToken :: Lens' SubAccountsUpdate' (Maybe OAuthToken)
sauOAuthToken
  = lens _sauOAuthToken
      (\ s a -> s{_sauOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sauFields :: Lens' SubAccountsUpdate' (Maybe Text)
sauFields
  = lens _sauFields (\ s a -> s{_sauFields = a})

instance GoogleAuth SubAccountsUpdate' where
        authKey = sauKey . _Just
        authToken = sauOAuthToken . _Just

instance GoogleRequest SubAccountsUpdate' where
        type Rs SubAccountsUpdate' = SubAccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubAccountsUpdate'{..}
          = go _sauQuotaUser (Just _sauPrettyPrint) _sauUserIP
              _sauProfileId
              _sauKey
              _sauOAuthToken
              _sauFields
              (Just AltJSON)
              _sauSubAccount
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubAccountsUpdateResource)
                      r
                      u
