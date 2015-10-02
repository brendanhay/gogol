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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystems.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of operating systems.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemsList@.
module Network.Google.Resource.DFAReporting.OperatingSystems.List
    (
    -- * REST Resource
      OperatingSystemsListResource

    -- * Creating a Request
    , operatingSystemsList'
    , OperatingSystemsList'

    -- * Request Lenses
    , oslQuotaUser
    , oslPrettyPrint
    , oslUserIP
    , oslProfileId
    , oslKey
    , oslOAuthToken
    , oslFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemsList@ which the
-- 'OperatingSystemsList'' request conforms to.
type OperatingSystemsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystems" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OperatingSystemsListResponse

-- | Retrieves a list of operating systems.
--
-- /See:/ 'operatingSystemsList'' smart constructor.
data OperatingSystemsList' = OperatingSystemsList'
    { _oslQuotaUser   :: !(Maybe Text)
    , _oslPrettyPrint :: !Bool
    , _oslUserIP      :: !(Maybe Text)
    , _oslProfileId   :: !Int64
    , _oslKey         :: !(Maybe Key)
    , _oslOAuthToken  :: !(Maybe OAuthToken)
    , _oslFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslQuotaUser'
--
-- * 'oslPrettyPrint'
--
-- * 'oslUserIP'
--
-- * 'oslProfileId'
--
-- * 'oslKey'
--
-- * 'oslOAuthToken'
--
-- * 'oslFields'
operatingSystemsList'
    :: Int64 -- ^ 'profileId'
    -> OperatingSystemsList'
operatingSystemsList' pOslProfileId_ =
    OperatingSystemsList'
    { _oslQuotaUser = Nothing
    , _oslPrettyPrint = True
    , _oslUserIP = Nothing
    , _oslProfileId = pOslProfileId_
    , _oslKey = Nothing
    , _oslOAuthToken = Nothing
    , _oslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oslQuotaUser :: Lens' OperatingSystemsList' (Maybe Text)
oslQuotaUser
  = lens _oslQuotaUser (\ s a -> s{_oslQuotaUser = a})

-- | Returns response with indentations and line breaks.
oslPrettyPrint :: Lens' OperatingSystemsList' Bool
oslPrettyPrint
  = lens _oslPrettyPrint
      (\ s a -> s{_oslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oslUserIP :: Lens' OperatingSystemsList' (Maybe Text)
oslUserIP
  = lens _oslUserIP (\ s a -> s{_oslUserIP = a})

-- | User profile ID associated with this request.
oslProfileId :: Lens' OperatingSystemsList' Int64
oslProfileId
  = lens _oslProfileId (\ s a -> s{_oslProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oslKey :: Lens' OperatingSystemsList' (Maybe Key)
oslKey = lens _oslKey (\ s a -> s{_oslKey = a})

-- | OAuth 2.0 token for the current user.
oslOAuthToken :: Lens' OperatingSystemsList' (Maybe OAuthToken)
oslOAuthToken
  = lens _oslOAuthToken
      (\ s a -> s{_oslOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oslFields :: Lens' OperatingSystemsList' (Maybe Text)
oslFields
  = lens _oslFields (\ s a -> s{_oslFields = a})

instance GoogleAuth OperatingSystemsList' where
        authKey = oslKey . _Just
        authToken = oslOAuthToken . _Just

instance GoogleRequest OperatingSystemsList' where
        type Rs OperatingSystemsList' =
             OperatingSystemsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemsList'{..}
          = go _oslProfileId _oslQuotaUser
              (Just _oslPrettyPrint)
              _oslUserIP
              _oslFields
              _oslKey
              _oslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemsListResource)
                      r
                      u
