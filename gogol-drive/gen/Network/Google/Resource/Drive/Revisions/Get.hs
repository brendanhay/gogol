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
module Network.Google.Resource.Drive.Revisions.Get
    (
    -- * REST Resource
      RevisionsGetResource

    -- * Creating a Request
    , revisionsGet'
    , RevisionsGet'

    -- * Request Lenses
    , revQuotaUser
    , revPrettyPrint
    , revUserIp
    , revKey
    , revFileId
    , revOauthToken
    , revRevisionId
    , revFields
    , revAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsGet@ which the
-- 'RevisionsGet'' request conforms to.
type RevisionsGetResource =
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
                         QueryParam "alt" Alt :> Get '[JSON] Revision

-- | Gets a specific revision.
--
-- /See:/ 'revisionsGet'' smart constructor.
data RevisionsGet' = RevisionsGet'
    { _revQuotaUser   :: !(Maybe Text)
    , _revPrettyPrint :: !Bool
    , _revUserIp      :: !(Maybe Text)
    , _revKey         :: !(Maybe Text)
    , _revFileId      :: !Text
    , _revOauthToken  :: !(Maybe Text)
    , _revRevisionId  :: !Text
    , _revFields      :: !(Maybe Text)
    , _revAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsGet'' with the minimum fields required to make a request.
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
-- * 'revRevisionId'
--
-- * 'revFields'
--
-- * 'revAlt'
revisionsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsGet'
revisionsGet' pRevFileId_ pRevRevisionId_ =
    RevisionsGet'
    { _revQuotaUser = Nothing
    , _revPrettyPrint = True
    , _revUserIp = Nothing
    , _revKey = Nothing
    , _revFileId = pRevFileId_
    , _revOauthToken = Nothing
    , _revRevisionId = pRevRevisionId_
    , _revFields = Nothing
    , _revAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
revQuotaUser :: Lens' RevisionsGet' (Maybe Text)
revQuotaUser
  = lens _revQuotaUser (\ s a -> s{_revQuotaUser = a})

-- | Returns response with indentations and line breaks.
revPrettyPrint :: Lens' RevisionsGet' Bool
revPrettyPrint
  = lens _revPrettyPrint
      (\ s a -> s{_revPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
revUserIp :: Lens' RevisionsGet' (Maybe Text)
revUserIp
  = lens _revUserIp (\ s a -> s{_revUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
revKey :: Lens' RevisionsGet' (Maybe Text)
revKey = lens _revKey (\ s a -> s{_revKey = a})

-- | The ID of the file.
revFileId :: Lens' RevisionsGet' Text
revFileId
  = lens _revFileId (\ s a -> s{_revFileId = a})

-- | OAuth 2.0 token for the current user.
revOauthToken :: Lens' RevisionsGet' (Maybe Text)
revOauthToken
  = lens _revOauthToken
      (\ s a -> s{_revOauthToken = a})

-- | The ID of the revision.
revRevisionId :: Lens' RevisionsGet' Text
revRevisionId
  = lens _revRevisionId
      (\ s a -> s{_revRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
revFields :: Lens' RevisionsGet' (Maybe Text)
revFields
  = lens _revFields (\ s a -> s{_revFields = a})

-- | Data format for the response.
revAlt :: Lens' RevisionsGet' Alt
revAlt = lens _revAlt (\ s a -> s{_revAlt = a})

instance GoogleRequest RevisionsGet' where
        type Rs RevisionsGet' = Revision
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsGet'{..}
          = go _revQuotaUser (Just _revPrettyPrint) _revUserIp
              _revKey
              _revFileId
              _revOauthToken
              _revRevisionId
              _revFields
              (Just _revAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsGetResource)
                      r
                      u
