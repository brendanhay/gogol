{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsInsert@.
module DFAReporting.CreativeFields.Insert
    (
    -- * REST Resource
      CreativeFieldsInsertAPI

    -- * Creating a Request
    , creativeFieldsInsert
    , CreativeFieldsInsert

    -- * Request Lenses
    , cfiQuotaUser
    , cfiPrettyPrint
    , cfiUserIp
    , cfiProfileId
    , cfiKey
    , cfiOauthToken
    , cfiFields
    , cfiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsInsert@ which the
-- 'CreativeFieldsInsert' request conforms to.
type CreativeFieldsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :> Post '[JSON] CreativeField

-- | Inserts a new creative field.
--
-- /See:/ 'creativeFieldsInsert' smart constructor.
data CreativeFieldsInsert = CreativeFieldsInsert
    { _cfiQuotaUser   :: !(Maybe Text)
    , _cfiPrettyPrint :: !Bool
    , _cfiUserIp      :: !(Maybe Text)
    , _cfiProfileId   :: !Int64
    , _cfiKey         :: !(Maybe Text)
    , _cfiOauthToken  :: !(Maybe Text)
    , _cfiFields      :: !(Maybe Text)
    , _cfiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfiQuotaUser'
--
-- * 'cfiPrettyPrint'
--
-- * 'cfiUserIp'
--
-- * 'cfiProfileId'
--
-- * 'cfiKey'
--
-- * 'cfiOauthToken'
--
-- * 'cfiFields'
--
-- * 'cfiAlt'
creativeFieldsInsert
    :: Int64 -- ^ 'profileId'
    -> CreativeFieldsInsert
creativeFieldsInsert pCfiProfileId_ =
    CreativeFieldsInsert
    { _cfiQuotaUser = Nothing
    , _cfiPrettyPrint = True
    , _cfiUserIp = Nothing
    , _cfiProfileId = pCfiProfileId_
    , _cfiKey = Nothing
    , _cfiOauthToken = Nothing
    , _cfiFields = Nothing
    , _cfiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfiQuotaUser :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiQuotaUser
  = lens _cfiQuotaUser (\ s a -> s{_cfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfiPrettyPrint :: Lens' CreativeFieldsInsert' Bool
cfiPrettyPrint
  = lens _cfiPrettyPrint
      (\ s a -> s{_cfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfiUserIp :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiUserIp
  = lens _cfiUserIp (\ s a -> s{_cfiUserIp = a})

-- | User profile ID associated with this request.
cfiProfileId :: Lens' CreativeFieldsInsert' Int64
cfiProfileId
  = lens _cfiProfileId (\ s a -> s{_cfiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfiKey :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiKey = lens _cfiKey (\ s a -> s{_cfiKey = a})

-- | OAuth 2.0 token for the current user.
cfiOauthToken :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiOauthToken
  = lens _cfiOauthToken
      (\ s a -> s{_cfiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfiFields :: Lens' CreativeFieldsInsert' (Maybe Text)
cfiFields
  = lens _cfiFields (\ s a -> s{_cfiFields = a})

-- | Data format for the response.
cfiAlt :: Lens' CreativeFieldsInsert' Text
cfiAlt = lens _cfiAlt (\ s a -> s{_cfiAlt = a})

instance GoogleRequest CreativeFieldsInsert' where
        type Rs CreativeFieldsInsert' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsInsert{..}
          = go _cfiQuotaUser _cfiPrettyPrint _cfiUserIp
              _cfiProfileId
              _cfiKey
              _cfiOauthToken
              _cfiFields
              _cfiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsInsertAPI)
                      r
                      u
