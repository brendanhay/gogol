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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists views (profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesList@.
module Network.Google.Resource.Analytics.Management.ProFiles.List
    (
    -- * REST Resource
      ManagementProFilesListResource

    -- * Creating a Request
    , managementProFilesList'
    , ManagementProFilesList'

    -- * Request Lenses
    , mpflQuotaUser
    , mpflPrettyPrint
    , mpflWebPropertyId
    , mpflUserIP
    , mpflAccountId
    , mpflKey
    , mpflOAuthToken
    , mpflStartIndex
    , mpflMaxResults
    , mpflFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesList@ which the
-- 'ManagementProFilesList'' request conforms to.
type ManagementProFilesListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ProFiles

-- | Lists views (profiles) to which the user has access.
--
-- /See:/ 'managementProFilesList'' smart constructor.
data ManagementProFilesList' = ManagementProFilesList'
    { _mpflQuotaUser     :: !(Maybe Text)
    , _mpflPrettyPrint   :: !Bool
    , _mpflWebPropertyId :: !Text
    , _mpflUserIP        :: !(Maybe Text)
    , _mpflAccountId     :: !Text
    , _mpflKey           :: !(Maybe AuthKey)
    , _mpflOAuthToken    :: !(Maybe OAuthToken)
    , _mpflStartIndex    :: !(Maybe Int32)
    , _mpflMaxResults    :: !(Maybe Int32)
    , _mpflFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpflQuotaUser'
--
-- * 'mpflPrettyPrint'
--
-- * 'mpflWebPropertyId'
--
-- * 'mpflUserIP'
--
-- * 'mpflAccountId'
--
-- * 'mpflKey'
--
-- * 'mpflOAuthToken'
--
-- * 'mpflStartIndex'
--
-- * 'mpflMaxResults'
--
-- * 'mpflFields'
managementProFilesList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesList'
managementProFilesList' pMpflWebPropertyId_ pMpflAccountId_ =
    ManagementProFilesList'
    { _mpflQuotaUser = Nothing
    , _mpflPrettyPrint = False
    , _mpflWebPropertyId = pMpflWebPropertyId_
    , _mpflUserIP = Nothing
    , _mpflAccountId = pMpflAccountId_
    , _mpflKey = Nothing
    , _mpflOAuthToken = Nothing
    , _mpflStartIndex = Nothing
    , _mpflMaxResults = Nothing
    , _mpflFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpflQuotaUser :: Lens' ManagementProFilesList' (Maybe Text)
mpflQuotaUser
  = lens _mpflQuotaUser
      (\ s a -> s{_mpflQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpflPrettyPrint :: Lens' ManagementProFilesList' Bool
mpflPrettyPrint
  = lens _mpflPrettyPrint
      (\ s a -> s{_mpflPrettyPrint = a})

-- | Web property ID for the views (profiles) to retrieve. Can either be a
-- specific web property ID or \'~all\', which refers to all the web
-- properties to which the user has access.
mpflWebPropertyId :: Lens' ManagementProFilesList' Text
mpflWebPropertyId
  = lens _mpflWebPropertyId
      (\ s a -> s{_mpflWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpflUserIP :: Lens' ManagementProFilesList' (Maybe Text)
mpflUserIP
  = lens _mpflUserIP (\ s a -> s{_mpflUserIP = a})

-- | Account ID for the view (profiles) to retrieve. Can either be a specific
-- account ID or \'~all\', which refers to all the accounts to which the
-- user has access.
mpflAccountId :: Lens' ManagementProFilesList' Text
mpflAccountId
  = lens _mpflAccountId
      (\ s a -> s{_mpflAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpflKey :: Lens' ManagementProFilesList' (Maybe AuthKey)
mpflKey = lens _mpflKey (\ s a -> s{_mpflKey = a})

-- | OAuth 2.0 token for the current user.
mpflOAuthToken :: Lens' ManagementProFilesList' (Maybe OAuthToken)
mpflOAuthToken
  = lens _mpflOAuthToken
      (\ s a -> s{_mpflOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mpflStartIndex :: Lens' ManagementProFilesList' (Maybe Int32)
mpflStartIndex
  = lens _mpflStartIndex
      (\ s a -> s{_mpflStartIndex = a})

-- | The maximum number of views (profiles) to include in this response.
mpflMaxResults :: Lens' ManagementProFilesList' (Maybe Int32)
mpflMaxResults
  = lens _mpflMaxResults
      (\ s a -> s{_mpflMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mpflFields :: Lens' ManagementProFilesList' (Maybe Text)
mpflFields
  = lens _mpflFields (\ s a -> s{_mpflFields = a})

instance GoogleAuth ManagementProFilesList' where
        _AuthKey = mpflKey . _Just
        _AuthToken = mpflOAuthToken . _Just

instance GoogleRequest ManagementProFilesList' where
        type Rs ManagementProFilesList' = ProFiles
        request = requestWith analyticsRequest
        requestWith rq ManagementProFilesList'{..}
          = go _mpflAccountId _mpflWebPropertyId
              _mpflStartIndex
              _mpflMaxResults
              _mpflQuotaUser
              (Just _mpflPrettyPrint)
              _mpflUserIP
              _mpflFields
              _mpflKey
              _mpflOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementProFilesListResource)
                      rq
