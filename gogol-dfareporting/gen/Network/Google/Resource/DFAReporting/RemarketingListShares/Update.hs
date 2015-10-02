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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list share.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListSharesUpdate@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Update
    (
    -- * REST Resource
      RemarketingListSharesUpdateResource

    -- * Creating a Request
    , remarketingListSharesUpdate'
    , RemarketingListSharesUpdate'

    -- * Request Lenses
    , rlsuQuotaUser
    , rlsuPrettyPrint
    , rlsuUserIP
    , rlsuProfileId
    , rlsuRemarketingListShare
    , rlsuKey
    , rlsuOAuthToken
    , rlsuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListSharesUpdate@ which the
-- 'RemarketingListSharesUpdate'' request conforms to.
type RemarketingListSharesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RemarketingListShare :>
                           Put '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share.
--
-- /See:/ 'remarketingListSharesUpdate'' smart constructor.
data RemarketingListSharesUpdate' = RemarketingListSharesUpdate'
    { _rlsuQuotaUser            :: !(Maybe Text)
    , _rlsuPrettyPrint          :: !Bool
    , _rlsuUserIP               :: !(Maybe Text)
    , _rlsuProfileId            :: !Int64
    , _rlsuRemarketingListShare :: !RemarketingListShare
    , _rlsuKey                  :: !(Maybe Key)
    , _rlsuOAuthToken           :: !(Maybe OAuthToken)
    , _rlsuFields               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsuQuotaUser'
--
-- * 'rlsuPrettyPrint'
--
-- * 'rlsuUserIP'
--
-- * 'rlsuProfileId'
--
-- * 'rlsuRemarketingListShare'
--
-- * 'rlsuKey'
--
-- * 'rlsuOAuthToken'
--
-- * 'rlsuFields'
remarketingListSharesUpdate'
    :: Int64 -- ^ 'profileId'
    -> RemarketingListShare -- ^ 'RemarketingListShare'
    -> RemarketingListSharesUpdate'
remarketingListSharesUpdate' pRlsuProfileId_ pRlsuRemarketingListShare_ =
    RemarketingListSharesUpdate'
    { _rlsuQuotaUser = Nothing
    , _rlsuPrettyPrint = True
    , _rlsuUserIP = Nothing
    , _rlsuProfileId = pRlsuProfileId_
    , _rlsuRemarketingListShare = pRlsuRemarketingListShare_
    , _rlsuKey = Nothing
    , _rlsuOAuthToken = Nothing
    , _rlsuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlsuQuotaUser :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuQuotaUser
  = lens _rlsuQuotaUser
      (\ s a -> s{_rlsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlsuPrettyPrint :: Lens' RemarketingListSharesUpdate' Bool
rlsuPrettyPrint
  = lens _rlsuPrettyPrint
      (\ s a -> s{_rlsuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlsuUserIP :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuUserIP
  = lens _rlsuUserIP (\ s a -> s{_rlsuUserIP = a})

-- | User profile ID associated with this request.
rlsuProfileId :: Lens' RemarketingListSharesUpdate' Int64
rlsuProfileId
  = lens _rlsuProfileId
      (\ s a -> s{_rlsuProfileId = a})

-- | Multipart request metadata.
rlsuRemarketingListShare :: Lens' RemarketingListSharesUpdate' RemarketingListShare
rlsuRemarketingListShare
  = lens _rlsuRemarketingListShare
      (\ s a -> s{_rlsuRemarketingListShare = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlsuKey :: Lens' RemarketingListSharesUpdate' (Maybe Key)
rlsuKey = lens _rlsuKey (\ s a -> s{_rlsuKey = a})

-- | OAuth 2.0 token for the current user.
rlsuOAuthToken :: Lens' RemarketingListSharesUpdate' (Maybe OAuthToken)
rlsuOAuthToken
  = lens _rlsuOAuthToken
      (\ s a -> s{_rlsuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlsuFields :: Lens' RemarketingListSharesUpdate' (Maybe Text)
rlsuFields
  = lens _rlsuFields (\ s a -> s{_rlsuFields = a})

instance GoogleAuth RemarketingListSharesUpdate'
         where
        authKey = rlsuKey . _Just
        authToken = rlsuOAuthToken . _Just

instance GoogleRequest RemarketingListSharesUpdate'
         where
        type Rs RemarketingListSharesUpdate' =
             RemarketingListShare
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListSharesUpdate'{..}
          = go _rlsuProfileId _rlsuQuotaUser
              (Just _rlsuPrettyPrint)
              _rlsuUserIP
              _rlsuFields
              _rlsuKey
              _rlsuOAuthToken
              (Just AltJSON)
              _rlsuRemarketingListShare
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListSharesUpdateResource)
                      r
                      u
