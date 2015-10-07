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
-- Module      : Network.Google.Resource.GroupsMigration.Archive.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference> for @GroupsmigrationArchiveInsert@.
module Network.Google.Resource.GroupsMigration.Archive.Insert
    (
    -- * REST Resource
      ArchiveInsertResource

    -- * Creating a Request
    , archiveInsert'
    , ArchiveInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIP
    , aiMedia
    , aiKey
    , aiGroupId
    , aiOAuthToken
    , aiFields
    ) where

import           Network.Google.GroupsMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @GroupsmigrationArchiveInsert@ method which the
-- 'ArchiveInsert'' request conforms to.
type ArchiveInsertResource =
     Capture "groupId" Text :>
       "archive" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] Stream :> Post '[JSON] Groups

-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ 'archiveInsert'' smart constructor.
data ArchiveInsert' = ArchiveInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIP      :: !(Maybe Text)
    , _aiMedia       :: !Stream
    , _aiKey         :: !(Maybe AuthKey)
    , _aiGroupId     :: !Text
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiFields      :: !(Maybe Text)
    }

-- | Creates a value of 'ArchiveInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIP'
--
-- * 'aiMedia'
--
-- * 'aiKey'
--
-- * 'aiGroupId'
--
-- * 'aiOAuthToken'
--
-- * 'aiFields'
archiveInsert'
    :: Stream -- ^ 'media'
    -> Text -- ^ 'groupId'
    -> ArchiveInsert'
archiveInsert' pAiMedia_ pAiGroupId_ =
    ArchiveInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIP = Nothing
    , _aiMedia = pAiMedia_
    , _aiKey = Nothing
    , _aiGroupId = pAiGroupId_
    , _aiOAuthToken = Nothing
    , _aiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' ArchiveInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' ArchiveInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIP :: Lens' ArchiveInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

aiMedia :: Lens' ArchiveInsert' Stream
aiMedia = lens _aiMedia (\ s a -> s{_aiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ArchiveInsert' (Maybe AuthKey)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | The group ID
aiGroupId :: Lens' ArchiveInsert' Text
aiGroupId
  = lens _aiGroupId (\ s a -> s{_aiGroupId = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' ArchiveInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ArchiveInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth ArchiveInsert' where
        _AuthKey = aiKey . _Just
        _AuthToken = aiOAuthToken . _Just

instance GoogleRequest ArchiveInsert' where
        type Rs ArchiveInsert' = Groups
        request = requestWith groupsMigrationRequest
        requestWith rq ArchiveInsert'{..}
          = go _aiGroupId _aiQuotaUser (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiMedia
          where go
                  = clientBuild (Proxy :: Proxy ArchiveInsertResource)
                      rq
