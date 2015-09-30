{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Drive.Revisions.List
    (
    -- * REST Resource
      RevisionsListAPI

    -- * Creating a Request
    , revisionsList
    , RevisionsList

    -- * Request Lenses
    , revQuotaUser
    , revPrettyPrint
    , revUserIp
    , revKey
    , revFileId
    , revOauthToken
    , revFields
    , revAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsList@ which the
-- 'RevisionsList' request conforms to.
type RevisionsListAPI =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :> Get '[JSON] RevisionList

-- | Lists a file\'s revisions.
--
-- /See:/ 'revisionsList' smart constructor.
data RevisionsList = RevisionsList
    { _revQuotaUser   :: !(Maybe Text)
    , _revPrettyPrint :: !Bool
    , _revUserIp      :: !(Maybe Text)
    , _revKey         :: !(Maybe Text)
    , _revFileId      :: !Text
    , _revOauthToken  :: !(Maybe Text)
    , _revFields      :: !(Maybe Text)
    , _revAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'revQuotaUser'
--
-- * 'revPrettyPrint'
--
-- * 'revUserIp'
--
-- * 'revKey'
--
-- * 'revFileId'
--
-- * 'revOauthToken'
--
-- * 'revFields'
--
-- * 'revAlt'
revisionsList
    :: Text -- ^ 'fileId'
    -> RevisionsList
revisionsList pRevFileId_ =
    RevisionsList
    { _revQuotaUser = Nothing
    , _revPrettyPrint = True
    , _revUserIp = Nothing
    , _revKey = Nothing
    , _revFileId = pRevFileId_
    , _revOauthToken = Nothing
    , _revFields = Nothing
    , _revAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
revQuotaUser :: Lens' RevisionsList' (Maybe Text)
revQuotaUser
  = lens _revQuotaUser (\ s a -> s{_revQuotaUser = a})

-- | Returns response with indentations and line breaks.
revPrettyPrint :: Lens' RevisionsList' Bool
revPrettyPrint
  = lens _revPrettyPrint
      (\ s a -> s{_revPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
revUserIp :: Lens' RevisionsList' (Maybe Text)
revUserIp
  = lens _revUserIp (\ s a -> s{_revUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
revKey :: Lens' RevisionsList' (Maybe Text)
revKey = lens _revKey (\ s a -> s{_revKey = a})

-- | The ID of the file.
revFileId :: Lens' RevisionsList' Text
revFileId
  = lens _revFileId (\ s a -> s{_revFileId = a})

-- | OAuth 2.0 token for the current user.
revOauthToken :: Lens' RevisionsList' (Maybe Text)
revOauthToken
  = lens _revOauthToken
      (\ s a -> s{_revOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
revFields :: Lens' RevisionsList' (Maybe Text)
revFields
  = lens _revFields (\ s a -> s{_revFields = a})

-- | Data format for the response.
revAlt :: Lens' RevisionsList' Text
revAlt = lens _revAlt (\ s a -> s{_revAlt = a})

instance GoogleRequest RevisionsList' where
        type Rs RevisionsList' = RevisionList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsList{..}
          = go _revQuotaUser _revPrettyPrint _revUserIp _revKey
              _revFileId
              _revOauthToken
              _revFields
              _revAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsListAPI) r
                      u
