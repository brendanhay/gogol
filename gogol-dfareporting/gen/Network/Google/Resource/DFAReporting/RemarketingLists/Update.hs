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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsUpdate@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Update
    (
    -- * REST Resource
      RemarketingListsUpdateResource

    -- * Creating a Request
    , remarketingListsUpdate'
    , RemarketingListsUpdate'

    -- * Request Lenses
    , rluQuotaUser
    , rluPrettyPrint
    , rluUserIP
    , rluProfileId
    , rluRemarketingList
    , rluKey
    , rluOAuthToken
    , rluFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsUpdate@ which the
-- 'RemarketingListsUpdate'' request conforms to.
type RemarketingListsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RemarketingList :>
                           Put '[JSON] RemarketingList

-- | Updates an existing remarketing list.
--
-- /See:/ 'remarketingListsUpdate'' smart constructor.
data RemarketingListsUpdate' = RemarketingListsUpdate'
    { _rluQuotaUser       :: !(Maybe Text)
    , _rluPrettyPrint     :: !Bool
    , _rluUserIP          :: !(Maybe Text)
    , _rluProfileId       :: !Int64
    , _rluRemarketingList :: !RemarketingList
    , _rluKey             :: !(Maybe Key)
    , _rluOAuthToken      :: !(Maybe OAuthToken)
    , _rluFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rluQuotaUser'
--
-- * 'rluPrettyPrint'
--
-- * 'rluUserIP'
--
-- * 'rluProfileId'
--
-- * 'rluRemarketingList'
--
-- * 'rluKey'
--
-- * 'rluOAuthToken'
--
-- * 'rluFields'
remarketingListsUpdate'
    :: Int64 -- ^ 'profileId'
    -> RemarketingList -- ^ 'RemarketingList'
    -> RemarketingListsUpdate'
remarketingListsUpdate' pRluProfileId_ pRluRemarketingList_ =
    RemarketingListsUpdate'
    { _rluQuotaUser = Nothing
    , _rluPrettyPrint = True
    , _rluUserIP = Nothing
    , _rluProfileId = pRluProfileId_
    , _rluRemarketingList = pRluRemarketingList_
    , _rluKey = Nothing
    , _rluOAuthToken = Nothing
    , _rluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rluQuotaUser :: Lens' RemarketingListsUpdate' (Maybe Text)
rluQuotaUser
  = lens _rluQuotaUser (\ s a -> s{_rluQuotaUser = a})

-- | Returns response with indentations and line breaks.
rluPrettyPrint :: Lens' RemarketingListsUpdate' Bool
rluPrettyPrint
  = lens _rluPrettyPrint
      (\ s a -> s{_rluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rluUserIP :: Lens' RemarketingListsUpdate' (Maybe Text)
rluUserIP
  = lens _rluUserIP (\ s a -> s{_rluUserIP = a})

-- | User profile ID associated with this request.
rluProfileId :: Lens' RemarketingListsUpdate' Int64
rluProfileId
  = lens _rluProfileId (\ s a -> s{_rluProfileId = a})

-- | Multipart request metadata.
rluRemarketingList :: Lens' RemarketingListsUpdate' RemarketingList
rluRemarketingList
  = lens _rluRemarketingList
      (\ s a -> s{_rluRemarketingList = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rluKey :: Lens' RemarketingListsUpdate' (Maybe Key)
rluKey = lens _rluKey (\ s a -> s{_rluKey = a})

-- | OAuth 2.0 token for the current user.
rluOAuthToken :: Lens' RemarketingListsUpdate' (Maybe OAuthToken)
rluOAuthToken
  = lens _rluOAuthToken
      (\ s a -> s{_rluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rluFields :: Lens' RemarketingListsUpdate' (Maybe Text)
rluFields
  = lens _rluFields (\ s a -> s{_rluFields = a})

instance GoogleAuth RemarketingListsUpdate' where
        authKey = rluKey . _Just
        authToken = rluOAuthToken . _Just

instance GoogleRequest RemarketingListsUpdate' where
        type Rs RemarketingListsUpdate' = RemarketingList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsUpdate'{..}
          = go _rluQuotaUser (Just _rluPrettyPrint) _rluUserIP
              _rluProfileId
              _rluKey
              _rluOAuthToken
              _rluFields
              (Just AltJSON)
              _rluRemarketingList
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsUpdateResource)
                      r
                      u
