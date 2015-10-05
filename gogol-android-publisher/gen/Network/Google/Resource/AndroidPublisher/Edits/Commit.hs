{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Commit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commits\/applies the changes made in this edit back to the app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsCommit@.
module Network.Google.Resource.AndroidPublisher.Edits.Commit
    (
    -- * REST Resource
      EditsCommitResource

    -- * Creating a Request
    , editsCommit'
    , EditsCommit'

    -- * Request Lenses
    , ecQuotaUser
    , ecPrettyPrint
    , ecPackageName
    , ecUserIP
    , ecKey
    , ecOAuthToken
    , ecEditId
    , ecFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsCommit@ which the
-- 'EditsCommit'' request conforms to.
type EditsCommitResource =
     Capture "packageName" Text :>
       "edits" :>
         CaptureMode "editId" "commit" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] AppEdit

-- | Commits\/applies the changes made in this edit back to the app.
--
-- /See:/ 'editsCommit'' smart constructor.
data EditsCommit' = EditsCommit'
    { _ecQuotaUser   :: !(Maybe Text)
    , _ecPrettyPrint :: !Bool
    , _ecPackageName :: !Text
    , _ecUserIP      :: !(Maybe Text)
    , _ecKey         :: !(Maybe Key)
    , _ecOAuthToken  :: !(Maybe OAuthToken)
    , _ecEditId      :: !Text
    , _ecFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsCommit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecQuotaUser'
--
-- * 'ecPrettyPrint'
--
-- * 'ecPackageName'
--
-- * 'ecUserIP'
--
-- * 'ecKey'
--
-- * 'ecOAuthToken'
--
-- * 'ecEditId'
--
-- * 'ecFields'
editsCommit'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsCommit'
editsCommit' pEcPackageName_ pEcEditId_ =
    EditsCommit'
    { _ecQuotaUser = Nothing
    , _ecPrettyPrint = True
    , _ecPackageName = pEcPackageName_
    , _ecUserIP = Nothing
    , _ecKey = Nothing
    , _ecOAuthToken = Nothing
    , _ecEditId = pEcEditId_
    , _ecFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ecQuotaUser :: Lens' EditsCommit' (Maybe Text)
ecQuotaUser
  = lens _ecQuotaUser (\ s a -> s{_ecQuotaUser = a})

-- | Returns response with indentations and line breaks.
ecPrettyPrint :: Lens' EditsCommit' Bool
ecPrettyPrint
  = lens _ecPrettyPrint
      (\ s a -> s{_ecPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ecPackageName :: Lens' EditsCommit' Text
ecPackageName
  = lens _ecPackageName
      (\ s a -> s{_ecPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ecUserIP :: Lens' EditsCommit' (Maybe Text)
ecUserIP = lens _ecUserIP (\ s a -> s{_ecUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ecKey :: Lens' EditsCommit' (Maybe Key)
ecKey = lens _ecKey (\ s a -> s{_ecKey = a})

-- | OAuth 2.0 token for the current user.
ecOAuthToken :: Lens' EditsCommit' (Maybe OAuthToken)
ecOAuthToken
  = lens _ecOAuthToken (\ s a -> s{_ecOAuthToken = a})

-- | Unique identifier for this edit.
ecEditId :: Lens' EditsCommit' Text
ecEditId = lens _ecEditId (\ s a -> s{_ecEditId = a})

-- | Selector specifying which fields to include in a partial response.
ecFields :: Lens' EditsCommit' (Maybe Text)
ecFields = lens _ecFields (\ s a -> s{_ecFields = a})

instance GoogleAuth EditsCommit' where
        authKey = ecKey . _Just
        authToken = ecOAuthToken . _Just

instance GoogleRequest EditsCommit' where
        type Rs EditsCommit' = AppEdit
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsCommit'{..}
          = go _ecPackageName _ecEditId _ecQuotaUser
              (Just _ecPrettyPrint)
              _ecUserIP
              _ecFields
              _ecKey
              _ecOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsCommitResource)
                      r
                      u
