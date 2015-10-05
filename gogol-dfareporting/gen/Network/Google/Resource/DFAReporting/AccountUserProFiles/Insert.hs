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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesInsert@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
    (
    -- * REST Resource
      AccountUserProFilesInsertResource

    -- * Creating a Request
    , accountUserProFilesInsert'
    , AccountUserProFilesInsert'

    -- * Request Lenses
    , aupfiQuotaUser
    , aupfiPrettyPrint
    , aupfiUserIP
    , aupfiProFileId
    , aupfiPayload
    , aupfiKey
    , aupfiOAuthToken
    , aupfiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesInsert@ which the
-- 'AccountUserProFilesInsert'' request conforms to.
type AccountUserProFilesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountUserProFile :>
                           Post '[JSON] AccountUserProFile

-- | Inserts a new account user profile.
--
-- /See:/ 'accountUserProFilesInsert'' smart constructor.
data AccountUserProFilesInsert' = AccountUserProFilesInsert'
    { _aupfiQuotaUser   :: !(Maybe Text)
    , _aupfiPrettyPrint :: !Bool
    , _aupfiUserIP      :: !(Maybe Text)
    , _aupfiProFileId   :: !Int64
    , _aupfiPayload     :: !AccountUserProFile
    , _aupfiKey         :: !(Maybe Key)
    , _aupfiOAuthToken  :: !(Maybe OAuthToken)
    , _aupfiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfiQuotaUser'
--
-- * 'aupfiPrettyPrint'
--
-- * 'aupfiUserIP'
--
-- * 'aupfiProFileId'
--
-- * 'aupfiPayload'
--
-- * 'aupfiKey'
--
-- * 'aupfiOAuthToken'
--
-- * 'aupfiFields'
accountUserProFilesInsert'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProFile -- ^ 'payload'
    -> AccountUserProFilesInsert'
accountUserProFilesInsert' pAupfiProFileId_ pAupfiPayload_ =
    AccountUserProFilesInsert'
    { _aupfiQuotaUser = Nothing
    , _aupfiPrettyPrint = True
    , _aupfiUserIP = Nothing
    , _aupfiProFileId = pAupfiProFileId_
    , _aupfiPayload = pAupfiPayload_
    , _aupfiKey = Nothing
    , _aupfiOAuthToken = Nothing
    , _aupfiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupfiQuotaUser :: Lens' AccountUserProFilesInsert' (Maybe Text)
aupfiQuotaUser
  = lens _aupfiQuotaUser
      (\ s a -> s{_aupfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupfiPrettyPrint :: Lens' AccountUserProFilesInsert' Bool
aupfiPrettyPrint
  = lens _aupfiPrettyPrint
      (\ s a -> s{_aupfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupfiUserIP :: Lens' AccountUserProFilesInsert' (Maybe Text)
aupfiUserIP
  = lens _aupfiUserIP (\ s a -> s{_aupfiUserIP = a})

-- | User profile ID associated with this request.
aupfiProFileId :: Lens' AccountUserProFilesInsert' Int64
aupfiProFileId
  = lens _aupfiProFileId
      (\ s a -> s{_aupfiProFileId = a})

-- | Multipart request metadata.
aupfiPayload :: Lens' AccountUserProFilesInsert' AccountUserProFile
aupfiPayload
  = lens _aupfiPayload (\ s a -> s{_aupfiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupfiKey :: Lens' AccountUserProFilesInsert' (Maybe Key)
aupfiKey = lens _aupfiKey (\ s a -> s{_aupfiKey = a})

-- | OAuth 2.0 token for the current user.
aupfiOAuthToken :: Lens' AccountUserProFilesInsert' (Maybe OAuthToken)
aupfiOAuthToken
  = lens _aupfiOAuthToken
      (\ s a -> s{_aupfiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupfiFields :: Lens' AccountUserProFilesInsert' (Maybe Text)
aupfiFields
  = lens _aupfiFields (\ s a -> s{_aupfiFields = a})

instance GoogleAuth AccountUserProFilesInsert' where
        authKey = aupfiKey . _Just
        authToken = aupfiOAuthToken . _Just

instance GoogleRequest AccountUserProFilesInsert'
         where
        type Rs AccountUserProFilesInsert' =
             AccountUserProFile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProFilesInsert'{..}
          = go _aupfiProFileId _aupfiQuotaUser
              (Just _aupfiPrettyPrint)
              _aupfiUserIP
              _aupfiFields
              _aupfiKey
              _aupfiOAuthToken
              (Just AltJSON)
              _aupfiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProFilesInsertResource)
                      r
                      u
