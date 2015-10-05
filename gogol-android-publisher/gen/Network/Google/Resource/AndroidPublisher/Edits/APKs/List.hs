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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKsList@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.List
    (
    -- * REST Resource
      EditsAPKsListResource

    -- * Creating a Request
    , editsAPKsList'
    , EditsAPKsList'

    -- * Request Lenses
    , eapklQuotaUser
    , eapklPrettyPrint
    , eapklPackageName
    , eapklUserIP
    , eapklKey
    , eapklOAuthToken
    , eapklEditId
    , eapklFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKsList@ which the
-- 'EditsAPKsList'' request conforms to.
type EditsAPKsListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] APKsListResponse

--
-- /See:/ 'editsAPKsList'' smart constructor.
data EditsAPKsList' = EditsAPKsList'
    { _eapklQuotaUser   :: !(Maybe Text)
    , _eapklPrettyPrint :: !Bool
    , _eapklPackageName :: !Text
    , _eapklUserIP      :: !(Maybe Text)
    , _eapklKey         :: !(Maybe Key)
    , _eapklOAuthToken  :: !(Maybe OAuthToken)
    , _eapklEditId      :: !Text
    , _eapklFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapklQuotaUser'
--
-- * 'eapklPrettyPrint'
--
-- * 'eapklPackageName'
--
-- * 'eapklUserIP'
--
-- * 'eapklKey'
--
-- * 'eapklOAuthToken'
--
-- * 'eapklEditId'
--
-- * 'eapklFields'
editsAPKsList'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsAPKsList'
editsAPKsList' pEapklPackageName_ pEapklEditId_ =
    EditsAPKsList'
    { _eapklQuotaUser = Nothing
    , _eapklPrettyPrint = True
    , _eapklPackageName = pEapklPackageName_
    , _eapklUserIP = Nothing
    , _eapklKey = Nothing
    , _eapklOAuthToken = Nothing
    , _eapklEditId = pEapklEditId_
    , _eapklFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapklQuotaUser :: Lens' EditsAPKsList' (Maybe Text)
eapklQuotaUser
  = lens _eapklQuotaUser
      (\ s a -> s{_eapklQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapklPrettyPrint :: Lens' EditsAPKsList' Bool
eapklPrettyPrint
  = lens _eapklPrettyPrint
      (\ s a -> s{_eapklPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapklPackageName :: Lens' EditsAPKsList' Text
eapklPackageName
  = lens _eapklPackageName
      (\ s a -> s{_eapklPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapklUserIP :: Lens' EditsAPKsList' (Maybe Text)
eapklUserIP
  = lens _eapklUserIP (\ s a -> s{_eapklUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapklKey :: Lens' EditsAPKsList' (Maybe Key)
eapklKey = lens _eapklKey (\ s a -> s{_eapklKey = a})

-- | OAuth 2.0 token for the current user.
eapklOAuthToken :: Lens' EditsAPKsList' (Maybe OAuthToken)
eapklOAuthToken
  = lens _eapklOAuthToken
      (\ s a -> s{_eapklOAuthToken = a})

-- | Unique identifier for this edit.
eapklEditId :: Lens' EditsAPKsList' Text
eapklEditId
  = lens _eapklEditId (\ s a -> s{_eapklEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapklFields :: Lens' EditsAPKsList' (Maybe Text)
eapklFields
  = lens _eapklFields (\ s a -> s{_eapklFields = a})

instance GoogleAuth EditsAPKsList' where
        authKey = eapklKey . _Just
        authToken = eapklOAuthToken . _Just

instance GoogleRequest EditsAPKsList' where
        type Rs EditsAPKsList' = APKsListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKsList'{..}
          = go _eapklPackageName _eapklEditId _eapklQuotaUser
              (Just _eapklPrettyPrint)
              _eapklUserIP
              _eapklFields
              _eapklKey
              _eapklOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKsListResource)
                      r
                      u
