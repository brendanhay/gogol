{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Drive.Changes.List
    (
    -- * REST Resource
      ChangesListAPI

    -- * Creating a Request
    , changesList
    , ChangesList

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clIncludeSubscribed
    , clStartChangeId
    , clKey
    , clSpaces
    , clPageToken
    , clOauthToken
    , clMaxResults
    , clIncludeDeleted
    , clFields
    , clAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesList@ which the
-- 'ChangesList' request conforms to.
type ChangesListAPI =
     "changes" :>
       QueryParam "includeSubscribed" Bool :>
         QueryParam "startChangeId" Int64 :>
           QueryParam "spaces" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "includeDeleted" Bool :>
                   Get '[JSON] ChangeList

-- | Lists the changes for a user.
--
-- /See:/ 'changesList' smart constructor.
data ChangesList = ChangesList
    { _clQuotaUser         :: !(Maybe Text)
    , _clPrettyPrint       :: !Bool
    , _clUserIp            :: !(Maybe Text)
    , _clIncludeSubscribed :: !Bool
    , _clStartChangeId     :: !(Maybe Int64)
    , _clKey               :: !(Maybe Text)
    , _clSpaces            :: !(Maybe Text)
    , _clPageToken         :: !(Maybe Text)
    , _clOauthToken        :: !(Maybe Text)
    , _clMaxResults        :: !Int32
    , _clIncludeDeleted    :: !Bool
    , _clFields            :: !(Maybe Text)
    , _clAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clIncludeSubscribed'
--
-- * 'clStartChangeId'
--
-- * 'clKey'
--
-- * 'clSpaces'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clMaxResults'
--
-- * 'clIncludeDeleted'
--
-- * 'clFields'
--
-- * 'clAlt'
changesList
    :: ChangesList
changesList =
    ChangesList
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clIncludeSubscribed = True
    , _clStartChangeId = Nothing
    , _clKey = Nothing
    , _clSpaces = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clMaxResults = 100
    , _clIncludeDeleted = True
    , _clFields = Nothing
    , _clAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ChangesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ChangesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' ChangesList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
clIncludeSubscribed :: Lens' ChangesList' Bool
clIncludeSubscribed
  = lens _clIncludeSubscribed
      (\ s a -> s{_clIncludeSubscribed = a})

-- | Change ID to start listing changes from.
clStartChangeId :: Lens' ChangesList' (Maybe Int64)
clStartChangeId
  = lens _clStartChangeId
      (\ s a -> s{_clStartChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ChangesList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
clSpaces :: Lens' ChangesList' (Maybe Text)
clSpaces = lens _clSpaces (\ s a -> s{_clSpaces = a})

-- | Page token for changes.
clPageToken :: Lens' ChangesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' ChangesList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Maximum number of changes to return.
clMaxResults :: Lens' ChangesList' Int32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Whether to include deleted items.
clIncludeDeleted :: Lens' ChangesList' Bool
clIncludeDeleted
  = lens _clIncludeDeleted
      (\ s a -> s{_clIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ChangesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' ChangesList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangeList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesList{..}
          = go _clQuotaUser _clPrettyPrint _clUserIp
              (Just _clIncludeSubscribed)
              _clStartChangeId
              _clKey
              _clSpaces
              _clPageToken
              _clOauthToken
              (Just _clMaxResults)
              (Just _clIncludeDeleted)
              _clFields
              _clAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ChangesListAPI) r u
