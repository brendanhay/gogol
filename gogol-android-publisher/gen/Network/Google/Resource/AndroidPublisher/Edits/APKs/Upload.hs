{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKsUpload@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
    (
    -- * REST Resource
      EditsAPKsUploadResource

    -- * Creating a Request
    , editsAPKsUpload'
    , EditsAPKsUpload'

    -- * Request Lenses
    , eapkuQuotaUser
    , eapkuPrettyPrint
    , eapkuPackageName
    , eapkuUserIP
    , eapkuMedia
    , eapkuKey
    , eapkuOAuthToken
    , eapkuEditId
    , eapkuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKsUpload@ which the
-- 'EditsAPKsUpload'' request conforms to.
type EditsAPKsUploadResource =
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
                           ReqBody '[OctetStream] Body :> Post '[JSON] APK

--
-- /See:/ 'editsAPKsUpload'' smart constructor.
data EditsAPKsUpload' = EditsAPKsUpload'
    { _eapkuQuotaUser   :: !(Maybe Text)
    , _eapkuPrettyPrint :: !Bool
    , _eapkuPackageName :: !Text
    , _eapkuUserIP      :: !(Maybe Text)
    , _eapkuMedia       :: !Body
    , _eapkuKey         :: !(Maybe Key)
    , _eapkuOAuthToken  :: !(Maybe OAuthToken)
    , _eapkuEditId      :: !Text
    , _eapkuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKsUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkuQuotaUser'
--
-- * 'eapkuPrettyPrint'
--
-- * 'eapkuPackageName'
--
-- * 'eapkuUserIP'
--
-- * 'eapkuMedia'
--
-- * 'eapkuKey'
--
-- * 'eapkuOAuthToken'
--
-- * 'eapkuEditId'
--
-- * 'eapkuFields'
editsAPKsUpload'
    :: Text -- ^ 'packageName'
    -> Body -- ^ 'media'
    -> Text -- ^ 'editId'
    -> EditsAPKsUpload'
editsAPKsUpload' pEapkuPackageName_ pEapkuMedia_ pEapkuEditId_ =
    EditsAPKsUpload'
    { _eapkuQuotaUser = Nothing
    , _eapkuPrettyPrint = True
    , _eapkuPackageName = pEapkuPackageName_
    , _eapkuUserIP = Nothing
    , _eapkuMedia = pEapkuMedia_
    , _eapkuKey = Nothing
    , _eapkuOAuthToken = Nothing
    , _eapkuEditId = pEapkuEditId_
    , _eapkuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapkuQuotaUser :: Lens' EditsAPKsUpload' (Maybe Text)
eapkuQuotaUser
  = lens _eapkuQuotaUser
      (\ s a -> s{_eapkuQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapkuPrettyPrint :: Lens' EditsAPKsUpload' Bool
eapkuPrettyPrint
  = lens _eapkuPrettyPrint
      (\ s a -> s{_eapkuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkuPackageName :: Lens' EditsAPKsUpload' Text
eapkuPackageName
  = lens _eapkuPackageName
      (\ s a -> s{_eapkuPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapkuUserIP :: Lens' EditsAPKsUpload' (Maybe Text)
eapkuUserIP
  = lens _eapkuUserIP (\ s a -> s{_eapkuUserIP = a})

eapkuMedia :: Lens' EditsAPKsUpload' Body
eapkuMedia
  = lens _eapkuMedia (\ s a -> s{_eapkuMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapkuKey :: Lens' EditsAPKsUpload' (Maybe Key)
eapkuKey = lens _eapkuKey (\ s a -> s{_eapkuKey = a})

-- | OAuth 2.0 token for the current user.
eapkuOAuthToken :: Lens' EditsAPKsUpload' (Maybe OAuthToken)
eapkuOAuthToken
  = lens _eapkuOAuthToken
      (\ s a -> s{_eapkuOAuthToken = a})

-- | Unique identifier for this edit.
eapkuEditId :: Lens' EditsAPKsUpload' Text
eapkuEditId
  = lens _eapkuEditId (\ s a -> s{_eapkuEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapkuFields :: Lens' EditsAPKsUpload' (Maybe Text)
eapkuFields
  = lens _eapkuFields (\ s a -> s{_eapkuFields = a})

instance GoogleAuth EditsAPKsUpload' where
        authKey = eapkuKey . _Just
        authToken = eapkuOAuthToken . _Just

instance GoogleRequest EditsAPKsUpload' where
        type Rs EditsAPKsUpload' = APK
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKsUpload'{..}
          = go _eapkuPackageName _eapkuEditId _eapkuQuotaUser
              (Just _eapkuPrettyPrint)
              _eapkuUserIP
              _eapkuFields
              _eapkuKey
              _eapkuOAuthToken
              (Just AltJSON)
              _eapkuMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKsUploadResource)
                      r
                      u
