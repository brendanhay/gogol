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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsDelete@.
module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Delete
    (
    -- * REST Resource
      EditsApklistingsDeleteResource

    -- * Creating a Request
    , editsApklistingsDelete'
    , EditsApklistingsDelete'

    -- * Request Lenses
    , eadQuotaUser
    , eadPrettyPrint
    , eadPackageName
    , eadApkVersionCode
    , eadUserIp
    , eadKey
    , eadLanguage
    , eadOauthToken
    , eadEditId
    , eadFields
    , eadAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsDelete@ which the
-- 'EditsApklistingsDelete'' request conforms to.
type EditsApklistingsDeleteResource =
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsApklistingsDelete'' smart constructor.
data EditsApklistingsDelete' = EditsApklistingsDelete'
    { _eadQuotaUser      :: !(Maybe Text)
    , _eadPrettyPrint    :: !Bool
    , _eadPackageName    :: !Text
    , _eadApkVersionCode :: !Int32
    , _eadUserIp         :: !(Maybe Text)
    , _eadKey            :: !(Maybe Text)
    , _eadLanguage       :: !Text
    , _eadOauthToken     :: !(Maybe Text)
    , _eadEditId         :: !Text
    , _eadFields         :: !(Maybe Text)
    , _eadAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eadQuotaUser'
--
-- * 'eadPrettyPrint'
--
-- * 'eadPackageName'
--
-- * 'eadApkVersionCode'
--
-- * 'eadUserIp'
--
-- * 'eadKey'
--
-- * 'eadLanguage'
--
-- * 'eadOauthToken'
--
-- * 'eadEditId'
--
-- * 'eadFields'
--
-- * 'eadAlt'
editsApklistingsDelete'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsApklistingsDelete'
editsApklistingsDelete' pEadPackageName_ pEadApkVersionCode_ pEadLanguage_ pEadEditId_ =
    EditsApklistingsDelete'
    { _eadQuotaUser = Nothing
    , _eadPrettyPrint = True
    , _eadPackageName = pEadPackageName_
    , _eadApkVersionCode = pEadApkVersionCode_
    , _eadUserIp = Nothing
    , _eadKey = Nothing
    , _eadLanguage = pEadLanguage_
    , _eadOauthToken = Nothing
    , _eadEditId = pEadEditId_
    , _eadFields = Nothing
    , _eadAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eadQuotaUser :: Lens' EditsApklistingsDelete' (Maybe Text)
eadQuotaUser
  = lens _eadQuotaUser (\ s a -> s{_eadQuotaUser = a})

-- | Returns response with indentations and line breaks.
eadPrettyPrint :: Lens' EditsApklistingsDelete' Bool
eadPrettyPrint
  = lens _eadPrettyPrint
      (\ s a -> s{_eadPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eadPackageName :: Lens' EditsApklistingsDelete' Text
eadPackageName
  = lens _eadPackageName
      (\ s a -> s{_eadPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eadApkVersionCode :: Lens' EditsApklistingsDelete' Int32
eadApkVersionCode
  = lens _eadApkVersionCode
      (\ s a -> s{_eadApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eadUserIp :: Lens' EditsApklistingsDelete' (Maybe Text)
eadUserIp
  = lens _eadUserIp (\ s a -> s{_eadUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eadKey :: Lens' EditsApklistingsDelete' (Maybe Text)
eadKey = lens _eadKey (\ s a -> s{_eadKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eadLanguage :: Lens' EditsApklistingsDelete' Text
eadLanguage
  = lens _eadLanguage (\ s a -> s{_eadLanguage = a})

-- | OAuth 2.0 token for the current user.
eadOauthToken :: Lens' EditsApklistingsDelete' (Maybe Text)
eadOauthToken
  = lens _eadOauthToken
      (\ s a -> s{_eadOauthToken = a})

-- | Unique identifier for this edit.
eadEditId :: Lens' EditsApklistingsDelete' Text
eadEditId
  = lens _eadEditId (\ s a -> s{_eadEditId = a})

-- | Selector specifying which fields to include in a partial response.
eadFields :: Lens' EditsApklistingsDelete' (Maybe Text)
eadFields
  = lens _eadFields (\ s a -> s{_eadFields = a})

-- | Data format for the response.
eadAlt :: Lens' EditsApklistingsDelete' Alt
eadAlt = lens _eadAlt (\ s a -> s{_eadAlt = a})

instance GoogleRequest EditsApklistingsDelete' where
        type Rs EditsApklistingsDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsDelete'{..}
          = go _eadQuotaUser (Just _eadPrettyPrint)
              _eadPackageName
              _eadApkVersionCode
              _eadUserIp
              _eadKey
              _eadLanguage
              _eadOauthToken
              _eadEditId
              _eadFields
              (Just _eadAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsDeleteResource)
                      r
                      u
