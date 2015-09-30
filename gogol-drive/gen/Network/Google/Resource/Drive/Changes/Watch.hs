{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Changes.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Subscribe to changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChangesWatch@.
module Network.Google.Resource.Drive.Changes.Watch
    (
    -- * REST Resource
      ChangesWatchResource

    -- * Creating a Request
    , changesWatch'
    , ChangesWatch'

    -- * Request Lenses
    , cwQuotaUser
    , cwPrettyPrint
    , cwUserIp
    , cwIncludeSubscribed
    , cwStartChangeId
    , cwKey
    , cwSpaces
    , cwPageToken
    , cwOauthToken
    , cwMaxResults
    , cwIncludeDeleted
    , cwFields
    , cwAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesWatch@ which the
-- 'ChangesWatch'' request conforms to.
type ChangesWatchResource =
     "changes" :>
       "watch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "includeSubscribed" Bool :>
                 QueryParam "startChangeId" Int64 :>
                   QueryParam "key" Text :>
                     QueryParam "spaces" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "includeDeleted" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Post '[JSON] Channel

-- | Subscribe to changes for a user.
--
-- /See:/ 'changesWatch'' smart constructor.
data ChangesWatch' = ChangesWatch'
    { _cwQuotaUser         :: !(Maybe Text)
    , _cwPrettyPrint       :: !Bool
    , _cwUserIp            :: !(Maybe Text)
    , _cwIncludeSubscribed :: !Bool
    , _cwStartChangeId     :: !(Maybe Int64)
    , _cwKey               :: !(Maybe Text)
    , _cwSpaces            :: !(Maybe Text)
    , _cwPageToken         :: !(Maybe Text)
    , _cwOauthToken        :: !(Maybe Text)
    , _cwMaxResults        :: !Int32
    , _cwIncludeDeleted    :: !Bool
    , _cwFields            :: !(Maybe Text)
    , _cwAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwQuotaUser'
--
-- * 'cwPrettyPrint'
--
-- * 'cwUserIp'
--
-- * 'cwIncludeSubscribed'
--
-- * 'cwStartChangeId'
--
-- * 'cwKey'
--
-- * 'cwSpaces'
--
-- * 'cwPageToken'
--
-- * 'cwOauthToken'
--
-- * 'cwMaxResults'
--
-- * 'cwIncludeDeleted'
--
-- * 'cwFields'
--
-- * 'cwAlt'
changesWatch'
    :: ChangesWatch'
changesWatch' =
    ChangesWatch'
    { _cwQuotaUser = Nothing
    , _cwPrettyPrint = True
    , _cwUserIp = Nothing
    , _cwIncludeSubscribed = True
    , _cwStartChangeId = Nothing
    , _cwKey = Nothing
    , _cwSpaces = Nothing
    , _cwPageToken = Nothing
    , _cwOauthToken = Nothing
    , _cwMaxResults = 100
    , _cwIncludeDeleted = True
    , _cwFields = Nothing
    , _cwAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cwQuotaUser :: Lens' ChangesWatch' (Maybe Text)
cwQuotaUser
  = lens _cwQuotaUser (\ s a -> s{_cwQuotaUser = a})

-- | Returns response with indentations and line breaks.
cwPrettyPrint :: Lens' ChangesWatch' Bool
cwPrettyPrint
  = lens _cwPrettyPrint
      (\ s a -> s{_cwPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cwUserIp :: Lens' ChangesWatch' (Maybe Text)
cwUserIp = lens _cwUserIp (\ s a -> s{_cwUserIp = a})

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
cwIncludeSubscribed :: Lens' ChangesWatch' Bool
cwIncludeSubscribed
  = lens _cwIncludeSubscribed
      (\ s a -> s{_cwIncludeSubscribed = a})

-- | Change ID to start listing changes from.
cwStartChangeId :: Lens' ChangesWatch' (Maybe Int64)
cwStartChangeId
  = lens _cwStartChangeId
      (\ s a -> s{_cwStartChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cwKey :: Lens' ChangesWatch' (Maybe Text)
cwKey = lens _cwKey (\ s a -> s{_cwKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
cwSpaces :: Lens' ChangesWatch' (Maybe Text)
cwSpaces = lens _cwSpaces (\ s a -> s{_cwSpaces = a})

-- | Page token for changes.
cwPageToken :: Lens' ChangesWatch' (Maybe Text)
cwPageToken
  = lens _cwPageToken (\ s a -> s{_cwPageToken = a})

-- | OAuth 2.0 token for the current user.
cwOauthToken :: Lens' ChangesWatch' (Maybe Text)
cwOauthToken
  = lens _cwOauthToken (\ s a -> s{_cwOauthToken = a})

-- | Maximum number of changes to return.
cwMaxResults :: Lens' ChangesWatch' Int32
cwMaxResults
  = lens _cwMaxResults (\ s a -> s{_cwMaxResults = a})

-- | Whether to include deleted items.
cwIncludeDeleted :: Lens' ChangesWatch' Bool
cwIncludeDeleted
  = lens _cwIncludeDeleted
      (\ s a -> s{_cwIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
cwFields :: Lens' ChangesWatch' (Maybe Text)
cwFields = lens _cwFields (\ s a -> s{_cwFields = a})

-- | Data format for the response.
cwAlt :: Lens' ChangesWatch' Alt
cwAlt = lens _cwAlt (\ s a -> s{_cwAlt = a})

instance GoogleRequest ChangesWatch' where
        type Rs ChangesWatch' = Channel
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesWatch'{..}
          = go _cwQuotaUser (Just _cwPrettyPrint) _cwUserIp
              (Just _cwIncludeSubscribed)
              _cwStartChangeId
              _cwKey
              _cwSpaces
              _cwPageToken
              _cwOauthToken
              (Just _cwMaxResults)
              (Just _cwIncludeDeleted)
              _cwFields
              (Just _cwAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangesWatchResource)
                      r
                      u
