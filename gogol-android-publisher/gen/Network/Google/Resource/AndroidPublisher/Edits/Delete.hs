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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an edit for an app. Creating a new edit will automatically
-- delete any of your previous edits so this method need only be called if
-- you want to preemptively abandon an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsDelete@.
module Network.Google.Resource.AndroidPublisher.Edits.Delete
    (
    -- * REST Resource
      EditsDeleteResource

    -- * Creating a Request
    , editsDelete'
    , EditsDelete'

    -- * Request Lenses
    , edQuotaUser
    , edPrettyPrint
    , edPackageName
    , edUserIP
    , edKey
    , edOAuthToken
    , edEditId
    , edFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsDelete@ which the
-- 'EditsDelete'' request conforms to.
type EditsDeleteResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an edit for an app. Creating a new edit will automatically
-- delete any of your previous edits so this method need only be called if
-- you want to preemptively abandon an edit.
--
-- /See:/ 'editsDelete'' smart constructor.
data EditsDelete' = EditsDelete'
    { _edQuotaUser   :: !(Maybe Text)
    , _edPrettyPrint :: !Bool
    , _edPackageName :: !Text
    , _edUserIP      :: !(Maybe Text)
    , _edKey         :: !(Maybe AuthKey)
    , _edOAuthToken  :: !(Maybe OAuthToken)
    , _edEditId      :: !Text
    , _edFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edQuotaUser'
--
-- * 'edPrettyPrint'
--
-- * 'edPackageName'
--
-- * 'edUserIP'
--
-- * 'edKey'
--
-- * 'edOAuthToken'
--
-- * 'edEditId'
--
-- * 'edFields'
editsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsDelete'
editsDelete' pEdPackageName_ pEdEditId_ =
    EditsDelete'
    { _edQuotaUser = Nothing
    , _edPrettyPrint = True
    , _edPackageName = pEdPackageName_
    , _edUserIP = Nothing
    , _edKey = Nothing
    , _edOAuthToken = Nothing
    , _edEditId = pEdEditId_
    , _edFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edQuotaUser :: Lens' EditsDelete' (Maybe Text)
edQuotaUser
  = lens _edQuotaUser (\ s a -> s{_edQuotaUser = a})

-- | Returns response with indentations and line breaks.
edPrettyPrint :: Lens' EditsDelete' Bool
edPrettyPrint
  = lens _edPrettyPrint
      (\ s a -> s{_edPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edPackageName :: Lens' EditsDelete' Text
edPackageName
  = lens _edPackageName
      (\ s a -> s{_edPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edUserIP :: Lens' EditsDelete' (Maybe Text)
edUserIP = lens _edUserIP (\ s a -> s{_edUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edKey :: Lens' EditsDelete' (Maybe AuthKey)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | OAuth 2.0 token for the current user.
edOAuthToken :: Lens' EditsDelete' (Maybe OAuthToken)
edOAuthToken
  = lens _edOAuthToken (\ s a -> s{_edOAuthToken = a})

-- | Unique identifier for this edit.
edEditId :: Lens' EditsDelete' Text
edEditId = lens _edEditId (\ s a -> s{_edEditId = a})

-- | Selector specifying which fields to include in a partial response.
edFields :: Lens' EditsDelete' (Maybe Text)
edFields = lens _edFields (\ s a -> s{_edFields = a})

instance GoogleAuth EditsDelete' where
        authKey = edKey . _Just
        authToken = edOAuthToken . _Just

instance GoogleRequest EditsDelete' where
        type Rs EditsDelete' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsDelete'{..}
          = go _edPackageName _edEditId _edQuotaUser
              (Just _edPrettyPrint)
              _edUserIP
              _edFields
              _edKey
              _edOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsDeleteResource)
                      r
                      u
