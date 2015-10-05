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
    , rluProFileId
    , rluPayload
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RemarketingList :>
                           Put '[JSON] RemarketingList

-- | Updates an existing remarketing list.
--
-- /See:/ 'remarketingListsUpdate'' smart constructor.
data RemarketingListsUpdate' = RemarketingListsUpdate'
    { _rluQuotaUser   :: !(Maybe Text)
    , _rluPrettyPrint :: !Bool
    , _rluUserIP      :: !(Maybe Text)
    , _rluProFileId   :: !Int64
    , _rluPayload     :: !RemarketingList
    , _rluKey         :: !(Maybe AuthKey)
    , _rluOAuthToken  :: !(Maybe OAuthToken)
    , _rluFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rluProFileId'
--
-- * 'rluPayload'
--
-- * 'rluKey'
--
-- * 'rluOAuthToken'
--
-- * 'rluFields'
remarketingListsUpdate'
    :: Int64 -- ^ 'profileId'
    -> RemarketingList -- ^ 'payload'
    -> RemarketingListsUpdate'
remarketingListsUpdate' pRluProFileId_ pRluPayload_ =
    RemarketingListsUpdate'
    { _rluQuotaUser = Nothing
    , _rluPrettyPrint = True
    , _rluUserIP = Nothing
    , _rluProFileId = pRluProFileId_
    , _rluPayload = pRluPayload_
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
rluProFileId :: Lens' RemarketingListsUpdate' Int64
rluProFileId
  = lens _rluProFileId (\ s a -> s{_rluProFileId = a})

-- | Multipart request metadata.
rluPayload :: Lens' RemarketingListsUpdate' RemarketingList
rluPayload
  = lens _rluPayload (\ s a -> s{_rluPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rluKey :: Lens' RemarketingListsUpdate' (Maybe AuthKey)
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
          = go _rluProFileId _rluQuotaUser
              (Just _rluPrettyPrint)
              _rluUserIP
              _rluFields
              _rluKey
              _rluOAuthToken
              (Just AltJSON)
              _rluPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsUpdateResource)
                      r
                      u
