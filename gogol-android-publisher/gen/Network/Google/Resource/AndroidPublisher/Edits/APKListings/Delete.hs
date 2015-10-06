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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsDelete@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete
    (
    -- * REST Resource
      EditsAPKListingsDeleteResource

    -- * Creating a Request
    , editsAPKListingsDelete'
    , EditsAPKListingsDelete'

    -- * Request Lenses
    , eapkldQuotaUser
    , eapkldPrettyPrint
    , eapkldPackageName
    , eapkldAPKVersionCode
    , eapkldUserIP
    , eapkldKey
    , eapkldLanguage
    , eapkldOAuthToken
    , eapkldEditId
    , eapkldFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsDelete@ which the
-- 'EditsAPKListingsDelete'' request conforms to.
type EditsAPKListingsDeleteResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 Capture "language" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsAPKListingsDelete'' smart constructor.
data EditsAPKListingsDelete' = EditsAPKListingsDelete'
    { _eapkldQuotaUser      :: !(Maybe Text)
    , _eapkldPrettyPrint    :: !Bool
    , _eapkldPackageName    :: !Text
    , _eapkldAPKVersionCode :: !Int32
    , _eapkldUserIP         :: !(Maybe Text)
    , _eapkldKey            :: !(Maybe AuthKey)
    , _eapkldLanguage       :: !Text
    , _eapkldOAuthToken     :: !(Maybe OAuthToken)
    , _eapkldEditId         :: !Text
    , _eapkldFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkldQuotaUser'
--
-- * 'eapkldPrettyPrint'
--
-- * 'eapkldPackageName'
--
-- * 'eapkldAPKVersionCode'
--
-- * 'eapkldUserIP'
--
-- * 'eapkldKey'
--
-- * 'eapkldLanguage'
--
-- * 'eapkldOAuthToken'
--
-- * 'eapkldEditId'
--
-- * 'eapkldFields'
editsAPKListingsDelete'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsDelete'
editsAPKListingsDelete' pEapkldPackageName_ pEapkldAPKVersionCode_ pEapkldLanguage_ pEapkldEditId_ =
    EditsAPKListingsDelete'
    { _eapkldQuotaUser = Nothing
    , _eapkldPrettyPrint = True
    , _eapkldPackageName = pEapkldPackageName_
    , _eapkldAPKVersionCode = pEapkldAPKVersionCode_
    , _eapkldUserIP = Nothing
    , _eapkldKey = Nothing
    , _eapkldLanguage = pEapkldLanguage_
    , _eapkldOAuthToken = Nothing
    , _eapkldEditId = pEapkldEditId_
    , _eapkldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapkldQuotaUser :: Lens' EditsAPKListingsDelete' (Maybe Text)
eapkldQuotaUser
  = lens _eapkldQuotaUser
      (\ s a -> s{_eapkldQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapkldPrettyPrint :: Lens' EditsAPKListingsDelete' Bool
eapkldPrettyPrint
  = lens _eapkldPrettyPrint
      (\ s a -> s{_eapkldPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkldPackageName :: Lens' EditsAPKListingsDelete' Text
eapkldPackageName
  = lens _eapkldPackageName
      (\ s a -> s{_eapkldPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkldAPKVersionCode :: Lens' EditsAPKListingsDelete' Int32
eapkldAPKVersionCode
  = lens _eapkldAPKVersionCode
      (\ s a -> s{_eapkldAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapkldUserIP :: Lens' EditsAPKListingsDelete' (Maybe Text)
eapkldUserIP
  = lens _eapkldUserIP (\ s a -> s{_eapkldUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapkldKey :: Lens' EditsAPKListingsDelete' (Maybe AuthKey)
eapkldKey
  = lens _eapkldKey (\ s a -> s{_eapkldKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapkldLanguage :: Lens' EditsAPKListingsDelete' Text
eapkldLanguage
  = lens _eapkldLanguage
      (\ s a -> s{_eapkldLanguage = a})

-- | OAuth 2.0 token for the current user.
eapkldOAuthToken :: Lens' EditsAPKListingsDelete' (Maybe OAuthToken)
eapkldOAuthToken
  = lens _eapkldOAuthToken
      (\ s a -> s{_eapkldOAuthToken = a})

-- | Unique identifier for this edit.
eapkldEditId :: Lens' EditsAPKListingsDelete' Text
eapkldEditId
  = lens _eapkldEditId (\ s a -> s{_eapkldEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapkldFields :: Lens' EditsAPKListingsDelete' (Maybe Text)
eapkldFields
  = lens _eapkldFields (\ s a -> s{_eapkldFields = a})

instance GoogleAuth EditsAPKListingsDelete' where
        authKey = eapkldKey . _Just
        authToken = eapkldOAuthToken . _Just

instance GoogleRequest EditsAPKListingsDelete' where
        type Rs EditsAPKListingsDelete' = ()
        request = requestWith androidPublisherRequest
        requestWith rq EditsAPKListingsDelete'{..}
          = go _eapkldPackageName _eapkldEditId
              _eapkldAPKVersionCode
              _eapkldLanguage
              _eapkldQuotaUser
              (Just _eapkldPrettyPrint)
              _eapkldUserIP
              _eapkldFields
              _eapkldKey
              _eapkldOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsAPKListingsDeleteResource)
                      rq
