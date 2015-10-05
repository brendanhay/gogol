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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesPatch@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch
    (
    -- * REST Resource
      AccountUserProFilesPatchResource

    -- * Creating a Request
    , accountUserProFilesPatch'
    , AccountUserProFilesPatch'

    -- * Request Lenses
    , aupfpQuotaUser
    , aupfpPrettyPrint
    , aupfpUserIP
    , aupfpProFileId
    , aupfpPayload
    , aupfpKey
    , aupfpId
    , aupfpOAuthToken
    , aupfpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesPatch@ which the
-- 'AccountUserProFilesPatch'' request conforms to.
type AccountUserProFilesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountUserProFile :>
                             Patch '[JSON] AccountUserProFile

-- | Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ 'accountUserProFilesPatch'' smart constructor.
data AccountUserProFilesPatch' = AccountUserProFilesPatch'
    { _aupfpQuotaUser   :: !(Maybe Text)
    , _aupfpPrettyPrint :: !Bool
    , _aupfpUserIP      :: !(Maybe Text)
    , _aupfpProFileId   :: !Int64
    , _aupfpPayload     :: !AccountUserProFile
    , _aupfpKey         :: !(Maybe AuthKey)
    , _aupfpId          :: !Int64
    , _aupfpOAuthToken  :: !(Maybe OAuthToken)
    , _aupfpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfpQuotaUser'
--
-- * 'aupfpPrettyPrint'
--
-- * 'aupfpUserIP'
--
-- * 'aupfpProFileId'
--
-- * 'aupfpPayload'
--
-- * 'aupfpKey'
--
-- * 'aupfpId'
--
-- * 'aupfpOAuthToken'
--
-- * 'aupfpFields'
accountUserProFilesPatch'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProFile -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AccountUserProFilesPatch'
accountUserProFilesPatch' pAupfpProFileId_ pAupfpPayload_ pAupfpId_ =
    AccountUserProFilesPatch'
    { _aupfpQuotaUser = Nothing
    , _aupfpPrettyPrint = True
    , _aupfpUserIP = Nothing
    , _aupfpProFileId = pAupfpProFileId_
    , _aupfpPayload = pAupfpPayload_
    , _aupfpKey = Nothing
    , _aupfpId = pAupfpId_
    , _aupfpOAuthToken = Nothing
    , _aupfpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupfpQuotaUser :: Lens' AccountUserProFilesPatch' (Maybe Text)
aupfpQuotaUser
  = lens _aupfpQuotaUser
      (\ s a -> s{_aupfpQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupfpPrettyPrint :: Lens' AccountUserProFilesPatch' Bool
aupfpPrettyPrint
  = lens _aupfpPrettyPrint
      (\ s a -> s{_aupfpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupfpUserIP :: Lens' AccountUserProFilesPatch' (Maybe Text)
aupfpUserIP
  = lens _aupfpUserIP (\ s a -> s{_aupfpUserIP = a})

-- | User profile ID associated with this request.
aupfpProFileId :: Lens' AccountUserProFilesPatch' Int64
aupfpProFileId
  = lens _aupfpProFileId
      (\ s a -> s{_aupfpProFileId = a})

-- | Multipart request metadata.
aupfpPayload :: Lens' AccountUserProFilesPatch' AccountUserProFile
aupfpPayload
  = lens _aupfpPayload (\ s a -> s{_aupfpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupfpKey :: Lens' AccountUserProFilesPatch' (Maybe AuthKey)
aupfpKey = lens _aupfpKey (\ s a -> s{_aupfpKey = a})

-- | User profile ID.
aupfpId :: Lens' AccountUserProFilesPatch' Int64
aupfpId = lens _aupfpId (\ s a -> s{_aupfpId = a})

-- | OAuth 2.0 token for the current user.
aupfpOAuthToken :: Lens' AccountUserProFilesPatch' (Maybe OAuthToken)
aupfpOAuthToken
  = lens _aupfpOAuthToken
      (\ s a -> s{_aupfpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupfpFields :: Lens' AccountUserProFilesPatch' (Maybe Text)
aupfpFields
  = lens _aupfpFields (\ s a -> s{_aupfpFields = a})

instance GoogleAuth AccountUserProFilesPatch' where
        authKey = aupfpKey . _Just
        authToken = aupfpOAuthToken . _Just

instance GoogleRequest AccountUserProFilesPatch'
         where
        type Rs AccountUserProFilesPatch' =
             AccountUserProFile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProFilesPatch'{..}
          = go _aupfpProFileId (Just _aupfpId) _aupfpQuotaUser
              (Just _aupfpPrettyPrint)
              _aupfpUserIP
              _aupfpFields
              _aupfpKey
              _aupfpOAuthToken
              (Just AltJSON)
              _aupfpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProFilesPatchResource)
                      r
                      u
