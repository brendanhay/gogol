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
    , sauUserIP
    , sauProFileId
    , sauPayload
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SubAccount :> Put '[JSON] SubAccount

-- | Updates an existing subaccount.
--
-- /See:/ 'subAccountsUpdate'' smart constructor.
data SubAccountsUpdate' = SubAccountsUpdate'
    { _sauQuotaUser   :: !(Maybe Text)
    , _sauPrettyPrint :: !Bool
    , _sauUserIP      :: !(Maybe Text)
    , _sauProFileId   :: !Int64
    , _sauPayload     :: !SubAccount
    , _sauKey         :: !(Maybe AuthKey)
    , _sauOAuthToken  :: !(Maybe OAuthToken)
    , _sauFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sauQuotaUser'
--
-- * 'sauPrettyPrint'
--
-- * 'sauUserIP'
--
-- * 'sauProFileId'
--
-- * 'sauPayload'
--
-- * 'sauKey'
--
-- * 'sauOAuthToken'
--
-- * 'sauFields'
subAccountsUpdate'
    :: Int64 -- ^ 'profileId'
    -> SubAccount -- ^ 'payload'
    -> SubAccountsUpdate'
subAccountsUpdate' pSauProFileId_ pSauPayload_ =
    SubAccountsUpdate'
    { _sauQuotaUser = Nothing
    , _sauPrettyPrint = True
    , _sauUserIP = Nothing
    , _sauProFileId = pSauProFileId_
    , _sauPayload = pSauPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sauUserIP :: Lens' SubAccountsUpdate' (Maybe Text)
sauUserIP
  = lens _sauUserIP (\ s a -> s{_sauUserIP = a})

-- | User profile ID associated with this request.
sauProFileId :: Lens' SubAccountsUpdate' Int64
sauProFileId
  = lens _sauProFileId (\ s a -> s{_sauProFileId = a})

-- | Multipart request metadata.
sauPayload :: Lens' SubAccountsUpdate' SubAccount
sauPayload
  = lens _sauPayload (\ s a -> s{_sauPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sauKey :: Lens' SubAccountsUpdate' (Maybe AuthKey)
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
        request = requestWith dFAReportingRequest
        requestWith rq SubAccountsUpdate'{..}
          = go _sauProFileId _sauQuotaUser
              (Just _sauPrettyPrint)
              _sauUserIP
              _sauFields
              _sauKey
              _sauOAuthToken
              (Just AltJSON)
              _sauPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy SubAccountsUpdateResource)
                      rq
