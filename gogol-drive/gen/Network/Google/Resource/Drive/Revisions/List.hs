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
    , rlUserIp
    , rlKey
    , rlFileId
    , rlOauthToken
    , rlFields
    , rlAlt
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
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] RevisionList

-- | Lists a file\'s revisions.
--
-- /See:/ 'revisionsList'' smart constructor.
data RevisionsList' = RevisionsList'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIp      :: !(Maybe Text)
    , _rlKey         :: !(Maybe Text)
    , _rlFileId      :: !Text
    , _rlOauthToken  :: !(Maybe Text)
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIp'
--
-- * 'rlKey'
--
-- * 'rlFileId'
--
-- * 'rlOauthToken'
--
-- * 'rlFields'
--
-- * 'rlAlt'
revisionsList'
    :: Text -- ^ 'fileId'
    -> RevisionsList'
revisionsList' pRlFileId_ =
    RevisionsList'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlKey = Nothing
    , _rlFileId = pRlFileId_
    , _rlOauthToken = Nothing
    , _rlFields = Nothing
    , _rlAlt = JSON
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
rlUserIp :: Lens' RevisionsList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RevisionsList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The ID of the file.
rlFileId :: Lens' RevisionsList' Text
rlFileId = lens _rlFileId (\ s a -> s{_rlFileId = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' RevisionsList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RevisionsList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' RevisionsList' Alt
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest RevisionsList' where
        type Rs RevisionsList' = RevisionList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsList'{..}
          = go _rlQuotaUser (Just _rlPrettyPrint) _rlUserIp
              _rlKey
              _rlFileId
              _rlOauthToken
              _rlFields
              (Just _rlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsListResource)
                      r
                      u
