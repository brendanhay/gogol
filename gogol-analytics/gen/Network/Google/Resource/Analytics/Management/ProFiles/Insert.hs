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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesInsert@.
module Network.Google.Resource.Analytics.Management.ProFiles.Insert
    (
    -- * REST Resource
      ManagementProFilesInsertResource

    -- * Creating a Request
    , managementProFilesInsert'
    , ManagementProFilesInsert'

    -- * Request Lenses
    , mpfiQuotaUser
    , mpfiPrettyPrint
    , mpfiWebPropertyId
    , mpfiUserIP
    , mpfiPayload
    , mpfiAccountId
    , mpfiKey
    , mpfiOAuthToken
    , mpfiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesInsert@ which the
-- 'ManagementProFilesInsert'' request conforms to.
type ManagementProFilesInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ProFile :> Post '[JSON] ProFile

-- | Create a new view (profile).
--
-- /See:/ 'managementProFilesInsert'' smart constructor.
data ManagementProFilesInsert' = ManagementProFilesInsert'
    { _mpfiQuotaUser     :: !(Maybe Text)
    , _mpfiPrettyPrint   :: !Bool
    , _mpfiWebPropertyId :: !Text
    , _mpfiUserIP        :: !(Maybe Text)
    , _mpfiPayload       :: !ProFile
    , _mpfiAccountId     :: !Text
    , _mpfiKey           :: !(Maybe AuthKey)
    , _mpfiOAuthToken    :: !(Maybe OAuthToken)
    , _mpfiFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfiQuotaUser'
--
-- * 'mpfiPrettyPrint'
--
-- * 'mpfiWebPropertyId'
--
-- * 'mpfiUserIP'
--
-- * 'mpfiPayload'
--
-- * 'mpfiAccountId'
--
-- * 'mpfiKey'
--
-- * 'mpfiOAuthToken'
--
-- * 'mpfiFields'
managementProFilesInsert'
    :: Text -- ^ 'webPropertyId'
    -> ProFile -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesInsert'
managementProFilesInsert' pMpfiWebPropertyId_ pMpfiPayload_ pMpfiAccountId_ =
    ManagementProFilesInsert'
    { _mpfiQuotaUser = Nothing
    , _mpfiPrettyPrint = False
    , _mpfiWebPropertyId = pMpfiWebPropertyId_
    , _mpfiUserIP = Nothing
    , _mpfiPayload = pMpfiPayload_
    , _mpfiAccountId = pMpfiAccountId_
    , _mpfiKey = Nothing
    , _mpfiOAuthToken = Nothing
    , _mpfiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfiQuotaUser :: Lens' ManagementProFilesInsert' (Maybe Text)
mpfiQuotaUser
  = lens _mpfiQuotaUser
      (\ s a -> s{_mpfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfiPrettyPrint :: Lens' ManagementProFilesInsert' Bool
mpfiPrettyPrint
  = lens _mpfiPrettyPrint
      (\ s a -> s{_mpfiPrettyPrint = a})

-- | Web property ID to create the view (profile) for.
mpfiWebPropertyId :: Lens' ManagementProFilesInsert' Text
mpfiWebPropertyId
  = lens _mpfiWebPropertyId
      (\ s a -> s{_mpfiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfiUserIP :: Lens' ManagementProFilesInsert' (Maybe Text)
mpfiUserIP
  = lens _mpfiUserIP (\ s a -> s{_mpfiUserIP = a})

-- | Multipart request metadata.
mpfiPayload :: Lens' ManagementProFilesInsert' ProFile
mpfiPayload
  = lens _mpfiPayload (\ s a -> s{_mpfiPayload = a})

-- | Account ID to create the view (profile) for.
mpfiAccountId :: Lens' ManagementProFilesInsert' Text
mpfiAccountId
  = lens _mpfiAccountId
      (\ s a -> s{_mpfiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfiKey :: Lens' ManagementProFilesInsert' (Maybe AuthKey)
mpfiKey = lens _mpfiKey (\ s a -> s{_mpfiKey = a})

-- | OAuth 2.0 token for the current user.
mpfiOAuthToken :: Lens' ManagementProFilesInsert' (Maybe OAuthToken)
mpfiOAuthToken
  = lens _mpfiOAuthToken
      (\ s a -> s{_mpfiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfiFields :: Lens' ManagementProFilesInsert' (Maybe Text)
mpfiFields
  = lens _mpfiFields (\ s a -> s{_mpfiFields = a})

instance GoogleAuth ManagementProFilesInsert' where
        _AuthKey = mpfiKey . _Just
        _AuthToken = mpfiOAuthToken . _Just

instance GoogleRequest ManagementProFilesInsert'
         where
        type Rs ManagementProFilesInsert' = ProFile
        request = requestWith analyticsRequest
        requestWith rq ManagementProFilesInsert'{..}
          = go _mpfiAccountId _mpfiWebPropertyId _mpfiQuotaUser
              (Just _mpfiPrettyPrint)
              _mpfiUserIP
              _mpfiFields
              _mpfiKey
              _mpfiOAuthToken
              (Just AltJSON)
              _mpfiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementProFilesInsertResource)
                      rq
