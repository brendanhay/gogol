{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Revisions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsDelete@.
module Drive.Revisions.Delete
    (
    -- * REST Resource
      RevisionsDeleteAPI

    -- * Creating a Request
    , revisionsDelete
    , RevisionsDelete

    -- * Request Lenses
    , rddQuotaUser
    , rddPrettyPrint
    , rddUserIp
    , rddKey
    , rddFileId
    , rddOauthToken
    , rddRevisionId
    , rddFields
    , rddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsDelete@ which the
-- 'RevisionsDelete' request conforms to.
type RevisionsDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :> Delete '[JSON] ()

-- | Removes a revision.
--
-- /See:/ 'revisionsDelete' smart constructor.
data RevisionsDelete = RevisionsDelete
    { _rddQuotaUser   :: !(Maybe Text)
    , _rddPrettyPrint :: !Bool
    , _rddUserIp      :: !(Maybe Text)
    , _rddKey         :: !(Maybe Text)
    , _rddFileId      :: !Text
    , _rddOauthToken  :: !(Maybe Text)
    , _rddRevisionId  :: !Text
    , _rddFields      :: !(Maybe Text)
    , _rddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddQuotaUser'
--
-- * 'rddPrettyPrint'
--
-- * 'rddUserIp'
--
-- * 'rddKey'
--
-- * 'rddFileId'
--
-- * 'rddOauthToken'
--
-- * 'rddRevisionId'
--
-- * 'rddFields'
--
-- * 'rddAlt'
revisionsDelete
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsDelete
revisionsDelete pRddFileId_ pRddRevisionId_ =
    RevisionsDelete
    { _rddQuotaUser = Nothing
    , _rddPrettyPrint = True
    , _rddUserIp = Nothing
    , _rddKey = Nothing
    , _rddFileId = pRddFileId_
    , _rddOauthToken = Nothing
    , _rddRevisionId = pRddRevisionId_
    , _rddFields = Nothing
    , _rddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rddQuotaUser :: Lens' RevisionsDelete' (Maybe Text)
rddQuotaUser
  = lens _rddQuotaUser (\ s a -> s{_rddQuotaUser = a})

-- | Returns response with indentations and line breaks.
rddPrettyPrint :: Lens' RevisionsDelete' Bool
rddPrettyPrint
  = lens _rddPrettyPrint
      (\ s a -> s{_rddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rddUserIp :: Lens' RevisionsDelete' (Maybe Text)
rddUserIp
  = lens _rddUserIp (\ s a -> s{_rddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rddKey :: Lens' RevisionsDelete' (Maybe Text)
rddKey = lens _rddKey (\ s a -> s{_rddKey = a})

-- | The ID of the file.
rddFileId :: Lens' RevisionsDelete' Text
rddFileId
  = lens _rddFileId (\ s a -> s{_rddFileId = a})

-- | OAuth 2.0 token for the current user.
rddOauthToken :: Lens' RevisionsDelete' (Maybe Text)
rddOauthToken
  = lens _rddOauthToken
      (\ s a -> s{_rddOauthToken = a})

-- | The ID of the revision.
rddRevisionId :: Lens' RevisionsDelete' Text
rddRevisionId
  = lens _rddRevisionId
      (\ s a -> s{_rddRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
rddFields :: Lens' RevisionsDelete' (Maybe Text)
rddFields
  = lens _rddFields (\ s a -> s{_rddFields = a})

-- | Data format for the response.
rddAlt :: Lens' RevisionsDelete' Text
rddAlt = lens _rddAlt (\ s a -> s{_rddAlt = a})

instance GoogleRequest RevisionsDelete' where
        type Rs RevisionsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsDelete{..}
          = go _rddQuotaUser _rddPrettyPrint _rddUserIp _rddKey
              _rddFileId
              _rddOauthToken
              _rddRevisionId
              _rddFields
              _rddAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsDeleteAPI)
                      r
                      u
