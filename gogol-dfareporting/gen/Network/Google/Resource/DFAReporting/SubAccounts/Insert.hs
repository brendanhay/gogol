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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubAccountsInsert@.
module Network.Google.Resource.DFAReporting.SubAccounts.Insert
    (
    -- * REST Resource
      SubAccountsInsertResource

    -- * Creating a Request
    , subAccountsInsert'
    , SubAccountsInsert'

    -- * Request Lenses
    , saiQuotaUser
    , saiPrettyPrint
    , saiUserIP
    , saiProFileId
    , saiPayload
    , saiKey
    , saiOAuthToken
    , saiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubAccountsInsert@ which the
-- 'SubAccountsInsert'' request conforms to.
type SubAccountsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SubAccount :> Post '[JSON] SubAccount

-- | Inserts a new subaccount.
--
-- /See:/ 'subAccountsInsert'' smart constructor.
data SubAccountsInsert' = SubAccountsInsert'
    { _saiQuotaUser   :: !(Maybe Text)
    , _saiPrettyPrint :: !Bool
    , _saiUserIP      :: !(Maybe Text)
    , _saiProFileId   :: !Int64
    , _saiPayload     :: !SubAccount
    , _saiKey         :: !(Maybe AuthKey)
    , _saiOAuthToken  :: !(Maybe OAuthToken)
    , _saiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saiQuotaUser'
--
-- * 'saiPrettyPrint'
--
-- * 'saiUserIP'
--
-- * 'saiProFileId'
--
-- * 'saiPayload'
--
-- * 'saiKey'
--
-- * 'saiOAuthToken'
--
-- * 'saiFields'
subAccountsInsert'
    :: Int64 -- ^ 'profileId'
    -> SubAccount -- ^ 'payload'
    -> SubAccountsInsert'
subAccountsInsert' pSaiProFileId_ pSaiPayload_ =
    SubAccountsInsert'
    { _saiQuotaUser = Nothing
    , _saiPrettyPrint = True
    , _saiUserIP = Nothing
    , _saiProFileId = pSaiProFileId_
    , _saiPayload = pSaiPayload_
    , _saiKey = Nothing
    , _saiOAuthToken = Nothing
    , _saiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
saiQuotaUser :: Lens' SubAccountsInsert' (Maybe Text)
saiQuotaUser
  = lens _saiQuotaUser (\ s a -> s{_saiQuotaUser = a})

-- | Returns response with indentations and line breaks.
saiPrettyPrint :: Lens' SubAccountsInsert' Bool
saiPrettyPrint
  = lens _saiPrettyPrint
      (\ s a -> s{_saiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
saiUserIP :: Lens' SubAccountsInsert' (Maybe Text)
saiUserIP
  = lens _saiUserIP (\ s a -> s{_saiUserIP = a})

-- | User profile ID associated with this request.
saiProFileId :: Lens' SubAccountsInsert' Int64
saiProFileId
  = lens _saiProFileId (\ s a -> s{_saiProFileId = a})

-- | Multipart request metadata.
saiPayload :: Lens' SubAccountsInsert' SubAccount
saiPayload
  = lens _saiPayload (\ s a -> s{_saiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
saiKey :: Lens' SubAccountsInsert' (Maybe AuthKey)
saiKey = lens _saiKey (\ s a -> s{_saiKey = a})

-- | OAuth 2.0 token for the current user.
saiOAuthToken :: Lens' SubAccountsInsert' (Maybe OAuthToken)
saiOAuthToken
  = lens _saiOAuthToken
      (\ s a -> s{_saiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
saiFields :: Lens' SubAccountsInsert' (Maybe Text)
saiFields
  = lens _saiFields (\ s a -> s{_saiFields = a})

instance GoogleAuth SubAccountsInsert' where
        authKey = saiKey . _Just
        authToken = saiOAuthToken . _Just

instance GoogleRequest SubAccountsInsert' where
        type Rs SubAccountsInsert' = SubAccount
        request = requestWith dFAReportingRequest
        requestWith rq SubAccountsInsert'{..}
          = go _saiProFileId _saiQuotaUser
              (Just _saiPrettyPrint)
              _saiUserIP
              _saiFields
              _saiKey
              _saiOAuthToken
              (Just AltJSON)
              _saiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy SubAccountsInsertResource)
                      rq
