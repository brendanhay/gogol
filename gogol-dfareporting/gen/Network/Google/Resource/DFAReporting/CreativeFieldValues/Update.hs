{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldValuesUpdate@.
module DFAReporting.CreativeFieldValues.Update
    (
    -- * REST Resource
      CreativeFieldValuesUpdateAPI

    -- * Creating a Request
    , creativeFieldValuesUpdate
    , CreativeFieldValuesUpdate

    -- * Request Lenses
    , cfvuCreativeFieldId
    , cfvuQuotaUser
    , cfvuPrettyPrint
    , cfvuUserIp
    , cfvuProfileId
    , cfvuKey
    , cfvuOauthToken
    , cfvuFields
    , cfvuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldValuesUpdate@ which the
-- 'CreativeFieldValuesUpdate' request conforms to.
type CreativeFieldValuesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               Put '[JSON] CreativeFieldValue

-- | Updates an existing creative field value.
--
-- /See:/ 'creativeFieldValuesUpdate' smart constructor.
data CreativeFieldValuesUpdate = CreativeFieldValuesUpdate
    { _cfvuCreativeFieldId :: !Int64
    , _cfvuQuotaUser       :: !(Maybe Text)
    , _cfvuPrettyPrint     :: !Bool
    , _cfvuUserIp          :: !(Maybe Text)
    , _cfvuProfileId       :: !Int64
    , _cfvuKey             :: !(Maybe Text)
    , _cfvuOauthToken      :: !(Maybe Text)
    , _cfvuFields          :: !(Maybe Text)
    , _cfvuAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvuCreativeFieldId'
--
-- * 'cfvuQuotaUser'
--
-- * 'cfvuPrettyPrint'
--
-- * 'cfvuUserIp'
--
-- * 'cfvuProfileId'
--
-- * 'cfvuKey'
--
-- * 'cfvuOauthToken'
--
-- * 'cfvuFields'
--
-- * 'cfvuAlt'
creativeFieldValuesUpdate
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> CreativeFieldValuesUpdate
creativeFieldValuesUpdate pCfvuCreativeFieldId_ pCfvuProfileId_ =
    CreativeFieldValuesUpdate
    { _cfvuCreativeFieldId = pCfvuCreativeFieldId_
    , _cfvuQuotaUser = Nothing
    , _cfvuPrettyPrint = True
    , _cfvuUserIp = Nothing
    , _cfvuProfileId = pCfvuProfileId_
    , _cfvuKey = Nothing
    , _cfvuOauthToken = Nothing
    , _cfvuFields = Nothing
    , _cfvuAlt = "json"
    }

-- | Creative field ID for this creative field value.
cfvuCreativeFieldId :: Lens' CreativeFieldValuesUpdate' Int64
cfvuCreativeFieldId
  = lens _cfvuCreativeFieldId
      (\ s a -> s{_cfvuCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfvuQuotaUser :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuQuotaUser
  = lens _cfvuQuotaUser
      (\ s a -> s{_cfvuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfvuPrettyPrint :: Lens' CreativeFieldValuesUpdate' Bool
cfvuPrettyPrint
  = lens _cfvuPrettyPrint
      (\ s a -> s{_cfvuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfvuUserIp :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuUserIp
  = lens _cfvuUserIp (\ s a -> s{_cfvuUserIp = a})

-- | User profile ID associated with this request.
cfvuProfileId :: Lens' CreativeFieldValuesUpdate' Int64
cfvuProfileId
  = lens _cfvuProfileId
      (\ s a -> s{_cfvuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvuKey :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuKey = lens _cfvuKey (\ s a -> s{_cfvuKey = a})

-- | OAuth 2.0 token for the current user.
cfvuOauthToken :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuOauthToken
  = lens _cfvuOauthToken
      (\ s a -> s{_cfvuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfvuFields :: Lens' CreativeFieldValuesUpdate' (Maybe Text)
cfvuFields
  = lens _cfvuFields (\ s a -> s{_cfvuFields = a})

-- | Data format for the response.
cfvuAlt :: Lens' CreativeFieldValuesUpdate' Text
cfvuAlt = lens _cfvuAlt (\ s a -> s{_cfvuAlt = a})

instance GoogleRequest CreativeFieldValuesUpdate'
         where
        type Rs CreativeFieldValuesUpdate' =
             CreativeFieldValue
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesUpdate{..}
          = go _cfvuCreativeFieldId _cfvuQuotaUser
              _cfvuPrettyPrint
              _cfvuUserIp
              _cfvuProfileId
              _cfvuKey
              _cfvuOauthToken
              _cfvuFields
              _cfvuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesUpdateAPI)
                      r
                      u
