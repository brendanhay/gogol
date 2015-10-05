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
    , cfvdUserIP
    , cfvdProFileId
    , cfvdKey
    , cfvdId
    , cfvdOAuthToken
    , cfvdFields
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
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing creative field value.
--
-- /See:/ 'creativeFieldValuesDelete'' smart constructor.
data CreativeFieldValuesDelete' = CreativeFieldValuesDelete'
    { _cfvdCreativeFieldId :: !Int64
    , _cfvdQuotaUser       :: !(Maybe Text)
    , _cfvdPrettyPrint     :: !Bool
    , _cfvdUserIP          :: !(Maybe Text)
    , _cfvdProFileId       :: !Int64
    , _cfvdKey             :: !(Maybe Key)
    , _cfvdId              :: !Int64
    , _cfvdOAuthToken      :: !(Maybe OAuthToken)
    , _cfvdFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cfvdUserIP'
--
-- * 'cfvdProFileId'
--
-- * 'cfvdKey'
--
-- * 'cfvdId'
--
-- * 'cfvdOAuthToken'
--
-- * 'cfvdFields'
creativeFieldValuesDelete'
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldValuesDelete'
creativeFieldValuesDelete' pCfvdCreativeFieldId_ pCfvdProFileId_ pCfvdId_ =
    CreativeFieldValuesDelete'
    { _cfvdCreativeFieldId = pCfvdCreativeFieldId_
    , _cfvdQuotaUser = Nothing
    , _cfvdPrettyPrint = True
    , _cfvdUserIP = Nothing
    , _cfvdProFileId = pCfvdProFileId_
    , _cfvdKey = Nothing
    , _cfvdId = pCfvdId_
    , _cfvdOAuthToken = Nothing
    , _cfvdFields = Nothing
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
cfvdUserIP :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdUserIP
  = lens _cfvdUserIP (\ s a -> s{_cfvdUserIP = a})

-- | User profile ID associated with this request.
cfvdProFileId :: Lens' CreativeFieldValuesDelete' Int64
cfvdProFileId
  = lens _cfvdProFileId
      (\ s a -> s{_cfvdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvdKey :: Lens' CreativeFieldValuesDelete' (Maybe Key)
cfvdKey = lens _cfvdKey (\ s a -> s{_cfvdKey = a})

-- | Creative Field Value ID
cfvdId :: Lens' CreativeFieldValuesDelete' Int64
cfvdId = lens _cfvdId (\ s a -> s{_cfvdId = a})

-- | OAuth 2.0 token for the current user.
cfvdOAuthToken :: Lens' CreativeFieldValuesDelete' (Maybe OAuthToken)
cfvdOAuthToken
  = lens _cfvdOAuthToken
      (\ s a -> s{_cfvdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfvdFields :: Lens' CreativeFieldValuesDelete' (Maybe Text)
cfvdFields
  = lens _cfvdFields (\ s a -> s{_cfvdFields = a})

instance GoogleAuth CreativeFieldValuesDelete' where
        authKey = cfvdKey . _Just
        authToken = cfvdOAuthToken . _Just

instance GoogleRequest CreativeFieldValuesDelete'
         where
        type Rs CreativeFieldValuesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesDelete'{..}
          = go _cfvdProFileId _cfvdCreativeFieldId _cfvdId
              _cfvdQuotaUser
              (Just _cfvdPrettyPrint)
              _cfvdUserIP
              _cfvdFields
              _cfvdKey
              _cfvdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesDeleteResource)
                      r
                      u
