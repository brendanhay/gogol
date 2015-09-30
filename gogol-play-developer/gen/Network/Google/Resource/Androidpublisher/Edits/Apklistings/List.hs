{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsList@.
module Androidpublisher.Edits.Apklistings.List
    (
    -- * REST Resource
      EditsApklistingsListAPI

    -- * Creating a Request
    , editsApklistingsList
    , EditsApklistingsList

    -- * Request Lenses
    , ealQuotaUser
    , ealPrettyPrint
    , ealPackageName
    , ealApkVersionCode
    , ealUserIp
    , ealKey
    , ealOauthToken
    , ealEditId
    , ealFields
    , ealAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsList@ which the
-- 'EditsApklistingsList' request conforms to.
type EditsApklistingsListAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :> Get '[JSON] ApkListingsListResponse

-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsApklistingsList' smart constructor.
data EditsApklistingsList = EditsApklistingsList
    { _ealQuotaUser      :: !(Maybe Text)
    , _ealPrettyPrint    :: !Bool
    , _ealPackageName    :: !Text
    , _ealApkVersionCode :: !Int32
    , _ealUserIp         :: !(Maybe Text)
    , _ealKey            :: !(Maybe Text)
    , _ealOauthToken     :: !(Maybe Text)
    , _ealEditId         :: !Text
    , _ealFields         :: !(Maybe Text)
    , _ealAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ealQuotaUser'
--
-- * 'ealPrettyPrint'
--
-- * 'ealPackageName'
--
-- * 'ealApkVersionCode'
--
-- * 'ealUserIp'
--
-- * 'ealKey'
--
-- * 'ealOauthToken'
--
-- * 'ealEditId'
--
-- * 'ealFields'
--
-- * 'ealAlt'
editsApklistingsList
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsApklistingsList
editsApklistingsList pEalPackageName_ pEalApkVersionCode_ pEalEditId_ =
    EditsApklistingsList
    { _ealQuotaUser = Nothing
    , _ealPrettyPrint = True
    , _ealPackageName = pEalPackageName_
    , _ealApkVersionCode = pEalApkVersionCode_
    , _ealUserIp = Nothing
    , _ealKey = Nothing
    , _ealOauthToken = Nothing
    , _ealEditId = pEalEditId_
    , _ealFields = Nothing
    , _ealAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ealQuotaUser :: Lens' EditsApklistingsList' (Maybe Text)
ealQuotaUser
  = lens _ealQuotaUser (\ s a -> s{_ealQuotaUser = a})

-- | Returns response with indentations and line breaks.
ealPrettyPrint :: Lens' EditsApklistingsList' Bool
ealPrettyPrint
  = lens _ealPrettyPrint
      (\ s a -> s{_ealPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ealPackageName :: Lens' EditsApklistingsList' Text
ealPackageName
  = lens _ealPackageName
      (\ s a -> s{_ealPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
ealApkVersionCode :: Lens' EditsApklistingsList' Int32
ealApkVersionCode
  = lens _ealApkVersionCode
      (\ s a -> s{_ealApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ealUserIp :: Lens' EditsApklistingsList' (Maybe Text)
ealUserIp
  = lens _ealUserIp (\ s a -> s{_ealUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ealKey :: Lens' EditsApklistingsList' (Maybe Text)
ealKey = lens _ealKey (\ s a -> s{_ealKey = a})

-- | OAuth 2.0 token for the current user.
ealOauthToken :: Lens' EditsApklistingsList' (Maybe Text)
ealOauthToken
  = lens _ealOauthToken
      (\ s a -> s{_ealOauthToken = a})

-- | Unique identifier for this edit.
ealEditId :: Lens' EditsApklistingsList' Text
ealEditId
  = lens _ealEditId (\ s a -> s{_ealEditId = a})

-- | Selector specifying which fields to include in a partial response.
ealFields :: Lens' EditsApklistingsList' (Maybe Text)
ealFields
  = lens _ealFields (\ s a -> s{_ealFields = a})

-- | Data format for the response.
ealAlt :: Lens' EditsApklistingsList' Text
ealAlt = lens _ealAlt (\ s a -> s{_ealAlt = a})

instance GoogleRequest EditsApklistingsList' where
        type Rs EditsApklistingsList' =
             ApkListingsListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsList{..}
          = go _ealQuotaUser _ealPrettyPrint _ealPackageName
              _ealApkVersionCode
              _ealUserIp
              _ealKey
              _ealOauthToken
              _ealEditId
              _ealFields
              _ealAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsListAPI)
                      r
                      u
