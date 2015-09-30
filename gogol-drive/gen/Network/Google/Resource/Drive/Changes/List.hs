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
-- Module      : Network.Google.Resource.Drive.Changes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChangesList@.
module Network.Google.Resource.Drive.Changes.List
    (
    -- * REST Resource
      ChangesListResource

    -- * Creating a Request
    , changesList'
    , ChangesList'

    -- * Request Lenses
    , cllQuotaUser
    , cllPrettyPrint
    , cllUserIp
    , cllIncludeSubscribed
    , cllStartChangeId
    , cllKey
    , cllSpaces
    , cllPageToken
    , cllOauthToken
    , cllMaxResults
    , cllIncludeDeleted
    , cllFields
    , cllAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesList@ which the
-- 'ChangesList'' request conforms to.
type ChangesListResource =
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
                         QueryParam "maxResults" Int32 :>
                           QueryParam "includeDeleted" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] ChangeList

-- | Lists the changes for a user.
--
-- /See:/ 'changesList'' smart constructor.
data ChangesList' = ChangesList'
    { _cllQuotaUser         :: !(Maybe Text)
    , _cllPrettyPrint       :: !Bool
    , _cllUserIp            :: !(Maybe Text)
    , _cllIncludeSubscribed :: !Bool
    , _cllStartChangeId     :: !(Maybe Int64)
    , _cllKey               :: !(Maybe Text)
    , _cllSpaces            :: !(Maybe Text)
    , _cllPageToken         :: !(Maybe Text)
    , _cllOauthToken        :: !(Maybe Text)
    , _cllMaxResults        :: !Int32
    , _cllIncludeDeleted    :: !Bool
    , _cllFields            :: !(Maybe Text)
    , _cllAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllUserIp'
--
-- * 'cllIncludeSubscribed'
--
-- * 'cllStartChangeId'
--
-- * 'cllKey'
--
-- * 'cllSpaces'
--
-- * 'cllPageToken'
--
-- * 'cllOauthToken'
--
-- * 'cllMaxResults'
--
-- * 'cllIncludeDeleted'
--
-- * 'cllFields'
--
-- * 'cllAlt'
changesList'
    :: ChangesList'
changesList' =
    ChangesList'
    { _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllUserIp = Nothing
    , _cllIncludeSubscribed = True
    , _cllStartChangeId = Nothing
    , _cllKey = Nothing
    , _cllSpaces = Nothing
    , _cllPageToken = Nothing
    , _cllOauthToken = Nothing
    , _cllMaxResults = 100
    , _cllIncludeDeleted = True
    , _cllFields = Nothing
    , _cllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' ChangesList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' ChangesList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' ChangesList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
cllIncludeSubscribed :: Lens' ChangesList' Bool
cllIncludeSubscribed
  = lens _cllIncludeSubscribed
      (\ s a -> s{_cllIncludeSubscribed = a})

-- | Change ID to start listing changes from.
cllStartChangeId :: Lens' ChangesList' (Maybe Int64)
cllStartChangeId
  = lens _cllStartChangeId
      (\ s a -> s{_cllStartChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' ChangesList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
cllSpaces :: Lens' ChangesList' (Maybe Text)
cllSpaces
  = lens _cllSpaces (\ s a -> s{_cllSpaces = a})

-- | Page token for changes.
cllPageToken :: Lens' ChangesList' (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' ChangesList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | Maximum number of changes to return.
cllMaxResults :: Lens' ChangesList' Int32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | Whether to include deleted items.
cllIncludeDeleted :: Lens' ChangesList' Bool
cllIncludeDeleted
  = lens _cllIncludeDeleted
      (\ s a -> s{_cllIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' ChangesList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' ChangesList' Alt
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangeList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesList'{..}
          = go _cllQuotaUser (Just _cllPrettyPrint) _cllUserIp
              (Just _cllIncludeSubscribed)
              _cllStartChangeId
              _cllKey
              _cllSpaces
              _cllPageToken
              _cllOauthToken
              (Just _cllMaxResults)
              (Just _cllIncludeDeleted)
              _cllFields
              (Just _cllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangesListResource)
                      r
                      u
