{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldValuesInsert@.
module DFAReporting.CreativeFieldValues.Insert
    (
    -- * REST Resource
      CreativeFieldValuesInsertAPI

    -- * Creating a Request
    , creativeFieldValuesInsert
    , CreativeFieldValuesInsert

    -- * Request Lenses
    , cfviCreativeFieldId
    , cfviQuotaUser
    , cfviPrettyPrint
    , cfviUserIp
    , cfviProfileId
    , cfviKey
    , cfviOauthToken
    , cfviFields
    , cfviAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldValuesInsert@ which the
-- 'CreativeFieldValuesInsert' request conforms to.
type CreativeFieldValuesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               Post '[JSON] CreativeFieldValue

-- | Inserts a new creative field value.
--
-- /See:/ 'creativeFieldValuesInsert' smart constructor.
data CreativeFieldValuesInsert = CreativeFieldValuesInsert
    { _cfviCreativeFieldId :: !Int64
    , _cfviQuotaUser       :: !(Maybe Text)
    , _cfviPrettyPrint     :: !Bool
    , _cfviUserIp          :: !(Maybe Text)
    , _cfviProfileId       :: !Int64
    , _cfviKey             :: !(Maybe Text)
    , _cfviOauthToken      :: !(Maybe Text)
    , _cfviFields          :: !(Maybe Text)
    , _cfviAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfviCreativeFieldId'
--
-- * 'cfviQuotaUser'
--
-- * 'cfviPrettyPrint'
--
-- * 'cfviUserIp'
--
-- * 'cfviProfileId'
--
-- * 'cfviKey'
--
-- * 'cfviOauthToken'
--
-- * 'cfviFields'
--
-- * 'cfviAlt'
creativeFieldValuesInsert
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> CreativeFieldValuesInsert
creativeFieldValuesInsert pCfviCreativeFieldId_ pCfviProfileId_ =
    CreativeFieldValuesInsert
    { _cfviCreativeFieldId = pCfviCreativeFieldId_
    , _cfviQuotaUser = Nothing
    , _cfviPrettyPrint = True
    , _cfviUserIp = Nothing
    , _cfviProfileId = pCfviProfileId_
    , _cfviKey = Nothing
    , _cfviOauthToken = Nothing
    , _cfviFields = Nothing
    , _cfviAlt = "json"
    }

-- | Creative field ID for this creative field value.
cfviCreativeFieldId :: Lens' CreativeFieldValuesInsert' Int64
cfviCreativeFieldId
  = lens _cfviCreativeFieldId
      (\ s a -> s{_cfviCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfviQuotaUser :: Lens' CreativeFieldValuesInsert' (Maybe Text)
cfviQuotaUser
  = lens _cfviQuotaUser
      (\ s a -> s{_cfviQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfviPrettyPrint :: Lens' CreativeFieldValuesInsert' Bool
cfviPrettyPrint
  = lens _cfviPrettyPrint
      (\ s a -> s{_cfviPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfviUserIp :: Lens' CreativeFieldValuesInsert' (Maybe Text)
cfviUserIp
  = lens _cfviUserIp (\ s a -> s{_cfviUserIp = a})

-- | User profile ID associated with this request.
cfviProfileId :: Lens' CreativeFieldValuesInsert' Int64
cfviProfileId
  = lens _cfviProfileId
      (\ s a -> s{_cfviProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfviKey :: Lens' CreativeFieldValuesInsert' (Maybe Text)
cfviKey = lens _cfviKey (\ s a -> s{_cfviKey = a})

-- | OAuth 2.0 token for the current user.
cfviOauthToken :: Lens' CreativeFieldValuesInsert' (Maybe Text)
cfviOauthToken
  = lens _cfviOauthToken
      (\ s a -> s{_cfviOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfviFields :: Lens' CreativeFieldValuesInsert' (Maybe Text)
cfviFields
  = lens _cfviFields (\ s a -> s{_cfviFields = a})

-- | Data format for the response.
cfviAlt :: Lens' CreativeFieldValuesInsert' Text
cfviAlt = lens _cfviAlt (\ s a -> s{_cfviAlt = a})

instance GoogleRequest CreativeFieldValuesInsert'
         where
        type Rs CreativeFieldValuesInsert' =
             CreativeFieldValue
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesInsert{..}
          = go _cfviCreativeFieldId _cfviQuotaUser
              _cfviPrettyPrint
              _cfviUserIp
              _cfviProfileId
              _cfviKey
              _cfviOauthToken
              _cfviFields
              _cfviAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesInsertAPI)
                      r
                      u
