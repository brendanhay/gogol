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
    , chaQuotaUser
    , chaPrettyPrint
    , chaUserIP
    , chaIncludeSubscribed
    , chaStartChangeId
    , chaKey
    , chaSpaces
    , chaPageToken
    , chaOAuthToken
    , chaMaxResults
    , chaIncludeDeleted
    , chaFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesList@ which the
-- 'ChangesList'' request conforms to.
type ChangesListResource =
     "changes" :>
       QueryParam "includeSubscribed" Bool :>
         QueryParam "startChangeId" Int64 :>
           QueryParam "spaces" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "includeDeleted" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ChangeList

-- | Lists the changes for a user.
--
-- /See:/ 'changesList'' smart constructor.
data ChangesList' = ChangesList'
    { _chaQuotaUser         :: !(Maybe Text)
    , _chaPrettyPrint       :: !Bool
    , _chaUserIP            :: !(Maybe Text)
    , _chaIncludeSubscribed :: !Bool
    , _chaStartChangeId     :: !(Maybe Int64)
    , _chaKey               :: !(Maybe AuthKey)
    , _chaSpaces            :: !(Maybe Text)
    , _chaPageToken         :: !(Maybe Text)
    , _chaOAuthToken        :: !(Maybe OAuthToken)
    , _chaMaxResults        :: !Int32
    , _chaIncludeDeleted    :: !Bool
    , _chaFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaQuotaUser'
--
-- * 'chaPrettyPrint'
--
-- * 'chaUserIP'
--
-- * 'chaIncludeSubscribed'
--
-- * 'chaStartChangeId'
--
-- * 'chaKey'
--
-- * 'chaSpaces'
--
-- * 'chaPageToken'
--
-- * 'chaOAuthToken'
--
-- * 'chaMaxResults'
--
-- * 'chaIncludeDeleted'
--
-- * 'chaFields'
changesList'
    :: ChangesList'
changesList' =
    ChangesList'
    { _chaQuotaUser = Nothing
    , _chaPrettyPrint = True
    , _chaUserIP = Nothing
    , _chaIncludeSubscribed = True
    , _chaStartChangeId = Nothing
    , _chaKey = Nothing
    , _chaSpaces = Nothing
    , _chaPageToken = Nothing
    , _chaOAuthToken = Nothing
    , _chaMaxResults = 100
    , _chaIncludeDeleted = True
    , _chaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chaQuotaUser :: Lens' ChangesList' (Maybe Text)
chaQuotaUser
  = lens _chaQuotaUser (\ s a -> s{_chaQuotaUser = a})

-- | Returns response with indentations and line breaks.
chaPrettyPrint :: Lens' ChangesList' Bool
chaPrettyPrint
  = lens _chaPrettyPrint
      (\ s a -> s{_chaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chaUserIP :: Lens' ChangesList' (Maybe Text)
chaUserIP
  = lens _chaUserIP (\ s a -> s{_chaUserIP = a})

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
chaIncludeSubscribed :: Lens' ChangesList' Bool
chaIncludeSubscribed
  = lens _chaIncludeSubscribed
      (\ s a -> s{_chaIncludeSubscribed = a})

-- | Change ID to start listing changes from.
chaStartChangeId :: Lens' ChangesList' (Maybe Int64)
chaStartChangeId
  = lens _chaStartChangeId
      (\ s a -> s{_chaStartChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chaKey :: Lens' ChangesList' (Maybe AuthKey)
chaKey = lens _chaKey (\ s a -> s{_chaKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
chaSpaces :: Lens' ChangesList' (Maybe Text)
chaSpaces
  = lens _chaSpaces (\ s a -> s{_chaSpaces = a})

-- | Page token for changes.
chaPageToken :: Lens' ChangesList' (Maybe Text)
chaPageToken
  = lens _chaPageToken (\ s a -> s{_chaPageToken = a})

-- | OAuth 2.0 token for the current user.
chaOAuthToken :: Lens' ChangesList' (Maybe OAuthToken)
chaOAuthToken
  = lens _chaOAuthToken
      (\ s a -> s{_chaOAuthToken = a})

-- | Maximum number of changes to return.
chaMaxResults :: Lens' ChangesList' Int32
chaMaxResults
  = lens _chaMaxResults
      (\ s a -> s{_chaMaxResults = a})

-- | Whether to include deleted items.
chaIncludeDeleted :: Lens' ChangesList' Bool
chaIncludeDeleted
  = lens _chaIncludeDeleted
      (\ s a -> s{_chaIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
chaFields :: Lens' ChangesList' (Maybe Text)
chaFields
  = lens _chaFields (\ s a -> s{_chaFields = a})

instance GoogleAuth ChangesList' where
        authKey = chaKey . _Just
        authToken = chaOAuthToken . _Just

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangeList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesList'{..}
          = go (Just _chaIncludeSubscribed) _chaStartChangeId
              _chaSpaces
              _chaPageToken
              (Just _chaMaxResults)
              (Just _chaIncludeDeleted)
              _chaQuotaUser
              (Just _chaPrettyPrint)
              _chaUserIP
              _chaFields
              _chaKey
              _chaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangesListResource)
                      r
                      u
