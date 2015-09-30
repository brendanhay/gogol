{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsUpdate@.
module Androidpublisher.Edits.Apklistings.Update
    (
    -- * REST Resource
      EditsApklistingsUpdateAPI

    -- * Creating a Request
    , editsApklistingsUpdate
    , EditsApklistingsUpdate

    -- * Request Lenses
    , eauQuotaUser
    , eauPrettyPrint
    , eauPackageName
    , eauApkVersionCode
    , eauUserIp
    , eauKey
    , eauLanguage
    , eauOauthToken
    , eauEditId
    , eauFields
    , eauAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsUpdate@ which the
-- 'EditsApklistingsUpdate' request conforms to.
type EditsApklistingsUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 Capture "language" Text :> Put '[JSON] ApkListing

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
--
-- /See:/ 'editsApklistingsUpdate' smart constructor.
data EditsApklistingsUpdate = EditsApklistingsUpdate
    { _eauQuotaUser      :: !(Maybe Text)
    , _eauPrettyPrint    :: !Bool
    , _eauPackageName    :: !Text
    , _eauApkVersionCode :: !Int32
    , _eauUserIp         :: !(Maybe Text)
    , _eauKey            :: !(Maybe Text)
    , _eauLanguage       :: !Text
    , _eauOauthToken     :: !(Maybe Text)
    , _eauEditId         :: !Text
    , _eauFields         :: !(Maybe Text)
    , _eauAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eauQuotaUser'
--
-- * 'eauPrettyPrint'
--
-- * 'eauPackageName'
--
-- * 'eauApkVersionCode'
--
-- * 'eauUserIp'
--
-- * 'eauKey'
--
-- * 'eauLanguage'
--
-- * 'eauOauthToken'
--
-- * 'eauEditId'
--
-- * 'eauFields'
--
-- * 'eauAlt'
editsApklistingsUpdate
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsApklistingsUpdate
editsApklistingsUpdate pEauPackageName_ pEauApkVersionCode_ pEauLanguage_ pEauEditId_ =
    EditsApklistingsUpdate
    { _eauQuotaUser = Nothing
    , _eauPrettyPrint = True
    , _eauPackageName = pEauPackageName_
    , _eauApkVersionCode = pEauApkVersionCode_
    , _eauUserIp = Nothing
    , _eauKey = Nothing
    , _eauLanguage = pEauLanguage_
    , _eauOauthToken = Nothing
    , _eauEditId = pEauEditId_
    , _eauFields = Nothing
    , _eauAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eauQuotaUser :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauQuotaUser
  = lens _eauQuotaUser (\ s a -> s{_eauQuotaUser = a})

-- | Returns response with indentations and line breaks.
eauPrettyPrint :: Lens' EditsApklistingsUpdate' Bool
eauPrettyPrint
  = lens _eauPrettyPrint
      (\ s a -> s{_eauPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eauPackageName :: Lens' EditsApklistingsUpdate' Text
eauPackageName
  = lens _eauPackageName
      (\ s a -> s{_eauPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eauApkVersionCode :: Lens' EditsApklistingsUpdate' Int32
eauApkVersionCode
  = lens _eauApkVersionCode
      (\ s a -> s{_eauApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eauUserIp :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauUserIp
  = lens _eauUserIp (\ s a -> s{_eauUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eauKey :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauKey = lens _eauKey (\ s a -> s{_eauKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eauLanguage :: Lens' EditsApklistingsUpdate' Text
eauLanguage
  = lens _eauLanguage (\ s a -> s{_eauLanguage = a})

-- | OAuth 2.0 token for the current user.
eauOauthToken :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauOauthToken
  = lens _eauOauthToken
      (\ s a -> s{_eauOauthToken = a})

-- | Unique identifier for this edit.
eauEditId :: Lens' EditsApklistingsUpdate' Text
eauEditId
  = lens _eauEditId (\ s a -> s{_eauEditId = a})

-- | Selector specifying which fields to include in a partial response.
eauFields :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauFields
  = lens _eauFields (\ s a -> s{_eauFields = a})

-- | Data format for the response.
eauAlt :: Lens' EditsApklistingsUpdate' Text
eauAlt = lens _eauAlt (\ s a -> s{_eauAlt = a})

instance GoogleRequest EditsApklistingsUpdate' where
        type Rs EditsApklistingsUpdate' = ApkListing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsUpdate{..}
          = go _eauQuotaUser _eauPrettyPrint _eauPackageName
              _eauApkVersionCode
              _eauUserIp
              _eauKey
              _eauLanguage
              _eauOauthToken
              _eauEditId
              _eauFields
              _eauAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsUpdateAPI)
                      r
                      u
