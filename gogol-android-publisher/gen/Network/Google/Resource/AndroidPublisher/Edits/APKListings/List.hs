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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsList@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.List
    (
    -- * REST Resource
      EditsAPKListingsListResource

    -- * Creating a Request
    , editsAPKListingsList'
    , EditsAPKListingsList'

    -- * Request Lenses
    , eapkllQuotaUser
    , eapkllPrettyPrint
    , eapkllPackageName
    , eapkllAPKVersionCode
    , eapkllUserIP
    , eapkllKey
    , eapkllOAuthToken
    , eapkllEditId
    , eapkllFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsList@ which the
-- 'EditsAPKListingsList'' request conforms to.
type EditsAPKListingsListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] APKListingsListResponse

-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsAPKListingsList'' smart constructor.
data EditsAPKListingsList' = EditsAPKListingsList'
    { _eapkllQuotaUser      :: !(Maybe Text)
    , _eapkllPrettyPrint    :: !Bool
    , _eapkllPackageName    :: !Text
    , _eapkllAPKVersionCode :: !Int32
    , _eapkllUserIP         :: !(Maybe Text)
    , _eapkllKey            :: !(Maybe Key)
    , _eapkllOAuthToken     :: !(Maybe OAuthToken)
    , _eapkllEditId         :: !Text
    , _eapkllFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkllQuotaUser'
--
-- * 'eapkllPrettyPrint'
--
-- * 'eapkllPackageName'
--
-- * 'eapkllAPKVersionCode'
--
-- * 'eapkllUserIP'
--
-- * 'eapkllKey'
--
-- * 'eapkllOAuthToken'
--
-- * 'eapkllEditId'
--
-- * 'eapkllFields'
editsAPKListingsList'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsList'
editsAPKListingsList' pEapkllPackageName_ pEapkllAPKVersionCode_ pEapkllEditId_ =
    EditsAPKListingsList'
    { _eapkllQuotaUser = Nothing
    , _eapkllPrettyPrint = True
    , _eapkllPackageName = pEapkllPackageName_
    , _eapkllAPKVersionCode = pEapkllAPKVersionCode_
    , _eapkllUserIP = Nothing
    , _eapkllKey = Nothing
    , _eapkllOAuthToken = Nothing
    , _eapkllEditId = pEapkllEditId_
    , _eapkllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapkllQuotaUser :: Lens' EditsAPKListingsList' (Maybe Text)
eapkllQuotaUser
  = lens _eapkllQuotaUser
      (\ s a -> s{_eapkllQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapkllPrettyPrint :: Lens' EditsAPKListingsList' Bool
eapkllPrettyPrint
  = lens _eapkllPrettyPrint
      (\ s a -> s{_eapkllPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkllPackageName :: Lens' EditsAPKListingsList' Text
eapkllPackageName
  = lens _eapkllPackageName
      (\ s a -> s{_eapkllPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkllAPKVersionCode :: Lens' EditsAPKListingsList' Int32
eapkllAPKVersionCode
  = lens _eapkllAPKVersionCode
      (\ s a -> s{_eapkllAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapkllUserIP :: Lens' EditsAPKListingsList' (Maybe Text)
eapkllUserIP
  = lens _eapkllUserIP (\ s a -> s{_eapkllUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapkllKey :: Lens' EditsAPKListingsList' (Maybe Key)
eapkllKey
  = lens _eapkllKey (\ s a -> s{_eapkllKey = a})

-- | OAuth 2.0 token for the current user.
eapkllOAuthToken :: Lens' EditsAPKListingsList' (Maybe OAuthToken)
eapkllOAuthToken
  = lens _eapkllOAuthToken
      (\ s a -> s{_eapkllOAuthToken = a})

-- | Unique identifier for this edit.
eapkllEditId :: Lens' EditsAPKListingsList' Text
eapkllEditId
  = lens _eapkllEditId (\ s a -> s{_eapkllEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapkllFields :: Lens' EditsAPKListingsList' (Maybe Text)
eapkllFields
  = lens _eapkllFields (\ s a -> s{_eapkllFields = a})

instance GoogleAuth EditsAPKListingsList' where
        authKey = eapkllKey . _Just
        authToken = eapkllOAuthToken . _Just

instance GoogleRequest EditsAPKListingsList' where
        type Rs EditsAPKListingsList' =
             APKListingsListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKListingsList'{..}
          = go _eapkllPackageName _eapkllEditId
              _eapkllAPKVersionCode
              _eapkllQuotaUser
              (Just _eapkllPrettyPrint)
              _eapkllUserIP
              _eapkllFields
              _eapkllKey
              _eapkllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKListingsListResource)
                      r
                      u
