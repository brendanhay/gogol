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
-- Module      : Network.Google.Resource.Drive.Revisions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a revision. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsPatch@.
module Network.Google.Resource.Drive.Revisions.Patch
    (
    -- * REST Resource
      RevisionsPatchResource

    -- * Creating a Request
    , revisionsPatch'
    , RevisionsPatch'

    -- * Request Lenses
    , rppQuotaUser
    , rppPrettyPrint
    , rppUserIp
    , rppKey
    , rppFileId
    , rppOauthToken
    , rppRevisionId
    , rppFields
    , rppAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsPatch@ which the
-- 'RevisionsPatch'' request conforms to.
type RevisionsPatchResource =
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
                         QueryParam "alt" Alt :> Patch '[JSON] Revision

-- | Updates a revision. This method supports patch semantics.
--
-- /See:/ 'revisionsPatch'' smart constructor.
data RevisionsPatch' = RevisionsPatch'
    { _rppQuotaUser   :: !(Maybe Text)
    , _rppPrettyPrint :: !Bool
    , _rppUserIp      :: !(Maybe Text)
    , _rppKey         :: !(Maybe Text)
    , _rppFileId      :: !Text
    , _rppOauthToken  :: !(Maybe Text)
    , _rppRevisionId  :: !Text
    , _rppFields      :: !(Maybe Text)
    , _rppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppQuotaUser'
--
-- * 'rppPrettyPrint'
--
-- * 'rppUserIp'
--
-- * 'rppKey'
--
-- * 'rppFileId'
--
-- * 'rppOauthToken'
--
-- * 'rppRevisionId'
--
-- * 'rppFields'
--
-- * 'rppAlt'
revisionsPatch'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsPatch'
revisionsPatch' pRppFileId_ pRppRevisionId_ =
    RevisionsPatch'
    { _rppQuotaUser = Nothing
    , _rppPrettyPrint = True
    , _rppUserIp = Nothing
    , _rppKey = Nothing
    , _rppFileId = pRppFileId_
    , _rppOauthToken = Nothing
    , _rppRevisionId = pRppRevisionId_
    , _rppFields = Nothing
    , _rppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rppQuotaUser :: Lens' RevisionsPatch' (Maybe Text)
rppQuotaUser
  = lens _rppQuotaUser (\ s a -> s{_rppQuotaUser = a})

-- | Returns response with indentations and line breaks.
rppPrettyPrint :: Lens' RevisionsPatch' Bool
rppPrettyPrint
  = lens _rppPrettyPrint
      (\ s a -> s{_rppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rppUserIp :: Lens' RevisionsPatch' (Maybe Text)
rppUserIp
  = lens _rppUserIp (\ s a -> s{_rppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rppKey :: Lens' RevisionsPatch' (Maybe Text)
rppKey = lens _rppKey (\ s a -> s{_rppKey = a})

-- | The ID for the file.
rppFileId :: Lens' RevisionsPatch' Text
rppFileId
  = lens _rppFileId (\ s a -> s{_rppFileId = a})

-- | OAuth 2.0 token for the current user.
rppOauthToken :: Lens' RevisionsPatch' (Maybe Text)
rppOauthToken
  = lens _rppOauthToken
      (\ s a -> s{_rppOauthToken = a})

-- | The ID for the revision.
rppRevisionId :: Lens' RevisionsPatch' Text
rppRevisionId
  = lens _rppRevisionId
      (\ s a -> s{_rppRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
rppFields :: Lens' RevisionsPatch' (Maybe Text)
rppFields
  = lens _rppFields (\ s a -> s{_rppFields = a})

-- | Data format for the response.
rppAlt :: Lens' RevisionsPatch' Alt
rppAlt = lens _rppAlt (\ s a -> s{_rppAlt = a})

instance GoogleRequest RevisionsPatch' where
        type Rs RevisionsPatch' = Revision
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsPatch'{..}
          = go _rppQuotaUser (Just _rppPrettyPrint) _rppUserIp
              _rppKey
              _rppFileId
              _rppOauthToken
              _rppRevisionId
              _rppFields
              (Just _rppAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsPatchResource)
                      r
                      u
