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
-- Module      : Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an account ticket.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsProvisioningCreateAccountTicket@.
module Network.Google.Resource.Analytics.Provisioning.CreateAccountTicket
    (
    -- * REST Resource
      ProvisioningCreateAccountTicketResource

    -- * Creating a Request
    , provisioningCreateAccountTicket'
    , ProvisioningCreateAccountTicket'

    -- * Request Lenses
    , pcatQuotaUser
    , pcatPrettyPrint
    , pcatUserIP
    , pcatKey
    , pcatAccountTicket
    , pcatOAuthToken
    , pcatFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsProvisioningCreateAccountTicket@ which the
-- 'ProvisioningCreateAccountTicket'' request conforms to.
type ProvisioningCreateAccountTicketResource =
     "provisioning" :>
       "createAccountTicket" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccountTicket :>
                         Post '[JSON] AccountTicket

-- | Creates an account ticket.
--
-- /See:/ 'provisioningCreateAccountTicket'' smart constructor.
data ProvisioningCreateAccountTicket' = ProvisioningCreateAccountTicket'
    { _pcatQuotaUser     :: !(Maybe Text)
    , _pcatPrettyPrint   :: !Bool
    , _pcatUserIP        :: !(Maybe Text)
    , _pcatKey           :: !(Maybe Key)
    , _pcatAccountTicket :: !AccountTicket
    , _pcatOAuthToken    :: !(Maybe OAuthToken)
    , _pcatFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProvisioningCreateAccountTicket'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcatQuotaUser'
--
-- * 'pcatPrettyPrint'
--
-- * 'pcatUserIP'
--
-- * 'pcatKey'
--
-- * 'pcatAccountTicket'
--
-- * 'pcatOAuthToken'
--
-- * 'pcatFields'
provisioningCreateAccountTicket'
    :: AccountTicket -- ^ 'AccountTicket'
    -> ProvisioningCreateAccountTicket'
provisioningCreateAccountTicket' pPcatAccountTicket_ =
    ProvisioningCreateAccountTicket'
    { _pcatQuotaUser = Nothing
    , _pcatPrettyPrint = False
    , _pcatUserIP = Nothing
    , _pcatKey = Nothing
    , _pcatAccountTicket = pPcatAccountTicket_
    , _pcatOAuthToken = Nothing
    , _pcatFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcatQuotaUser :: Lens' ProvisioningCreateAccountTicket' (Maybe Text)
pcatQuotaUser
  = lens _pcatQuotaUser
      (\ s a -> s{_pcatQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcatPrettyPrint :: Lens' ProvisioningCreateAccountTicket' Bool
pcatPrettyPrint
  = lens _pcatPrettyPrint
      (\ s a -> s{_pcatPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcatUserIP :: Lens' ProvisioningCreateAccountTicket' (Maybe Text)
pcatUserIP
  = lens _pcatUserIP (\ s a -> s{_pcatUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcatKey :: Lens' ProvisioningCreateAccountTicket' (Maybe Key)
pcatKey = lens _pcatKey (\ s a -> s{_pcatKey = a})

-- | Multipart request metadata.
pcatAccountTicket :: Lens' ProvisioningCreateAccountTicket' AccountTicket
pcatAccountTicket
  = lens _pcatAccountTicket
      (\ s a -> s{_pcatAccountTicket = a})

-- | OAuth 2.0 token for the current user.
pcatOAuthToken :: Lens' ProvisioningCreateAccountTicket' (Maybe OAuthToken)
pcatOAuthToken
  = lens _pcatOAuthToken
      (\ s a -> s{_pcatOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcatFields :: Lens' ProvisioningCreateAccountTicket' (Maybe Text)
pcatFields
  = lens _pcatFields (\ s a -> s{_pcatFields = a})

instance GoogleAuth ProvisioningCreateAccountTicket'
         where
        authKey = pcatKey . _Just
        authToken = pcatOAuthToken . _Just

instance GoogleRequest
         ProvisioningCreateAccountTicket' where
        type Rs ProvisioningCreateAccountTicket' =
             AccountTicket
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ProvisioningCreateAccountTicket'{..}
          = go _pcatQuotaUser (Just _pcatPrettyPrint)
              _pcatUserIP
              _pcatKey
              _pcatOAuthToken
              _pcatFields
              (Just AltJSON)
              _pcatAccountTicket
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProvisioningCreateAccountTicketResource)
                      r
                      u
