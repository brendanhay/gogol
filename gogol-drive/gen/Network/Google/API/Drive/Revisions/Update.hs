{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Revisions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.update@.
module Network.Google.API.Drive.Revisions.Update
    (
    -- * REST Resource
      RevisionsUpdateAPI

    -- * Creating a Request
    , revisionsUpdate'
    , RevisionsUpdate'

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIp
    , ruKey
    , ruFileId
    , ruOauthToken
    , ruRevisionId
    , ruFields
    , ruAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.revisions.update which the
-- 'RevisionsUpdate'' request conforms to.
type RevisionsUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] Revision

-- | Updates a revision.
--
-- /See:/ 'revisionsUpdate'' smart constructor.
data RevisionsUpdate' = RevisionsUpdate'
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIp      :: !(Maybe Text)
    , _ruKey         :: !(Maybe Text)
    , _ruFileId      :: !Text
    , _ruOauthToken  :: !(Maybe Text)
    , _ruRevisionId  :: !Text
    , _ruFields      :: !(Maybe Text)
    , _ruAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIp'
--
-- * 'ruKey'
--
-- * 'ruFileId'
--
-- * 'ruOauthToken'
--
-- * 'ruRevisionId'
--
-- * 'ruFields'
--
-- * 'ruAlt'
revisionsUpdate'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsUpdate'
revisionsUpdate' pRuFileId_ pRuRevisionId_ =
    RevisionsUpdate'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIp = Nothing
    , _ruKey = Nothing
    , _ruFileId = pRuFileId_
    , _ruOauthToken = Nothing
    , _ruRevisionId = pRuRevisionId_
    , _ruFields = Nothing
    , _ruAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruQuotaUser :: Lens' RevisionsUpdate' (Maybe Text)
ruQuotaUser
  = lens _ruQuotaUser (\ s a -> s{_ruQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruPrettyPrint :: Lens' RevisionsUpdate' Bool
ruPrettyPrint
  = lens _ruPrettyPrint
      (\ s a -> s{_ruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruUserIp :: Lens' RevisionsUpdate' (Maybe Text)
ruUserIp = lens _ruUserIp (\ s a -> s{_ruUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' RevisionsUpdate' (Maybe Text)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | The ID for the file.
ruFileId :: Lens' RevisionsUpdate' Text
ruFileId = lens _ruFileId (\ s a -> s{_ruFileId = a})

-- | OAuth 2.0 token for the current user.
ruOauthToken :: Lens' RevisionsUpdate' (Maybe Text)
ruOauthToken
  = lens _ruOauthToken (\ s a -> s{_ruOauthToken = a})

-- | The ID for the revision.
ruRevisionId :: Lens' RevisionsUpdate' Text
ruRevisionId
  = lens _ruRevisionId (\ s a -> s{_ruRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' RevisionsUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

-- | Data format for the response.
ruAlt :: Lens' RevisionsUpdate' Alt
ruAlt = lens _ruAlt (\ s a -> s{_ruAlt = a})

instance GoogleRequest RevisionsUpdate' where
        type Rs RevisionsUpdate' = Revision
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsUpdate'{..}
          = go _ruQuotaUser (Just _ruPrettyPrint) _ruUserIp
              _ruKey
              _ruFileId
              _ruOauthToken
              _ruRevisionId
              _ruFields
              (Just _ruAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsUpdateAPI)
                      r
                      u
