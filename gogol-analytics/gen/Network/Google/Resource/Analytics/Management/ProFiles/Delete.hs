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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesDelete@.
module Network.Google.Resource.Analytics.Management.ProFiles.Delete
    (
    -- * REST Resource
      ManagementProFilesDeleteResource

    -- * Creating a Request
    , managementProFilesDelete'
    , ManagementProFilesDelete'

    -- * Request Lenses
    , mpfdQuotaUser
    , mpfdPrettyPrint
    , mpfdWebPropertyId
    , mpfdUserIP
    , mpfdProFileId
    , mpfdAccountId
    , mpfdKey
    , mpfdOAuthToken
    , mpfdFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesDelete@ which the
-- 'ManagementProFilesDelete'' request conforms to.
type ManagementProFilesDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a view (profile).
--
-- /See:/ 'managementProFilesDelete'' smart constructor.
data ManagementProFilesDelete' = ManagementProFilesDelete'
    { _mpfdQuotaUser     :: !(Maybe Text)
    , _mpfdPrettyPrint   :: !Bool
    , _mpfdWebPropertyId :: !Text
    , _mpfdUserIP        :: !(Maybe Text)
    , _mpfdProFileId     :: !Text
    , _mpfdAccountId     :: !Text
    , _mpfdKey           :: !(Maybe AuthKey)
    , _mpfdOAuthToken    :: !(Maybe OAuthToken)
    , _mpfdFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfdQuotaUser'
--
-- * 'mpfdPrettyPrint'
--
-- * 'mpfdWebPropertyId'
--
-- * 'mpfdUserIP'
--
-- * 'mpfdProFileId'
--
-- * 'mpfdAccountId'
--
-- * 'mpfdKey'
--
-- * 'mpfdOAuthToken'
--
-- * 'mpfdFields'
managementProFilesDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesDelete'
managementProFilesDelete' pMpfdWebPropertyId_ pMpfdProFileId_ pMpfdAccountId_ =
    ManagementProFilesDelete'
    { _mpfdQuotaUser = Nothing
    , _mpfdPrettyPrint = False
    , _mpfdWebPropertyId = pMpfdWebPropertyId_
    , _mpfdUserIP = Nothing
    , _mpfdProFileId = pMpfdProFileId_
    , _mpfdAccountId = pMpfdAccountId_
    , _mpfdKey = Nothing
    , _mpfdOAuthToken = Nothing
    , _mpfdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfdQuotaUser :: Lens' ManagementProFilesDelete' (Maybe Text)
mpfdQuotaUser
  = lens _mpfdQuotaUser
      (\ s a -> s{_mpfdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfdPrettyPrint :: Lens' ManagementProFilesDelete' Bool
mpfdPrettyPrint
  = lens _mpfdPrettyPrint
      (\ s a -> s{_mpfdPrettyPrint = a})

-- | Web property ID to delete the view (profile) for.
mpfdWebPropertyId :: Lens' ManagementProFilesDelete' Text
mpfdWebPropertyId
  = lens _mpfdWebPropertyId
      (\ s a -> s{_mpfdWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfdUserIP :: Lens' ManagementProFilesDelete' (Maybe Text)
mpfdUserIP
  = lens _mpfdUserIP (\ s a -> s{_mpfdUserIP = a})

-- | ID of the view (profile) to be deleted.
mpfdProFileId :: Lens' ManagementProFilesDelete' Text
mpfdProFileId
  = lens _mpfdProFileId
      (\ s a -> s{_mpfdProFileId = a})

-- | Account ID to delete the view (profile) for.
mpfdAccountId :: Lens' ManagementProFilesDelete' Text
mpfdAccountId
  = lens _mpfdAccountId
      (\ s a -> s{_mpfdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfdKey :: Lens' ManagementProFilesDelete' (Maybe AuthKey)
mpfdKey = lens _mpfdKey (\ s a -> s{_mpfdKey = a})

-- | OAuth 2.0 token for the current user.
mpfdOAuthToken :: Lens' ManagementProFilesDelete' (Maybe OAuthToken)
mpfdOAuthToken
  = lens _mpfdOAuthToken
      (\ s a -> s{_mpfdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfdFields :: Lens' ManagementProFilesDelete' (Maybe Text)
mpfdFields
  = lens _mpfdFields (\ s a -> s{_mpfdFields = a})

instance GoogleAuth ManagementProFilesDelete' where
        authKey = mpfdKey . _Just
        authToken = mpfdOAuthToken . _Just

instance GoogleRequest ManagementProFilesDelete'
         where
        type Rs ManagementProFilesDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProFilesDelete'{..}
          = go _mpfdAccountId _mpfdWebPropertyId _mpfdProFileId
              _mpfdQuotaUser
              (Just _mpfdPrettyPrint)
              _mpfdUserIP
              _mpfdFields
              _mpfdKey
              _mpfdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProFilesDeleteResource)
                      r
                      u
