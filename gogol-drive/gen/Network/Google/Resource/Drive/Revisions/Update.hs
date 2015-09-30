{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Revisions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsUpdate@.
module Drive.Revisions.Update
    (
    -- * REST Resource
      RevisionsUpdateAPI

    -- * Creating a Request
    , revisionsUpdate
    , RevisionsUpdate

    -- * Request Lenses
    , ruuQuotaUser
    , ruuPrettyPrint
    , ruuUserIp
    , ruuKey
    , ruuFileId
    , ruuOauthToken
    , ruuRevisionId
    , ruuFields
    , ruuAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsUpdate@ which the
-- 'RevisionsUpdate' request conforms to.
type RevisionsUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :> Put '[JSON] Revision

-- | Updates a revision.
--
-- /See:/ 'revisionsUpdate' smart constructor.
data RevisionsUpdate = RevisionsUpdate
    { _ruuQuotaUser   :: !(Maybe Text)
    , _ruuPrettyPrint :: !Bool
    , _ruuUserIp      :: !(Maybe Text)
    , _ruuKey         :: !(Maybe Text)
    , _ruuFileId      :: !Text
    , _ruuOauthToken  :: !(Maybe Text)
    , _ruuRevisionId  :: !Text
    , _ruuFields      :: !(Maybe Text)
    , _ruuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruuQuotaUser'
--
-- * 'ruuPrettyPrint'
--
-- * 'ruuUserIp'
--
-- * 'ruuKey'
--
-- * 'ruuFileId'
--
-- * 'ruuOauthToken'
--
-- * 'ruuRevisionId'
--
-- * 'ruuFields'
--
-- * 'ruuAlt'
revisionsUpdate
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsUpdate
revisionsUpdate pRuuFileId_ pRuuRevisionId_ =
    RevisionsUpdate
    { _ruuQuotaUser = Nothing
    , _ruuPrettyPrint = True
    , _ruuUserIp = Nothing
    , _ruuKey = Nothing
    , _ruuFileId = pRuuFileId_
    , _ruuOauthToken = Nothing
    , _ruuRevisionId = pRuuRevisionId_
    , _ruuFields = Nothing
    , _ruuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruuQuotaUser :: Lens' RevisionsUpdate' (Maybe Text)
ruuQuotaUser
  = lens _ruuQuotaUser (\ s a -> s{_ruuQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruuPrettyPrint :: Lens' RevisionsUpdate' Bool
ruuPrettyPrint
  = lens _ruuPrettyPrint
      (\ s a -> s{_ruuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruuUserIp :: Lens' RevisionsUpdate' (Maybe Text)
ruuUserIp
  = lens _ruuUserIp (\ s a -> s{_ruuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruuKey :: Lens' RevisionsUpdate' (Maybe Text)
ruuKey = lens _ruuKey (\ s a -> s{_ruuKey = a})

-- | The ID for the file.
ruuFileId :: Lens' RevisionsUpdate' Text
ruuFileId
  = lens _ruuFileId (\ s a -> s{_ruuFileId = a})

-- | OAuth 2.0 token for the current user.
ruuOauthToken :: Lens' RevisionsUpdate' (Maybe Text)
ruuOauthToken
  = lens _ruuOauthToken
      (\ s a -> s{_ruuOauthToken = a})

-- | The ID for the revision.
ruuRevisionId :: Lens' RevisionsUpdate' Text
ruuRevisionId
  = lens _ruuRevisionId
      (\ s a -> s{_ruuRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
ruuFields :: Lens' RevisionsUpdate' (Maybe Text)
ruuFields
  = lens _ruuFields (\ s a -> s{_ruuFields = a})

-- | Data format for the response.
ruuAlt :: Lens' RevisionsUpdate' Text
ruuAlt = lens _ruuAlt (\ s a -> s{_ruuAlt = a})

instance GoogleRequest RevisionsUpdate' where
        type Rs RevisionsUpdate' = Revision
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsUpdate{..}
          = go _ruuQuotaUser _ruuPrettyPrint _ruuUserIp _ruuKey
              _ruuFileId
              _ruuOauthToken
              _ruuRevisionId
              _ruuFields
              _ruuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsUpdateAPI)
                      r
                      u
