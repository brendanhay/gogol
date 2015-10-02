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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsDeleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall
    (
    -- * REST Resource
      EditsApkListingsDeleteallResource

    -- * Creating a Request
    , editsAPKListingsDeleteall'
    , EditsAPKListingsDeleteall'

    -- * Request Lenses
    , eapkldaQuotaUser
    , eapkldaPrettyPrint
    , eapkldaPackageName
    , eapkldaAPKVersionCode
    , eapkldaUserIP
    , eapkldaKey
    , eapkldaOAuthToken
    , eapkldaEditId
    , eapkldaFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsDeleteall@ which the
-- 'EditsAPKListingsDeleteall'' request conforms to.
type EditsApkListingsDeleteallResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsAPKListingsDeleteall'' smart constructor.
data EditsAPKListingsDeleteall' = EditsAPKListingsDeleteall'
    { _eapkldaQuotaUser      :: !(Maybe Text)
    , _eapkldaPrettyPrint    :: !Bool
    , _eapkldaPackageName    :: !Text
    , _eapkldaAPKVersionCode :: !Int32
    , _eapkldaUserIP         :: !(Maybe Text)
    , _eapkldaKey            :: !(Maybe Key)
    , _eapkldaOAuthToken     :: !(Maybe OAuthToken)
    , _eapkldaEditId         :: !Text
    , _eapkldaFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkldaQuotaUser'
--
-- * 'eapkldaPrettyPrint'
--
-- * 'eapkldaPackageName'
--
-- * 'eapkldaAPKVersionCode'
--
-- * 'eapkldaUserIP'
--
-- * 'eapkldaKey'
--
-- * 'eapkldaOAuthToken'
--
-- * 'eapkldaEditId'
--
-- * 'eapkldaFields'
editsAPKListingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsDeleteall'
editsAPKListingsDeleteall' pEapkldaPackageName_ pEapkldaAPKVersionCode_ pEapkldaEditId_ =
    EditsAPKListingsDeleteall'
    { _eapkldaQuotaUser = Nothing
    , _eapkldaPrettyPrint = True
    , _eapkldaPackageName = pEapkldaPackageName_
    , _eapkldaAPKVersionCode = pEapkldaAPKVersionCode_
    , _eapkldaUserIP = Nothing
    , _eapkldaKey = Nothing
    , _eapkldaOAuthToken = Nothing
    , _eapkldaEditId = pEapkldaEditId_
    , _eapkldaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapkldaQuotaUser :: Lens' EditsAPKListingsDeleteall' (Maybe Text)
eapkldaQuotaUser
  = lens _eapkldaQuotaUser
      (\ s a -> s{_eapkldaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapkldaPrettyPrint :: Lens' EditsAPKListingsDeleteall' Bool
eapkldaPrettyPrint
  = lens _eapkldaPrettyPrint
      (\ s a -> s{_eapkldaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkldaPackageName :: Lens' EditsAPKListingsDeleteall' Text
eapkldaPackageName
  = lens _eapkldaPackageName
      (\ s a -> s{_eapkldaPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkldaAPKVersionCode :: Lens' EditsAPKListingsDeleteall' Int32
eapkldaAPKVersionCode
  = lens _eapkldaAPKVersionCode
      (\ s a -> s{_eapkldaAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapkldaUserIP :: Lens' EditsAPKListingsDeleteall' (Maybe Text)
eapkldaUserIP
  = lens _eapkldaUserIP
      (\ s a -> s{_eapkldaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapkldaKey :: Lens' EditsAPKListingsDeleteall' (Maybe Key)
eapkldaKey
  = lens _eapkldaKey (\ s a -> s{_eapkldaKey = a})

-- | OAuth 2.0 token for the current user.
eapkldaOAuthToken :: Lens' EditsAPKListingsDeleteall' (Maybe OAuthToken)
eapkldaOAuthToken
  = lens _eapkldaOAuthToken
      (\ s a -> s{_eapkldaOAuthToken = a})

-- | Unique identifier for this edit.
eapkldaEditId :: Lens' EditsAPKListingsDeleteall' Text
eapkldaEditId
  = lens _eapkldaEditId
      (\ s a -> s{_eapkldaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapkldaFields :: Lens' EditsAPKListingsDeleteall' (Maybe Text)
eapkldaFields
  = lens _eapkldaFields
      (\ s a -> s{_eapkldaFields = a})

instance GoogleAuth EditsAPKListingsDeleteall' where
        authKey = eapkldaKey . _Just
        authToken = eapkldaOAuthToken . _Just

instance GoogleRequest EditsAPKListingsDeleteall'
         where
        type Rs EditsAPKListingsDeleteall' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKListingsDeleteall'{..}
          = go _eapkldaQuotaUser (Just _eapkldaPrettyPrint)
              _eapkldaPackageName
              _eapkldaAPKVersionCode
              _eapkldaUserIP
              _eapkldaKey
              _eapkldaOAuthToken
              _eapkldaEditId
              _eapkldaFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApkListingsDeleteallResource)
                      r
                      u
