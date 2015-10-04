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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one creative field by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsGet@.
module Network.Google.Resource.DFAReporting.CreativeFields.Get
    (
    -- * REST Resource
      CreativeFieldsGetResource

    -- * Creating a Request
    , creativeFieldsGet'
    , CreativeFieldsGet'

    -- * Request Lenses
    , cfgQuotaUser
    , cfgPrettyPrint
    , cfgUserIP
    , cfgProFileId
    , cfgKey
    , cfgId
    , cfgOAuthToken
    , cfgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsGet@ which the
-- 'CreativeFieldsGet'' request conforms to.
type CreativeFieldsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] CreativeField

-- | Gets one creative field by ID.
--
-- /See:/ 'creativeFieldsGet'' smart constructor.
data CreativeFieldsGet' = CreativeFieldsGet'
    { _cfgQuotaUser   :: !(Maybe Text)
    , _cfgPrettyPrint :: !Bool
    , _cfgUserIP      :: !(Maybe Text)
    , _cfgProFileId   :: !Int64
    , _cfgKey         :: !(Maybe Key)
    , _cfgId          :: !Int64
    , _cfgOAuthToken  :: !(Maybe OAuthToken)
    , _cfgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfgQuotaUser'
--
-- * 'cfgPrettyPrint'
--
-- * 'cfgUserIP'
--
-- * 'cfgProFileId'
--
-- * 'cfgKey'
--
-- * 'cfgId'
--
-- * 'cfgOAuthToken'
--
-- * 'cfgFields'
creativeFieldsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldsGet'
creativeFieldsGet' pCfgProFileId_ pCfgId_ =
    CreativeFieldsGet'
    { _cfgQuotaUser = Nothing
    , _cfgPrettyPrint = True
    , _cfgUserIP = Nothing
    , _cfgProFileId = pCfgProFileId_
    , _cfgKey = Nothing
    , _cfgId = pCfgId_
    , _cfgOAuthToken = Nothing
    , _cfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfgQuotaUser :: Lens' CreativeFieldsGet' (Maybe Text)
cfgQuotaUser
  = lens _cfgQuotaUser (\ s a -> s{_cfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfgPrettyPrint :: Lens' CreativeFieldsGet' Bool
cfgPrettyPrint
  = lens _cfgPrettyPrint
      (\ s a -> s{_cfgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfgUserIP :: Lens' CreativeFieldsGet' (Maybe Text)
cfgUserIP
  = lens _cfgUserIP (\ s a -> s{_cfgUserIP = a})

-- | User profile ID associated with this request.
cfgProFileId :: Lens' CreativeFieldsGet' Int64
cfgProFileId
  = lens _cfgProFileId (\ s a -> s{_cfgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfgKey :: Lens' CreativeFieldsGet' (Maybe Key)
cfgKey = lens _cfgKey (\ s a -> s{_cfgKey = a})

-- | Creative Field ID
cfgId :: Lens' CreativeFieldsGet' Int64
cfgId = lens _cfgId (\ s a -> s{_cfgId = a})

-- | OAuth 2.0 token for the current user.
cfgOAuthToken :: Lens' CreativeFieldsGet' (Maybe OAuthToken)
cfgOAuthToken
  = lens _cfgOAuthToken
      (\ s a -> s{_cfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfgFields :: Lens' CreativeFieldsGet' (Maybe Text)
cfgFields
  = lens _cfgFields (\ s a -> s{_cfgFields = a})

instance GoogleAuth CreativeFieldsGet' where
        authKey = cfgKey . _Just
        authToken = cfgOAuthToken . _Just

instance GoogleRequest CreativeFieldsGet' where
        type Rs CreativeFieldsGet' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsGet'{..}
          = go _cfgProFileId _cfgId _cfgQuotaUser
              (Just _cfgPrettyPrint)
              _cfgUserIP
              _cfgFields
              _cfgKey
              _cfgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsGetResource)
                      r
                      u
