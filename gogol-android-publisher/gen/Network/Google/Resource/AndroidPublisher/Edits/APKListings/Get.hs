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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsGet@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get
    (
    -- * REST Resource
      EditsAPKListingsGetResource

    -- * Creating a Request
    , editsAPKListingsGet'
    , EditsAPKListingsGet'

    -- * Request Lenses
    , eapklgQuotaUser
    , eapklgPrettyPrint
    , eapklgPackageName
    , eapklgAPKVersionCode
    , eapklgUserIP
    , eapklgKey
    , eapklgLanguage
    , eapklgOAuthToken
    , eapklgEditId
    , eapklgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsGet@ which the
-- 'EditsAPKListingsGet'' request conforms to.
type EditsAPKListingsGetResource =
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
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] APKListing

-- | Fetches the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsAPKListingsGet'' smart constructor.
data EditsAPKListingsGet' = EditsAPKListingsGet'
    { _eapklgQuotaUser      :: !(Maybe Text)
    , _eapklgPrettyPrint    :: !Bool
    , _eapklgPackageName    :: !Text
    , _eapklgAPKVersionCode :: !Int32
    , _eapklgUserIP         :: !(Maybe Text)
    , _eapklgKey            :: !(Maybe Key)
    , _eapklgLanguage       :: !Text
    , _eapklgOAuthToken     :: !(Maybe OAuthToken)
    , _eapklgEditId         :: !Text
    , _eapklgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapklgQuotaUser'
--
-- * 'eapklgPrettyPrint'
--
-- * 'eapklgPackageName'
--
-- * 'eapklgAPKVersionCode'
--
-- * 'eapklgUserIP'
--
-- * 'eapklgKey'
--
-- * 'eapklgLanguage'
--
-- * 'eapklgOAuthToken'
--
-- * 'eapklgEditId'
--
-- * 'eapklgFields'
editsAPKListingsGet'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsGet'
editsAPKListingsGet' pEapklgPackageName_ pEapklgAPKVersionCode_ pEapklgLanguage_ pEapklgEditId_ =
    EditsAPKListingsGet'
    { _eapklgQuotaUser = Nothing
    , _eapklgPrettyPrint = True
    , _eapklgPackageName = pEapklgPackageName_
    , _eapklgAPKVersionCode = pEapklgAPKVersionCode_
    , _eapklgUserIP = Nothing
    , _eapklgKey = Nothing
    , _eapklgLanguage = pEapklgLanguage_
    , _eapklgOAuthToken = Nothing
    , _eapklgEditId = pEapklgEditId_
    , _eapklgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapklgQuotaUser :: Lens' EditsAPKListingsGet' (Maybe Text)
eapklgQuotaUser
  = lens _eapklgQuotaUser
      (\ s a -> s{_eapklgQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapklgPrettyPrint :: Lens' EditsAPKListingsGet' Bool
eapklgPrettyPrint
  = lens _eapklgPrettyPrint
      (\ s a -> s{_eapklgPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapklgPackageName :: Lens' EditsAPKListingsGet' Text
eapklgPackageName
  = lens _eapklgPackageName
      (\ s a -> s{_eapklgPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapklgAPKVersionCode :: Lens' EditsAPKListingsGet' Int32
eapklgAPKVersionCode
  = lens _eapklgAPKVersionCode
      (\ s a -> s{_eapklgAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapklgUserIP :: Lens' EditsAPKListingsGet' (Maybe Text)
eapklgUserIP
  = lens _eapklgUserIP (\ s a -> s{_eapklgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapklgKey :: Lens' EditsAPKListingsGet' (Maybe Key)
eapklgKey
  = lens _eapklgKey (\ s a -> s{_eapklgKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapklgLanguage :: Lens' EditsAPKListingsGet' Text
eapklgLanguage
  = lens _eapklgLanguage
      (\ s a -> s{_eapklgLanguage = a})

-- | OAuth 2.0 token for the current user.
eapklgOAuthToken :: Lens' EditsAPKListingsGet' (Maybe OAuthToken)
eapklgOAuthToken
  = lens _eapklgOAuthToken
      (\ s a -> s{_eapklgOAuthToken = a})

-- | Unique identifier for this edit.
eapklgEditId :: Lens' EditsAPKListingsGet' Text
eapklgEditId
  = lens _eapklgEditId (\ s a -> s{_eapklgEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapklgFields :: Lens' EditsAPKListingsGet' (Maybe Text)
eapklgFields
  = lens _eapklgFields (\ s a -> s{_eapklgFields = a})

instance GoogleAuth EditsAPKListingsGet' where
        authKey = eapklgKey . _Just
        authToken = eapklgOAuthToken . _Just

instance GoogleRequest EditsAPKListingsGet' where
        type Rs EditsAPKListingsGet' = APKListing
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKListingsGet'{..}
          = go _eapklgPackageName _eapklgEditId
              _eapklgAPKVersionCode
              _eapklgLanguage
              _eapklgQuotaUser
              (Just _eapklgPrettyPrint)
              _eapklgUserIP
              _eapklgFields
              _eapklgKey
              _eapklgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKListingsGetResource)
                      r
                      u
