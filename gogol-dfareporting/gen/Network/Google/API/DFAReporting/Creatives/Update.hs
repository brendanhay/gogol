{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Creatives.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.update@.
module Network.Google.API.DFAReporting.Creatives.Update
    (
    -- * REST Resource
      CreativesUpdateAPI

    -- * Creating a Request
    , creativesUpdate'
    , CreativesUpdate'

    -- * Request Lenses
    , creQuotaUser
    , crePrettyPrint
    , creUserIp
    , creProfileId
    , creKey
    , creOauthToken
    , creFields
    , creAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.creatives.update which the
-- 'CreativesUpdate'' request conforms to.
type CreativesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Creative

-- | Updates an existing creative.
--
-- /See:/ 'creativesUpdate'' smart constructor.
data CreativesUpdate' = CreativesUpdate'
    { _creQuotaUser   :: !(Maybe Text)
    , _crePrettyPrint :: !Bool
    , _creUserIp      :: !(Maybe Text)
    , _creProfileId   :: !Int64
    , _creKey         :: !(Maybe Text)
    , _creOauthToken  :: !(Maybe Text)
    , _creFields      :: !(Maybe Text)
    , _creAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creQuotaUser'
--
-- * 'crePrettyPrint'
--
-- * 'creUserIp'
--
-- * 'creProfileId'
--
-- * 'creKey'
--
-- * 'creOauthToken'
--
-- * 'creFields'
--
-- * 'creAlt'
creativesUpdate'
    :: Int64 -- ^ 'profileId'
    -> CreativesUpdate'
creativesUpdate' pCreProfileId_ =
    CreativesUpdate'
    { _creQuotaUser = Nothing
    , _crePrettyPrint = True
    , _creUserIp = Nothing
    , _creProfileId = pCreProfileId_
    , _creKey = Nothing
    , _creOauthToken = Nothing
    , _creFields = Nothing
    , _creAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
creQuotaUser :: Lens' CreativesUpdate' (Maybe Text)
creQuotaUser
  = lens _creQuotaUser (\ s a -> s{_creQuotaUser = a})

-- | Returns response with indentations and line breaks.
crePrettyPrint :: Lens' CreativesUpdate' Bool
crePrettyPrint
  = lens _crePrettyPrint
      (\ s a -> s{_crePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
creUserIp :: Lens' CreativesUpdate' (Maybe Text)
creUserIp
  = lens _creUserIp (\ s a -> s{_creUserIp = a})

-- | User profile ID associated with this request.
creProfileId :: Lens' CreativesUpdate' Int64
creProfileId
  = lens _creProfileId (\ s a -> s{_creProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
creKey :: Lens' CreativesUpdate' (Maybe Text)
creKey = lens _creKey (\ s a -> s{_creKey = a})

-- | OAuth 2.0 token for the current user.
creOauthToken :: Lens' CreativesUpdate' (Maybe Text)
creOauthToken
  = lens _creOauthToken
      (\ s a -> s{_creOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
creFields :: Lens' CreativesUpdate' (Maybe Text)
creFields
  = lens _creFields (\ s a -> s{_creFields = a})

-- | Data format for the response.
creAlt :: Lens' CreativesUpdate' Alt
creAlt = lens _creAlt (\ s a -> s{_creAlt = a})

instance GoogleRequest CreativesUpdate' where
        type Rs CreativesUpdate' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesUpdate'{..}
          = go _creQuotaUser (Just _crePrettyPrint) _creUserIp
              _creProfileId
              _creKey
              _creOauthToken
              _creFields
              (Just _creAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CreativesUpdateAPI)
                      r
                      u
