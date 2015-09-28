{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Changes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.list@.
module Network.Google.API.Drive.Changes.List
    (
    -- * REST Resource
      ChangesListAPI

    -- * Creating a Request
    , changesList'
    , ChangesList'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cIncludeSubscribed
    , cStartChangeId
    , cKey
    , cSpaces
    , cPageToken
    , cOauthToken
    , cMaxResults
    , cIncludeDeleted
    , cFields
    , cAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.changes.list which the
-- 'ChangesList'' request conforms to.
type ChangesListAPI =
     "changes" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "includeSubscribed" Bool :>
               QueryParam "startChangeId" Int64 :>
                 QueryParam "key" Text :>
                   QueryParam "spaces" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "includeDeleted" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] ChangeList

-- | Lists the changes for a user.
--
-- /See:/ 'changesList'' smart constructor.
data ChangesList' = ChangesList'
    { _cQuotaUser         :: !(Maybe Text)
    , _cPrettyPrint       :: !Bool
    , _cUserIp            :: !(Maybe Text)
    , _cIncludeSubscribed :: !Bool
    , _cStartChangeId     :: !(Maybe Int64)
    , _cKey               :: !(Maybe Text)
    , _cSpaces            :: !(Maybe Text)
    , _cPageToken         :: !(Maybe Text)
    , _cOauthToken        :: !(Maybe Text)
    , _cMaxResults        :: !Nat
    , _cIncludeDeleted    :: !Bool
    , _cFields            :: !(Maybe Text)
    , _cAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cIncludeSubscribed'
--
-- * 'cStartChangeId'
--
-- * 'cKey'
--
-- * 'cSpaces'
--
-- * 'cPageToken'
--
-- * 'cOauthToken'
--
-- * 'cMaxResults'
--
-- * 'cIncludeDeleted'
--
-- * 'cFields'
--
-- * 'cAlt'
changesList'
    :: ChangesList'
changesList' =
    ChangesList'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cIncludeSubscribed = True
    , _cStartChangeId = Nothing
    , _cKey = Nothing
    , _cSpaces = Nothing
    , _cPageToken = Nothing
    , _cOauthToken = Nothing
    , _cMaxResults = 100
    , _cIncludeDeleted = True
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' ChangesList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' ChangesList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' ChangesList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
cIncludeSubscribed :: Lens' ChangesList' Bool
cIncludeSubscribed
  = lens _cIncludeSubscribed
      (\ s a -> s{_cIncludeSubscribed = a})

-- | Change ID to start listing changes from.
cStartChangeId :: Lens' ChangesList' (Maybe Int64)
cStartChangeId
  = lens _cStartChangeId
      (\ s a -> s{_cStartChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ChangesList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
cSpaces :: Lens' ChangesList' (Maybe Text)
cSpaces = lens _cSpaces (\ s a -> s{_cSpaces = a})

-- | Page token for changes.
cPageToken :: Lens' ChangesList' (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' ChangesList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Maximum number of changes to return.
cMaxResults :: Lens' ChangesList' Natural
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a}) .
      _Nat

-- | Whether to include deleted items.
cIncludeDeleted :: Lens' ChangesList' Bool
cIncludeDeleted
  = lens _cIncludeDeleted
      (\ s a -> s{_cIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ChangesList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' ChangesList' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangeList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesList'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cUserIp
              (Just _cIncludeSubscribed)
              _cStartChangeId
              _cKey
              _cSpaces
              _cPageToken
              _cOauthToken
              (Just _cMaxResults)
              (Just _cIncludeDeleted)
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChangesListAPI) r u
