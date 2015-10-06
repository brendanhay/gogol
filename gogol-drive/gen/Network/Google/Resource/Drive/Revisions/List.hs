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
-- Module      : Network.Google.Resource.Drive.Revisions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s revisions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsList@.
module Network.Google.Resource.Drive.Revisions.List
    (
    -- * REST Resource
      RevisionsListResource

    -- * Creating a Request
    , revisionsList'
    , RevisionsList'

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIP
    , rlKey
    , rlFileId
    , rlOAuthToken
    , rlFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsList@ which the
-- 'RevisionsList'' request conforms to.
type RevisionsListResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] RevisionList

-- | Lists a file\'s revisions.
--
-- /See:/ 'revisionsList'' smart constructor.
data RevisionsList' = RevisionsList'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIP      :: !(Maybe Text)
    , _rlKey         :: !(Maybe AuthKey)
    , _rlFileId      :: !Text
    , _rlOAuthToken  :: !(Maybe OAuthToken)
    , _rlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIP'
--
-- * 'rlKey'
--
-- * 'rlFileId'
--
-- * 'rlOAuthToken'
--
-- * 'rlFields'
revisionsList'
    :: Text -- ^ 'fileId'
    -> RevisionsList'
revisionsList' pRlFileId_ =
    RevisionsList'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIP = Nothing
    , _rlKey = Nothing
    , _rlFileId = pRlFileId_
    , _rlOAuthToken = Nothing
    , _rlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RevisionsList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RevisionsList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIP :: Lens' RevisionsList' (Maybe Text)
rlUserIP = lens _rlUserIP (\ s a -> s{_rlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RevisionsList' (Maybe AuthKey)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The ID of the file.
rlFileId :: Lens' RevisionsList' Text
rlFileId = lens _rlFileId (\ s a -> s{_rlFileId = a})

-- | OAuth 2.0 token for the current user.
rlOAuthToken :: Lens' RevisionsList' (Maybe OAuthToken)
rlOAuthToken
  = lens _rlOAuthToken (\ s a -> s{_rlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RevisionsList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

instance GoogleAuth RevisionsList' where
        _AuthKey = rlKey . _Just
        _AuthToken = rlOAuthToken . _Just

instance GoogleRequest RevisionsList' where
        type Rs RevisionsList' = RevisionList
        request = requestWith driveRequest
        requestWith rq RevisionsList'{..}
          = go _rlFileId _rlQuotaUser (Just _rlPrettyPrint)
              _rlUserIP
              _rlFields
              _rlKey
              _rlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy RevisionsListResource)
                      rq
