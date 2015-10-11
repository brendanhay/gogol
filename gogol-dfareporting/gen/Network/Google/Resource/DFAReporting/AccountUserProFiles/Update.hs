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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesUpdate@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
    (
    -- * REST Resource
      AccountUserProFilesUpdateResource

    -- * Creating a Request
    , accountUserProFilesUpdate'
    , AccountUserProFilesUpdate'

    -- * Request Lenses
    , aupfuQuotaUser
    , aupfuPrettyPrint
    , aupfuUserIP
    , aupfuProFileId
    , aupfuPayload
    , aupfuKey
    , aupfuOAuthToken
    , aupfuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesUpdate@ method which the
-- 'AccountUserProFilesUpdate'' request conforms to.
type AccountUserProFilesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountUserProFile :>
                           Put '[JSON] AccountUserProFile

-- | Updates an existing account user profile.
--
-- /See:/ 'accountUserProFilesUpdate'' smart constructor.
data AccountUserProFilesUpdate' = AccountUserProFilesUpdate'
    { _aupfuQuotaUser   :: !(Maybe Text)
    , _aupfuPrettyPrint :: !Bool
    , _aupfuUserIP      :: !(Maybe Text)
    , _aupfuProFileId   :: !Int64
    , _aupfuPayload     :: !AccountUserProFile
    , _aupfuKey         :: !(Maybe AuthKey)
    , _aupfuOAuthToken  :: !(Maybe OAuthToken)
    , _aupfuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfuQuotaUser'
--
-- * 'aupfuPrettyPrint'
--
-- * 'aupfuUserIP'
--
-- * 'aupfuProFileId'
--
-- * 'aupfuPayload'
--
-- * 'aupfuKey'
--
-- * 'aupfuOAuthToken'
--
-- * 'aupfuFields'
accountUserProFilesUpdate'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProFile -- ^ 'payload'
    -> AccountUserProFilesUpdate'
accountUserProFilesUpdate' pAupfuProFileId_ pAupfuPayload_ =
    AccountUserProFilesUpdate'
    { _aupfuQuotaUser = Nothing
    , _aupfuPrettyPrint = True
    , _aupfuUserIP = Nothing
    , _aupfuProFileId = pAupfuProFileId_
    , _aupfuPayload = pAupfuPayload_
    , _aupfuKey = Nothing
    , _aupfuOAuthToken = Nothing
    , _aupfuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupfuQuotaUser :: Lens' AccountUserProFilesUpdate' (Maybe Text)
aupfuQuotaUser
  = lens _aupfuQuotaUser
      (\ s a -> s{_aupfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupfuPrettyPrint :: Lens' AccountUserProFilesUpdate' Bool
aupfuPrettyPrint
  = lens _aupfuPrettyPrint
      (\ s a -> s{_aupfuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupfuUserIP :: Lens' AccountUserProFilesUpdate' (Maybe Text)
aupfuUserIP
  = lens _aupfuUserIP (\ s a -> s{_aupfuUserIP = a})

-- | User profile ID associated with this request.
aupfuProFileId :: Lens' AccountUserProFilesUpdate' Int64
aupfuProFileId
  = lens _aupfuProFileId
      (\ s a -> s{_aupfuProFileId = a})

-- | Multipart request metadata.
aupfuPayload :: Lens' AccountUserProFilesUpdate' AccountUserProFile
aupfuPayload
  = lens _aupfuPayload (\ s a -> s{_aupfuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupfuKey :: Lens' AccountUserProFilesUpdate' (Maybe AuthKey)
aupfuKey = lens _aupfuKey (\ s a -> s{_aupfuKey = a})

-- | OAuth 2.0 token for the current user.
aupfuOAuthToken :: Lens' AccountUserProFilesUpdate' (Maybe OAuthToken)
aupfuOAuthToken
  = lens _aupfuOAuthToken
      (\ s a -> s{_aupfuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupfuFields :: Lens' AccountUserProFilesUpdate' (Maybe Text)
aupfuFields
  = lens _aupfuFields (\ s a -> s{_aupfuFields = a})

instance GoogleAuth AccountUserProFilesUpdate' where
        _AuthKey = aupfuKey . _Just
        _AuthToken = aupfuOAuthToken . _Just

instance GoogleRequest AccountUserProFilesUpdate'
         where
        type Rs AccountUserProFilesUpdate' =
             AccountUserProFile
        request = requestWith dFAReportingRequest
        requestWith rq AccountUserProFilesUpdate'{..}
          = go _aupfuProFileId _aupfuQuotaUser
              (Just _aupfuPrettyPrint)
              _aupfuUserIP
              _aupfuFields
              _aupfuKey
              _aupfuOAuthToken
              (Just AltJSON)
              _aupfuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountUserProFilesUpdateResource)
                      rq
