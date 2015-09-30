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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldValuesDelete@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete
    (
    -- * REST Resource
      CreativeFieldValuesDeleteResource

    -- * Creating a Request
    , creativeFieldValuesDelete'
    , CreativeFieldValuesDelete'

    -- * Request Lenses
    , cfvdCreativeFieldId
    , cfvdQuotaUser
    , cfvdPrettyPrint
    , cfvdUserIp
    , cfvdProfileId
    , cfvdKey
    , cfvdId
    , cfvdOauthToken
    , cfvdFields
    , cfvdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldValuesDelete@ which the
-- 'CreativeFieldValuesDelete'' request conforms to.
type CreativeFieldValuesDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing creative field value.
--
-- /See:/ 'creativeFieldValuesDelete'' smart constructor.
data CreativeFieldValuesDelete' = CreativeFieldValuesDelete'
    { _cfvdCreativeFieldId :: !Int64
    , _cfvdQuotaUser       :: !(Maybe Text)
    , _cfvdPrettyPrint     :: !Bool
    , _cfvdUserIp          :: !(Maybe Text)
    , _cfvdProfileId       :: !Int64
    , _cfvdKey             :: !(Maybe Text)
    , _cfvdId              :: !Int64
    , _cfvdOauthToken      :: !(Maybe Text)
    , _cfvdFields          :: !(Maybe Text)
    , _cfvdAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvdCreativeFieldId'
--
-- * 'cfvdQuotaUser'
--
-- * 'cfvdPrettyPrint'
--
-- * 'cfvdUserIp'
--
-- * 'cfvdProfileId'
--
-- * 'cfvdKey'
--
-- * 'cfvdId'
--
-- * 'cfvdOauthToken'
--
-- * 'cfvdFields'
--
-- * 'cfvdAlt'
creativeFieldValuesDelete'
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldValuesDelete'
creativeFieldValuesDelete' pCfvdCreativeFieldId_ pCfvdProfileId_ pCfvdId_ =
    CreativeFieldValuesDelete'
    { _cfvdCreativeFieldId = pCfvdCreativeFieldId_
    , _cfvdQuotaUser = Nothing
    , _cfvdPrettyPrint = True
    , _cfvdUserIp = Nothing
    , _cfvdProfileId = pCfvdProfileId_
    , _cfvdKey = Nothing
    , _cfvdId = pCfvdId_
    , _cfvdOauthToken = Nothing
    , _cfvdFields = Nothing
    , _cfvdAlt = JSON
    }

-- | Creative field ID for this creative field value.
cfvdCreativeFieldId :: Lens' CreativeFieldValuesDelete' Int64
cfvdCreativeFieldId
  = lens _cfvdCreativeFieldId
      (\ s a -> s{_cfvdCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfvdQuotaUser :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdQuotaUser
  = lens _cfvdQuotaUser
      (\ s a -> s{_cfvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfvdPrettyPrint :: Lens' CreativeFieldValuesDelete' Bool
cfvdPrettyPrint
  = lens _cfvdPrettyPrint
      (\ s a -> s{_cfvdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfvdUserIp :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdUserIp
  = lens _cfvdUserIp (\ s a -> s{_cfvdUserIp = a})

-- | User profile ID associated with this request.
cfvdProfileId :: Lens' CreativeFieldValuesDelete' Int64
cfvdProfileId
  = lens _cfvdProfileId
      (\ s a -> s{_cfvdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvdKey :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdKey = lens _cfvdKey (\ s a -> s{_cfvdKey = a})

-- | Creative Field Value ID
cfvdId :: Lens' CreativeFieldValuesDelete' Int64
cfvdId = lens _cfvdId (\ s a -> s{_cfvdId = a})

-- | OAuth 2.0 token for the current user.
cfvdOauthToken :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdOauthToken
  = lens _cfvdOauthToken
      (\ s a -> s{_cfvdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfvdFields :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdFields
  = lens _cfvdFields (\ s a -> s{_cfvdFields = a})

-- | Data format for the response.
cfvdAlt :: Lens' CreativeFieldValuesDelete' Alt
cfvdAlt = lens _cfvdAlt (\ s a -> s{_cfvdAlt = a})

instance GoogleRequest CreativeFieldValuesDelete'
         where
        type Rs CreativeFieldValuesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesDelete'{..}
          = go _cfvdCreativeFieldId _cfvdQuotaUser
              (Just _cfvdPrettyPrint)
              _cfvdUserIp
              _cfvdProfileId
              _cfvdKey
              _cfvdId
              _cfvdOauthToken
              _cfvdFields
              (Just _cfvdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesDeleteResource)
                      r
                      u
