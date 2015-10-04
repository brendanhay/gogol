{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsPatch@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Patch
    (
    -- * REST Resource
      RemarketingListsPatchResource

    -- * Creating a Request
    , remarketingListsPatch'
    , RemarketingListsPatch'

    -- * Request Lenses
    , rlpQuotaUser
    , rlpPrettyPrint
    , rlpUserIP
    , rlpProfileId
    , rlpPayload
    , rlpKey
    , rlpId
    , rlpOAuthToken
    , rlpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsPatch@ which the
-- 'RemarketingListsPatch'' request conforms to.
type RemarketingListsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RemarketingList :>
                             Patch '[JSON] RemarketingList

-- | Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListsPatch'' smart constructor.
data RemarketingListsPatch' = RemarketingListsPatch'
    { _rlpQuotaUser   :: !(Maybe Text)
    , _rlpPrettyPrint :: !Bool
    , _rlpUserIP      :: !(Maybe Text)
    , _rlpProfileId   :: !Int64
    , _rlpPayload     :: !RemarketingList
    , _rlpKey         :: !(Maybe Key)
    , _rlpId          :: !Int64
    , _rlpOAuthToken  :: !(Maybe OAuthToken)
    , _rlpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlpQuotaUser'
--
-- * 'rlpPrettyPrint'
--
-- * 'rlpUserIP'
--
-- * 'rlpProfileId'
--
-- * 'rlpPayload'
--
-- * 'rlpKey'
--
-- * 'rlpId'
--
-- * 'rlpOAuthToken'
--
-- * 'rlpFields'
remarketingListsPatch'
    :: Int64 -- ^ 'profileId'
    -> RemarketingList -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> RemarketingListsPatch'
remarketingListsPatch' pRlpProfileId_ pRlpPayload_ pRlpId_ =
    RemarketingListsPatch'
    { _rlpQuotaUser = Nothing
    , _rlpPrettyPrint = True
    , _rlpUserIP = Nothing
    , _rlpProfileId = pRlpProfileId_
    , _rlpPayload = pRlpPayload_
    , _rlpKey = Nothing
    , _rlpId = pRlpId_
    , _rlpOAuthToken = Nothing
    , _rlpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlpQuotaUser :: Lens' RemarketingListsPatch' (Maybe Text)
rlpQuotaUser
  = lens _rlpQuotaUser (\ s a -> s{_rlpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlpPrettyPrint :: Lens' RemarketingListsPatch' Bool
rlpPrettyPrint
  = lens _rlpPrettyPrint
      (\ s a -> s{_rlpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlpUserIP :: Lens' RemarketingListsPatch' (Maybe Text)
rlpUserIP
  = lens _rlpUserIP (\ s a -> s{_rlpUserIP = a})

-- | User profile ID associated with this request.
rlpProfileId :: Lens' RemarketingListsPatch' Int64
rlpProfileId
  = lens _rlpProfileId (\ s a -> s{_rlpProfileId = a})

-- | Multipart request metadata.
rlpPayload :: Lens' RemarketingListsPatch' RemarketingList
rlpPayload
  = lens _rlpPayload (\ s a -> s{_rlpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlpKey :: Lens' RemarketingListsPatch' (Maybe Key)
rlpKey = lens _rlpKey (\ s a -> s{_rlpKey = a})

-- | Remarketing list ID.
rlpId :: Lens' RemarketingListsPatch' Int64
rlpId = lens _rlpId (\ s a -> s{_rlpId = a})

-- | OAuth 2.0 token for the current user.
rlpOAuthToken :: Lens' RemarketingListsPatch' (Maybe OAuthToken)
rlpOAuthToken
  = lens _rlpOAuthToken
      (\ s a -> s{_rlpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlpFields :: Lens' RemarketingListsPatch' (Maybe Text)
rlpFields
  = lens _rlpFields (\ s a -> s{_rlpFields = a})

instance GoogleAuth RemarketingListsPatch' where
        authKey = rlpKey . _Just
        authToken = rlpOAuthToken . _Just

instance GoogleRequest RemarketingListsPatch' where
        type Rs RemarketingListsPatch' = RemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsPatch'{..}
          = go _rlpProfileId (Just _rlpId) _rlpQuotaUser
              (Just _rlpPrettyPrint)
              _rlpUserIP
              _rlpFields
              _rlpKey
              _rlpOAuthToken
              (Just AltJSON)
              _rlpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsPatchResource)
                      r
                      u
