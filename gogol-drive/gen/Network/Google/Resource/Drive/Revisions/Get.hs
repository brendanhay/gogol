{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Revisions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsGet@.
module Drive.Revisions.Get
    (
    -- * REST Resource
      RevisionsGetAPI

    -- * Creating a Request
    , revisionsGet
    , RevisionsGet

    -- * Request Lenses
    , rggQuotaUser
    , rggPrettyPrint
    , rggUserIp
    , rggKey
    , rggFileId
    , rggOauthToken
    , rggRevisionId
    , rggFields
    , rggAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsGet@ which the
-- 'RevisionsGet' request conforms to.
type RevisionsGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :> Get '[JSON] Revision

-- | Gets a specific revision.
--
-- /See:/ 'revisionsGet' smart constructor.
data RevisionsGet = RevisionsGet
    { _rggQuotaUser   :: !(Maybe Text)
    , _rggPrettyPrint :: !Bool
    , _rggUserIp      :: !(Maybe Text)
    , _rggKey         :: !(Maybe Text)
    , _rggFileId      :: !Text
    , _rggOauthToken  :: !(Maybe Text)
    , _rggRevisionId  :: !Text
    , _rggFields      :: !(Maybe Text)
    , _rggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggQuotaUser'
--
-- * 'rggPrettyPrint'
--
-- * 'rggUserIp'
--
-- * 'rggKey'
--
-- * 'rggFileId'
--
-- * 'rggOauthToken'
--
-- * 'rggRevisionId'
--
-- * 'rggFields'
--
-- * 'rggAlt'
revisionsGet
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsGet
revisionsGet pRggFileId_ pRggRevisionId_ =
    RevisionsGet
    { _rggQuotaUser = Nothing
    , _rggPrettyPrint = True
    , _rggUserIp = Nothing
    , _rggKey = Nothing
    , _rggFileId = pRggFileId_
    , _rggOauthToken = Nothing
    , _rggRevisionId = pRggRevisionId_
    , _rggFields = Nothing
    , _rggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rggQuotaUser :: Lens' RevisionsGet' (Maybe Text)
rggQuotaUser
  = lens _rggQuotaUser (\ s a -> s{_rggQuotaUser = a})

-- | Returns response with indentations and line breaks.
rggPrettyPrint :: Lens' RevisionsGet' Bool
rggPrettyPrint
  = lens _rggPrettyPrint
      (\ s a -> s{_rggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rggUserIp :: Lens' RevisionsGet' (Maybe Text)
rggUserIp
  = lens _rggUserIp (\ s a -> s{_rggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rggKey :: Lens' RevisionsGet' (Maybe Text)
rggKey = lens _rggKey (\ s a -> s{_rggKey = a})

-- | The ID of the file.
rggFileId :: Lens' RevisionsGet' Text
rggFileId
  = lens _rggFileId (\ s a -> s{_rggFileId = a})

-- | OAuth 2.0 token for the current user.
rggOauthToken :: Lens' RevisionsGet' (Maybe Text)
rggOauthToken
  = lens _rggOauthToken
      (\ s a -> s{_rggOauthToken = a})

-- | The ID of the revision.
rggRevisionId :: Lens' RevisionsGet' Text
rggRevisionId
  = lens _rggRevisionId
      (\ s a -> s{_rggRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
rggFields :: Lens' RevisionsGet' (Maybe Text)
rggFields
  = lens _rggFields (\ s a -> s{_rggFields = a})

-- | Data format for the response.
rggAlt :: Lens' RevisionsGet' Text
rggAlt = lens _rggAlt (\ s a -> s{_rggAlt = a})

instance GoogleRequest RevisionsGet' where
        type Rs RevisionsGet' = Revision
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsGet{..}
          = go _rggQuotaUser _rggPrettyPrint _rggUserIp _rggKey
              _rggFileId
              _rggOauthToken
              _rggRevisionId
              _rggFields
              _rggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsGetAPI) r
                      u
