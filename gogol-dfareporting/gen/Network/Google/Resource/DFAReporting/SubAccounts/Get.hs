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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one subaccount by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubAccountsGet@.
module Network.Google.Resource.DFAReporting.SubAccounts.Get
    (
    -- * REST Resource
      SubAccountsGetResource

    -- * Creating a Request
    , subAccountsGet'
    , SubAccountsGet'

    -- * Request Lenses
    , sagQuotaUser
    , sagPrettyPrint
    , sagUserIP
    , sagProFileId
    , sagKey
    , sagId
    , sagOAuthToken
    , sagFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubAccountsGet@ which the
-- 'SubAccountsGet'' request conforms to.
type SubAccountsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] SubAccount

-- | Gets one subaccount by ID.
--
-- /See:/ 'subAccountsGet'' smart constructor.
data SubAccountsGet' = SubAccountsGet'
    { _sagQuotaUser   :: !(Maybe Text)
    , _sagPrettyPrint :: !Bool
    , _sagUserIP      :: !(Maybe Text)
    , _sagProFileId   :: !Int64
    , _sagKey         :: !(Maybe AuthKey)
    , _sagId          :: !Int64
    , _sagOAuthToken  :: !(Maybe OAuthToken)
    , _sagFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sagQuotaUser'
--
-- * 'sagPrettyPrint'
--
-- * 'sagUserIP'
--
-- * 'sagProFileId'
--
-- * 'sagKey'
--
-- * 'sagId'
--
-- * 'sagOAuthToken'
--
-- * 'sagFields'
subAccountsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SubAccountsGet'
subAccountsGet' pSagProFileId_ pSagId_ =
    SubAccountsGet'
    { _sagQuotaUser = Nothing
    , _sagPrettyPrint = True
    , _sagUserIP = Nothing
    , _sagProFileId = pSagProFileId_
    , _sagKey = Nothing
    , _sagId = pSagId_
    , _sagOAuthToken = Nothing
    , _sagFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sagQuotaUser :: Lens' SubAccountsGet' (Maybe Text)
sagQuotaUser
  = lens _sagQuotaUser (\ s a -> s{_sagQuotaUser = a})

-- | Returns response with indentations and line breaks.
sagPrettyPrint :: Lens' SubAccountsGet' Bool
sagPrettyPrint
  = lens _sagPrettyPrint
      (\ s a -> s{_sagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sagUserIP :: Lens' SubAccountsGet' (Maybe Text)
sagUserIP
  = lens _sagUserIP (\ s a -> s{_sagUserIP = a})

-- | User profile ID associated with this request.
sagProFileId :: Lens' SubAccountsGet' Int64
sagProFileId
  = lens _sagProFileId (\ s a -> s{_sagProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sagKey :: Lens' SubAccountsGet' (Maybe AuthKey)
sagKey = lens _sagKey (\ s a -> s{_sagKey = a})

-- | Subaccount ID.
sagId :: Lens' SubAccountsGet' Int64
sagId = lens _sagId (\ s a -> s{_sagId = a})

-- | OAuth 2.0 token for the current user.
sagOAuthToken :: Lens' SubAccountsGet' (Maybe OAuthToken)
sagOAuthToken
  = lens _sagOAuthToken
      (\ s a -> s{_sagOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sagFields :: Lens' SubAccountsGet' (Maybe Text)
sagFields
  = lens _sagFields (\ s a -> s{_sagFields = a})

instance GoogleAuth SubAccountsGet' where
        authKey = sagKey . _Just
        authToken = sagOAuthToken . _Just

instance GoogleRequest SubAccountsGet' where
        type Rs SubAccountsGet' = SubAccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubAccountsGet'{..}
          = go _sagProFileId _sagId _sagQuotaUser
              (Just _sagPrettyPrint)
              _sagUserIP
              _sagFields
              _sagKey
              _sagOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubAccountsGetResource)
                      r
                      u
