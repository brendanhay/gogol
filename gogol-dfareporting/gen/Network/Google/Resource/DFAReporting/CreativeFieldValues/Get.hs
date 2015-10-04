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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one creative field value by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldValuesGet@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Get
    (
    -- * REST Resource
      CreativeFieldValuesGetResource

    -- * Creating a Request
    , creativeFieldValuesGet'
    , CreativeFieldValuesGet'

    -- * Request Lenses
    , cfvgCreativeFieldId
    , cfvgQuotaUser
    , cfvgPrettyPrint
    , cfvgUserIP
    , cfvgProfileId
    , cfvgKey
    , cfvgId
    , cfvgOAuthToken
    , cfvgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldValuesGet@ which the
-- 'CreativeFieldValuesGet'' request conforms to.
type CreativeFieldValuesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] CreativeFieldValue

-- | Gets one creative field value by ID.
--
-- /See:/ 'creativeFieldValuesGet'' smart constructor.
data CreativeFieldValuesGet' = CreativeFieldValuesGet'
    { _cfvgCreativeFieldId :: !Int64
    , _cfvgQuotaUser       :: !(Maybe Text)
    , _cfvgPrettyPrint     :: !Bool
    , _cfvgUserIP          :: !(Maybe Text)
    , _cfvgProfileId       :: !Int64
    , _cfvgKey             :: !(Maybe Key)
    , _cfvgId              :: !Int64
    , _cfvgOAuthToken      :: !(Maybe OAuthToken)
    , _cfvgFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvgCreativeFieldId'
--
-- * 'cfvgQuotaUser'
--
-- * 'cfvgPrettyPrint'
--
-- * 'cfvgUserIP'
--
-- * 'cfvgProfileId'
--
-- * 'cfvgKey'
--
-- * 'cfvgId'
--
-- * 'cfvgOAuthToken'
--
-- * 'cfvgFields'
creativeFieldValuesGet'
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldValuesGet'
creativeFieldValuesGet' pCfvgCreativeFieldId_ pCfvgProfileId_ pCfvgId_ =
    CreativeFieldValuesGet'
    { _cfvgCreativeFieldId = pCfvgCreativeFieldId_
    , _cfvgQuotaUser = Nothing
    , _cfvgPrettyPrint = True
    , _cfvgUserIP = Nothing
    , _cfvgProfileId = pCfvgProfileId_
    , _cfvgKey = Nothing
    , _cfvgId = pCfvgId_
    , _cfvgOAuthToken = Nothing
    , _cfvgFields = Nothing
    }

-- | Creative field ID for this creative field value.
cfvgCreativeFieldId :: Lens' CreativeFieldValuesGet' Int64
cfvgCreativeFieldId
  = lens _cfvgCreativeFieldId
      (\ s a -> s{_cfvgCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfvgQuotaUser :: Lens' CreativeFieldValuesGet' (Maybe Text)
cfvgQuotaUser
  = lens _cfvgQuotaUser
      (\ s a -> s{_cfvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfvgPrettyPrint :: Lens' CreativeFieldValuesGet' Bool
cfvgPrettyPrint
  = lens _cfvgPrettyPrint
      (\ s a -> s{_cfvgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfvgUserIP :: Lens' CreativeFieldValuesGet' (Maybe Text)
cfvgUserIP
  = lens _cfvgUserIP (\ s a -> s{_cfvgUserIP = a})

-- | User profile ID associated with this request.
cfvgProfileId :: Lens' CreativeFieldValuesGet' Int64
cfvgProfileId
  = lens _cfvgProfileId
      (\ s a -> s{_cfvgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvgKey :: Lens' CreativeFieldValuesGet' (Maybe Key)
cfvgKey = lens _cfvgKey (\ s a -> s{_cfvgKey = a})

-- | Creative Field Value ID
cfvgId :: Lens' CreativeFieldValuesGet' Int64
cfvgId = lens _cfvgId (\ s a -> s{_cfvgId = a})

-- | OAuth 2.0 token for the current user.
cfvgOAuthToken :: Lens' CreativeFieldValuesGet' (Maybe OAuthToken)
cfvgOAuthToken
  = lens _cfvgOAuthToken
      (\ s a -> s{_cfvgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfvgFields :: Lens' CreativeFieldValuesGet' (Maybe Text)
cfvgFields
  = lens _cfvgFields (\ s a -> s{_cfvgFields = a})

instance GoogleAuth CreativeFieldValuesGet' where
        authKey = cfvgKey . _Just
        authToken = cfvgOAuthToken . _Just

instance GoogleRequest CreativeFieldValuesGet' where
        type Rs CreativeFieldValuesGet' = CreativeFieldValue
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesGet'{..}
          = go _cfvgProfileId _cfvgCreativeFieldId _cfvgId
              _cfvgQuotaUser
              (Just _cfvgPrettyPrint)
              _cfvgUserIP
              _cfvgFields
              _cfvgKey
              _cfvgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesGetResource)
                      r
                      u
