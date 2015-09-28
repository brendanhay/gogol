{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GroupsMigration.Archive.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-migration/ Groups Migration API Reference> for @groupsmigration.archive.insert@.
module Network.Google.API.GroupsMigration.Archive.Insert
    (
    -- * REST Resource
      ArchiveInsertAPI

    -- * Creating a Request
    , archiveInsert'
    , ArchiveInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIp
    , aiKey
    , aiGroupId
    , aiOauthToken
    , aiFields
    , aiAlt
    ) where

import           Network.Google.Groups.Migration.Types
import           Network.Google.Prelude

-- | A resource alias for groupsmigration.archive.insert which the
-- 'ArchiveInsert'' request conforms to.
type ArchiveInsertAPI =
     Capture "groupId" Text :>
       "archive" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Groups

-- | Inserts a new mail into the archive of the Google group.
--
-- /See:/ 'archiveInsert'' smart constructor.
data ArchiveInsert' = ArchiveInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIp      :: !(Maybe Text)
    , _aiKey         :: !(Maybe Text)
    , _aiGroupId     :: !Text
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ArchiveInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIp'
--
-- * 'aiKey'
--
-- * 'aiGroupId'
--
-- * 'aiOauthToken'
--
-- * 'aiFields'
--
-- * 'aiAlt'
archiveInsert'
    :: Text -- ^ 'groupId'
    -> ArchiveInsert'
archiveInsert' pAiGroupId_ =
    ArchiveInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIp = Nothing
    , _aiKey = Nothing
    , _aiGroupId = pAiGroupId_
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = JSON
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
aiUserIp :: Lens' ArchiveInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ArchiveInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | The group ID
aiGroupId :: Lens' ArchiveInsert' Text
aiGroupId
  = lens _aiGroupId (\ s a -> s{_aiGroupId = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' ArchiveInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ArchiveInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' ArchiveInsert' Alt
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest ArchiveInsert' where
        type Rs ArchiveInsert' = Groups
        request = requestWithRoute defReq groupsMigrationURL
        requestWithRoute r u ArchiveInsert'{..}
          = go _aiQuotaUser (Just _aiPrettyPrint) _aiUserIp
              _aiKey
              _aiGroupId
              _aiOauthToken
              _aiFields
              (Just _aiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ArchiveInsertAPI) r
                      u
