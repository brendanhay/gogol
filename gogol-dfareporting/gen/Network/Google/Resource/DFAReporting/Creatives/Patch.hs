{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesPatch@.
module DFAReporting.Creatives.Patch
    (
    -- * REST Resource
      CreativesPatchAPI

    -- * Creating a Request
    , creativesPatch
    , CreativesPatch

    -- * Request Lenses
    , cppQuotaUser
    , cppPrettyPrint
    , cppUserIp
    , cppProfileId
    , cppKey
    , cppId
    , cppOauthToken
    , cppFields
    , cppAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesPatch@ which the
-- 'CreativesPatch' request conforms to.
type CreativesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "id" Int64 :> Patch '[JSON] Creative

-- | Updates an existing creative. This method supports patch semantics.
--
-- /See:/ 'creativesPatch' smart constructor.
data CreativesPatch = CreativesPatch
    { _cppQuotaUser   :: !(Maybe Text)
    , _cppPrettyPrint :: !Bool
    , _cppUserIp      :: !(Maybe Text)
    , _cppProfileId   :: !Int64
    , _cppKey         :: !(Maybe Text)
    , _cppId          :: !Int64
    , _cppOauthToken  :: !(Maybe Text)
    , _cppFields      :: !(Maybe Text)
    , _cppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppQuotaUser'
--
-- * 'cppPrettyPrint'
--
-- * 'cppUserIp'
--
-- * 'cppProfileId'
--
-- * 'cppKey'
--
-- * 'cppId'
--
-- * 'cppOauthToken'
--
-- * 'cppFields'
--
-- * 'cppAlt'
creativesPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativesPatch
creativesPatch pCppProfileId_ pCppId_ =
    CreativesPatch
    { _cppQuotaUser = Nothing
    , _cppPrettyPrint = True
    , _cppUserIp = Nothing
    , _cppProfileId = pCppProfileId_
    , _cppKey = Nothing
    , _cppId = pCppId_
    , _cppOauthToken = Nothing
    , _cppFields = Nothing
    , _cppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cppQuotaUser :: Lens' CreativesPatch' (Maybe Text)
cppQuotaUser
  = lens _cppQuotaUser (\ s a -> s{_cppQuotaUser = a})

-- | Returns response with indentations and line breaks.
cppPrettyPrint :: Lens' CreativesPatch' Bool
cppPrettyPrint
  = lens _cppPrettyPrint
      (\ s a -> s{_cppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cppUserIp :: Lens' CreativesPatch' (Maybe Text)
cppUserIp
  = lens _cppUserIp (\ s a -> s{_cppUserIp = a})

-- | User profile ID associated with this request.
cppProfileId :: Lens' CreativesPatch' Int64
cppProfileId
  = lens _cppProfileId (\ s a -> s{_cppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cppKey :: Lens' CreativesPatch' (Maybe Text)
cppKey = lens _cppKey (\ s a -> s{_cppKey = a})

-- | Creative ID.
cppId :: Lens' CreativesPatch' Int64
cppId = lens _cppId (\ s a -> s{_cppId = a})

-- | OAuth 2.0 token for the current user.
cppOauthToken :: Lens' CreativesPatch' (Maybe Text)
cppOauthToken
  = lens _cppOauthToken
      (\ s a -> s{_cppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cppFields :: Lens' CreativesPatch' (Maybe Text)
cppFields
  = lens _cppFields (\ s a -> s{_cppFields = a})

-- | Data format for the response.
cppAlt :: Lens' CreativesPatch' Text
cppAlt = lens _cppAlt (\ s a -> s{_cppAlt = a})

instance GoogleRequest CreativesPatch' where
        type Rs CreativesPatch' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesPatch{..}
          = go _cppQuotaUser _cppPrettyPrint _cppUserIp
              _cppProfileId
              _cppKey
              (Just _cppId)
              _cppOauthToken
              _cppFields
              _cppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CreativesPatchAPI)
                      r
                      u
