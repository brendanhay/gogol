{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.EmptyTrash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes all of the user\'s trashed files.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesEmptyTrash@.
module Network.Google.Resource.Drive.Files.EmptyTrash
    (
    -- * REST Resource
      FilesEmptyTrashResource

    -- * Creating a Request
    , filesEmptyTrash'
    , FilesEmptyTrash'

    -- * Request Lenses
    , fetQuotaUser
    , fetPrettyPrint
    , fetUserIP
    , fetKey
    , fetOAuthToken
    , fetFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesEmptyTrash@ which the
-- 'FilesEmptyTrash'' request conforms to.
type FilesEmptyTrashResource =
     "files" :>
       "trash" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes all of the user\'s trashed files.
--
-- /See:/ 'filesEmptyTrash'' smart constructor.
data FilesEmptyTrash' = FilesEmptyTrash'
    { _fetQuotaUser   :: !(Maybe Text)
    , _fetPrettyPrint :: !Bool
    , _fetUserIP      :: !(Maybe Text)
    , _fetKey         :: !(Maybe Key)
    , _fetOAuthToken  :: !(Maybe OAuthToken)
    , _fetFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesEmptyTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fetQuotaUser'
--
-- * 'fetPrettyPrint'
--
-- * 'fetUserIP'
--
-- * 'fetKey'
--
-- * 'fetOAuthToken'
--
-- * 'fetFields'
filesEmptyTrash'
    :: FilesEmptyTrash'
filesEmptyTrash' =
    FilesEmptyTrash'
    { _fetQuotaUser = Nothing
    , _fetPrettyPrint = True
    , _fetUserIP = Nothing
    , _fetKey = Nothing
    , _fetOAuthToken = Nothing
    , _fetFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fetQuotaUser :: Lens' FilesEmptyTrash' (Maybe Text)
fetQuotaUser
  = lens _fetQuotaUser (\ s a -> s{_fetQuotaUser = a})

-- | Returns response with indentations and line breaks.
fetPrettyPrint :: Lens' FilesEmptyTrash' Bool
fetPrettyPrint
  = lens _fetPrettyPrint
      (\ s a -> s{_fetPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fetUserIP :: Lens' FilesEmptyTrash' (Maybe Text)
fetUserIP
  = lens _fetUserIP (\ s a -> s{_fetUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fetKey :: Lens' FilesEmptyTrash' (Maybe Key)
fetKey = lens _fetKey (\ s a -> s{_fetKey = a})

-- | OAuth 2.0 token for the current user.
fetOAuthToken :: Lens' FilesEmptyTrash' (Maybe OAuthToken)
fetOAuthToken
  = lens _fetOAuthToken
      (\ s a -> s{_fetOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fetFields :: Lens' FilesEmptyTrash' (Maybe Text)
fetFields
  = lens _fetFields (\ s a -> s{_fetFields = a})

instance GoogleAuth FilesEmptyTrash' where
        authKey = fetKey . _Just
        authToken = fetOAuthToken . _Just

instance GoogleRequest FilesEmptyTrash' where
        type Rs FilesEmptyTrash' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesEmptyTrash'{..}
          = go _fetQuotaUser (Just _fetPrettyPrint) _fetUserIP
              _fetFields
              _fetKey
              _fetOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesEmptyTrashResource)
                      r
                      u
