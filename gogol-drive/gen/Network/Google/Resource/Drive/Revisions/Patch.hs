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
    , rppUserIP
    , rppPayload
    , rppKey
    , rppFileId
    , rppOAuthToken
    , rppRevisionId
    , rppFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsPatch@ method which the
-- 'RevisionsPatch'' request conforms to.
type RevisionsPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Revision :> Patch '[JSON] Revision

-- | Updates a revision. This method supports patch semantics.
--
-- /See:/ 'revisionsPatch'' smart constructor.
data RevisionsPatch' = RevisionsPatch'
    { _rppQuotaUser   :: !(Maybe Text)
    , _rppPrettyPrint :: !Bool
    , _rppUserIP      :: !(Maybe Text)
    , _rppPayload     :: !Revision
    , _rppKey         :: !(Maybe AuthKey)
    , _rppFileId      :: !Text
    , _rppOAuthToken  :: !(Maybe OAuthToken)
    , _rppRevisionId  :: !Text
    , _rppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppQuotaUser'
--
-- * 'rppPrettyPrint'
--
-- * 'rppUserIP'
--
-- * 'rppPayload'
--
-- * 'rppKey'
--
-- * 'rppFileId'
--
-- * 'rppOAuthToken'
--
-- * 'rppRevisionId'
--
-- * 'rppFields'
revisionsPatch'
    :: Revision -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'revisionId'
    -> RevisionsPatch'
revisionsPatch' pRppPayload_ pRppFileId_ pRppRevisionId_ =
    RevisionsPatch'
    { _rppQuotaUser = Nothing
    , _rppPrettyPrint = True
    , _rppUserIP = Nothing
    , _rppPayload = pRppPayload_
    , _rppKey = Nothing
    , _rppFileId = pRppFileId_
    , _rppOAuthToken = Nothing
    , _rppRevisionId = pRppRevisionId_
    , _rppFields = Nothing
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
rppUserIP :: Lens' RevisionsPatch' (Maybe Text)
rppUserIP
  = lens _rppUserIP (\ s a -> s{_rppUserIP = a})

-- | Multipart request metadata.
rppPayload :: Lens' RevisionsPatch' Revision
rppPayload
  = lens _rppPayload (\ s a -> s{_rppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rppKey :: Lens' RevisionsPatch' (Maybe AuthKey)
rppKey = lens _rppKey (\ s a -> s{_rppKey = a})

-- | The ID for the file.
rppFileId :: Lens' RevisionsPatch' Text
rppFileId
  = lens _rppFileId (\ s a -> s{_rppFileId = a})

-- | OAuth 2.0 token for the current user.
rppOAuthToken :: Lens' RevisionsPatch' (Maybe OAuthToken)
rppOAuthToken
  = lens _rppOAuthToken
      (\ s a -> s{_rppOAuthToken = a})

-- | The ID for the revision.
rppRevisionId :: Lens' RevisionsPatch' Text
rppRevisionId
  = lens _rppRevisionId
      (\ s a -> s{_rppRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
rppFields :: Lens' RevisionsPatch' (Maybe Text)
rppFields
  = lens _rppFields (\ s a -> s{_rppFields = a})

instance GoogleAuth RevisionsPatch' where
        _AuthKey = rppKey . _Just
        _AuthToken = rppOAuthToken . _Just

instance GoogleRequest RevisionsPatch' where
        type Rs RevisionsPatch' = Revision
        request = requestWith driveRequest
        requestWith rq RevisionsPatch'{..}
          = go _rppFileId _rppRevisionId _rppQuotaUser
              (Just _rppPrettyPrint)
              _rppUserIP
              _rppFields
              _rppKey
              _rppOAuthToken
              (Just AltJSON)
              _rppPayload
          where go
                  = clientBuild (Proxy :: Proxy RevisionsPatchResource)
                      rq
