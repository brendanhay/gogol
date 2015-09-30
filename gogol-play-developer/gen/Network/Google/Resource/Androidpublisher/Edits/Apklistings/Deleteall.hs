{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsDeleteall@.
module Androidpublisher.Edits.Apklistings.Deleteall
    (
    -- * REST Resource
      EditsApklistingsDeleteallAPI

    -- * Creating a Request
    , editsApklistingsDeleteall
    , EditsApklistingsDeleteall

    -- * Request Lenses
    , eadQuotaUser
    , eadPrettyPrint
    , eadPackageName
    , eadApkVersionCode
    , eadUserIp
    , eadKey
    , eadOauthToken
    , eadEditId
    , eadFields
    , eadAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsDeleteall@ which the
-- 'EditsApklistingsDeleteall' request conforms to.
type EditsApklistingsDeleteallAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :> Delete '[JSON] ()

-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsApklistingsDeleteall' smart constructor.
data EditsApklistingsDeleteall = EditsApklistingsDeleteall
    { _eadQuotaUser      :: !(Maybe Text)
    , _eadPrettyPrint    :: !Bool
    , _eadPackageName    :: !Text
    , _eadApkVersionCode :: !Int32
    , _eadUserIp         :: !(Maybe Text)
    , _eadKey            :: !(Maybe Text)
    , _eadOauthToken     :: !(Maybe Text)
    , _eadEditId         :: !Text
    , _eadFields         :: !(Maybe Text)
    , _eadAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsDeleteall'' with the minimum fields required to make a request.
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
-- * 'eadOauthToken'
--
-- * 'eadEditId'
--
-- * 'eadFields'
--
-- * 'eadAlt'
editsApklistingsDeleteall
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsApklistingsDeleteall
editsApklistingsDeleteall pEadPackageName_ pEadApkVersionCode_ pEadEditId_ =
    EditsApklistingsDeleteall
    { _eadQuotaUser = Nothing
    , _eadPrettyPrint = True
    , _eadPackageName = pEadPackageName_
    , _eadApkVersionCode = pEadApkVersionCode_
    , _eadUserIp = Nothing
    , _eadKey = Nothing
    , _eadOauthToken = Nothing
    , _eadEditId = pEadEditId_
    , _eadFields = Nothing
    , _eadAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eadQuotaUser :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadQuotaUser
  = lens _eadQuotaUser (\ s a -> s{_eadQuotaUser = a})

-- | Returns response with indentations and line breaks.
eadPrettyPrint :: Lens' EditsApklistingsDeleteall' Bool
eadPrettyPrint
  = lens _eadPrettyPrint
      (\ s a -> s{_eadPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eadPackageName :: Lens' EditsApklistingsDeleteall' Text
eadPackageName
  = lens _eadPackageName
      (\ s a -> s{_eadPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eadApkVersionCode :: Lens' EditsApklistingsDeleteall' Int32
eadApkVersionCode
  = lens _eadApkVersionCode
      (\ s a -> s{_eadApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eadUserIp :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadUserIp
  = lens _eadUserIp (\ s a -> s{_eadUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eadKey :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadKey = lens _eadKey (\ s a -> s{_eadKey = a})

-- | OAuth 2.0 token for the current user.
eadOauthToken :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadOauthToken
  = lens _eadOauthToken
      (\ s a -> s{_eadOauthToken = a})

-- | Unique identifier for this edit.
eadEditId :: Lens' EditsApklistingsDeleteall' Text
eadEditId
  = lens _eadEditId (\ s a -> s{_eadEditId = a})

-- | Selector specifying which fields to include in a partial response.
eadFields :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadFields
  = lens _eadFields (\ s a -> s{_eadFields = a})

-- | Data format for the response.
eadAlt :: Lens' EditsApklistingsDeleteall' Text
eadAlt = lens _eadAlt (\ s a -> s{_eadAlt = a})

instance GoogleRequest EditsApklistingsDeleteall'
         where
        type Rs EditsApklistingsDeleteall' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsDeleteall{..}
          = go _eadQuotaUser _eadPrettyPrint _eadPackageName
              _eadApkVersionCode
              _eadUserIp
              _eadKey
              _eadOauthToken
              _eadEditId
              _eadFields
              _eadAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsDeleteallAPI)
                      r
                      u
