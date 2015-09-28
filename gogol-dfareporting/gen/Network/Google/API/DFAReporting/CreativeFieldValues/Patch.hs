{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.CreativeFieldValues.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field value. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFieldValues.patch@.
module Network.Google.API.DFAReporting.CreativeFieldValues.Patch
    (
    -- * REST Resource
      CreativeFieldValuesPatchAPI

    -- * Creating a Request
    , creativeFieldValuesPatch'
    , CreativeFieldValuesPatch'

    -- * Request Lenses
    , cfvpCreativeFieldId
    , cfvpQuotaUser
    , cfvpPrettyPrint
    , cfvpUserIp
    , cfvpProfileId
    , cfvpKey
    , cfvpId
    , cfvpOauthToken
    , cfvpFields
    , cfvpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.creativeFieldValues.patch which the
-- 'CreativeFieldValuesPatch'' request conforms to.
type CreativeFieldValuesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "id" Int64 :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Patch '[JSON] CreativeFieldValue

-- | Updates an existing creative field value. This method supports patch
-- semantics.
--
-- /See:/ 'creativeFieldValuesPatch'' smart constructor.
data CreativeFieldValuesPatch' = CreativeFieldValuesPatch'
    { _cfvpCreativeFieldId :: !Int64
    , _cfvpQuotaUser       :: !(Maybe Text)
    , _cfvpPrettyPrint     :: !Bool
    , _cfvpUserIp          :: !(Maybe Text)
    , _cfvpProfileId       :: !Int64
    , _cfvpKey             :: !(Maybe Text)
    , _cfvpId              :: !Int64
    , _cfvpOauthToken      :: !(Maybe Text)
    , _cfvpFields          :: !(Maybe Text)
    , _cfvpAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvpCreativeFieldId'
--
-- * 'cfvpQuotaUser'
--
-- * 'cfvpPrettyPrint'
--
-- * 'cfvpUserIp'
--
-- * 'cfvpProfileId'
--
-- * 'cfvpKey'
--
-- * 'cfvpId'
--
-- * 'cfvpOauthToken'
--
-- * 'cfvpFields'
--
-- * 'cfvpAlt'
creativeFieldValuesPatch'
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldValuesPatch'
creativeFieldValuesPatch' pCfvpCreativeFieldId_ pCfvpProfileId_ pCfvpId_ =
    CreativeFieldValuesPatch'
    { _cfvpCreativeFieldId = pCfvpCreativeFieldId_
    , _cfvpQuotaUser = Nothing
    , _cfvpPrettyPrint = True
    , _cfvpUserIp = Nothing
    , _cfvpProfileId = pCfvpProfileId_
    , _cfvpKey = Nothing
    , _cfvpId = pCfvpId_
    , _cfvpOauthToken = Nothing
    , _cfvpFields = Nothing
    , _cfvpAlt = JSON
    }

-- | Creative field ID for this creative field value.
cfvpCreativeFieldId :: Lens' CreativeFieldValuesPatch' Int64
cfvpCreativeFieldId
  = lens _cfvpCreativeFieldId
      (\ s a -> s{_cfvpCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfvpQuotaUser :: Lens' CreativeFieldValuesPatch' (Maybe Text)
cfvpQuotaUser
  = lens _cfvpQuotaUser
      (\ s a -> s{_cfvpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfvpPrettyPrint :: Lens' CreativeFieldValuesPatch' Bool
cfvpPrettyPrint
  = lens _cfvpPrettyPrint
      (\ s a -> s{_cfvpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfvpUserIp :: Lens' CreativeFieldValuesPatch' (Maybe Text)
cfvpUserIp
  = lens _cfvpUserIp (\ s a -> s{_cfvpUserIp = a})

-- | User profile ID associated with this request.
cfvpProfileId :: Lens' CreativeFieldValuesPatch' Int64
cfvpProfileId
  = lens _cfvpProfileId
      (\ s a -> s{_cfvpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvpKey :: Lens' CreativeFieldValuesPatch' (Maybe Text)
cfvpKey = lens _cfvpKey (\ s a -> s{_cfvpKey = a})

-- | Creative Field Value ID
cfvpId :: Lens' CreativeFieldValuesPatch' Int64
cfvpId = lens _cfvpId (\ s a -> s{_cfvpId = a})

-- | OAuth 2.0 token for the current user.
cfvpOauthToken :: Lens' CreativeFieldValuesPatch' (Maybe Text)
cfvpOauthToken
  = lens _cfvpOauthToken
      (\ s a -> s{_cfvpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfvpFields :: Lens' CreativeFieldValuesPatch' (Maybe Text)
cfvpFields
  = lens _cfvpFields (\ s a -> s{_cfvpFields = a})

-- | Data format for the response.
cfvpAlt :: Lens' CreativeFieldValuesPatch' Alt
cfvpAlt = lens _cfvpAlt (\ s a -> s{_cfvpAlt = a})

instance GoogleRequest CreativeFieldValuesPatch'
         where
        type Rs CreativeFieldValuesPatch' =
             CreativeFieldValue
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesPatch'{..}
          = go _cfvpCreativeFieldId _cfvpQuotaUser
              (Just _cfvpPrettyPrint)
              _cfvpUserIp
              _cfvpProfileId
              _cfvpKey
              (Just _cfvpId)
              _cfvpOauthToken
              _cfvpFields
              (Just _cfvpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesPatchAPI)
                      r
                      u
