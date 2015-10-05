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
module Network.Google.Resource.Drive.Revisions.Delete
    (
    -- * REST Resource
      RevisionsDeleteResource

    -- * Creating a Request
    , revisionsDelete'
    , RevisionsDelete'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIP
    , rdKey
    , rdFileId
    , rdOAuthToken
    , rdRevisionId
    , rdFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsDelete@ which the
-- 'RevisionsDelete'' request conforms to.
type RevisionsDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a revision.
--
-- /See:/ 'revisionsDelete'' smart constructor.
data RevisionsDelete' = RevisionsDelete'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIP      :: !(Maybe Text)
    , _rdKey         :: !(Maybe Key)
    , _rdFileId      :: !Text
    , _rdOAuthToken  :: !(Maybe OAuthToken)
    , _rdRevisionId  :: !Text
    , _rdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIP'
--
-- * 'rdKey'
--
-- * 'rdFileId'
--
-- * 'rdOAuthToken'
--
-- * 'rdRevisionId'
--
-- * 'rdFields'
revisionsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsDelete'
revisionsDelete' pRdFileId_ pRdRevisionId_ =
    RevisionsDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIP = Nothing
    , _rdKey = Nothing
    , _rdFileId = pRdFileId_
    , _rdOAuthToken = Nothing
    , _rdRevisionId = pRdRevisionId_
    , _rdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' RevisionsDelete' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' RevisionsDelete' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIP :: Lens' RevisionsDelete' (Maybe Text)
rdUserIP = lens _rdUserIP (\ s a -> s{_rdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RevisionsDelete' (Maybe Key)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | The ID of the file.
rdFileId :: Lens' RevisionsDelete' Text
rdFileId = lens _rdFileId (\ s a -> s{_rdFileId = a})

-- | OAuth 2.0 token for the current user.
rdOAuthToken :: Lens' RevisionsDelete' (Maybe OAuthToken)
rdOAuthToken
  = lens _rdOAuthToken (\ s a -> s{_rdOAuthToken = a})

-- | The ID of the revision.
rdRevisionId :: Lens' RevisionsDelete' Text
rdRevisionId
  = lens _rdRevisionId (\ s a -> s{_rdRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RevisionsDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

instance GoogleAuth RevisionsDelete' where
        authKey = rdKey . _Just
        authToken = rdOAuthToken . _Just

instance GoogleRequest RevisionsDelete' where
        type Rs RevisionsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsDelete'{..}
          = go _rdFileId _rdRevisionId _rdQuotaUser
              (Just _rdPrettyPrint)
              _rdUserIP
              _rdFields
              _rdKey
              _rdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsDeleteResource)
                      r
                      u
